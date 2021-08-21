package kr.co.kosmo.mvc.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import kr.co.kosmo.mvc.dao.MemberDaoInter;
import kr.co.kosmo.mvc.service.QuestionLogServiceInter;
import kr.co.kosmo.mvc.service.QuestionServiceInter;
import kr.co.kosmo.mvc.vo.AnswerVO;
import kr.co.kosmo.mvc.vo.MemberVO;
import kr.co.kosmo.mvc.vo.PageVO;
import kr.co.kosmo.mvc.vo.QuestionLogVO;
import kr.co.kosmo.mvc.vo.QuestionVO;
import kr.co.kosmo.mvc.vo.QuestionWordCloudVO;

@Controller
public class QuestionController {
	
	@Autowired
	private QuestionServiceInter questionServiceInter;
	@Autowired
	private QuestionLogServiceInter questionLogServiceInter;
	@Autowired
	private MemberDaoInter memberDaoInter;
	
	// ���� ��� ��
	@RequestMapping("/questionForm")
	public String questionForm() {
		return "question/question_Form";
	}
	
	// ���� ���
	@PostMapping("/insertQuestion")
	public String insertReview(QuestionVO quevo, List<MultipartFile> mfile, HttpServletRequest request) {
		String writerID = request.getSession().getAttribute("sessionID").toString();
		quevo.setMem_id(writerID);	
		quevo.setQue_title(request.getParameter("title"));
		quevo.setQue_content(request.getParameter("content"));
		
		//�����ߴ� üũ�ڽ� �׸��� String �迭�� �޴´�.
		String[] kinds = request.getParameterValues("kinds");
		String[] furnitures = request.getParameterValues("furnitures");
		String[] space = request.getParameterValues("space");
		
		List<String> keylist = new ArrayList<>();
		// �� �׸� ���� Ű���带 keylist�� ��� ����ش�.
		if(kinds != null) {
			for(String i : kinds) {
				keylist.add(i);
			}
		}
		if(furnitures != null) {
			for(String i : furnitures) {
				keylist.add(i);
			}
		}
		if(space != null) {
			for(String i : space) {
				keylist.add(i);
			}
		}
		
		// ���ڿ��� ���� DB�� ����
		String keywords = String.join(",", keylist);
		quevo.setQue_keyword(keywords);
				
		// ÷������ ó�� ===========================================================================
		// -- ���� ������ ����
		String r_path = request.getSession().getServletContext().getRealPath("/"); // �� �� ������
		String img_path = "resources\\uploadFile";
		List<String> imglist = new ArrayList<>();
		for(MultipartFile mf : mfile) {
			String oriFn = mf.getOriginalFilename(); // ���ε��� ���� ���ϸ��� ������
			StringBuffer path = new StringBuffer();
			path.append(r_path).append(img_path).append("\\").append(oriFn);
			// -- ���� ����
			File f = new File(path.toString());
			try {
				mf.transferTo(f); // �ӽ�����ҿ� �ִ� ������ File ��ü�� �ű��
				imglist.add(oriFn);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}
		// ���� �̸��� ����Ʈ�� String���� �����  DB�� ����
		String fileNames = String.join(",", imglist);
		
		// -- DB�� ���� �̸� ����
		quevo.setQue_photo(fileNames);
		questionServiceInter.addQuestion(quevo);
		
		return "redirect:/questionList";
	}
	
	// ���� �󼼺���
		@RequestMapping(value="/questionDetail")
		public ModelAndView getQuestionDetail(int que_num, HttpSession session,
				@RequestParam(value="nowPage",
				required=false,defaultValue="1") String nowPage,
				@RequestParam(value="cntPerPage",
				required=false,defaultValue="10") String cntPerPage,
				HttpServletRequest request,
				PageVO vo) {
			
			ModelAndView mav = new ModelAndView();
			
			int spage = Integer.parseInt(nowPage);
			int total = questionServiceInter.totalAnswer(que_num);
			mav.addObject("total", total);
			
			vo.setSearchType(Integer.toString(que_num));
			vo = new PageVO(total, spage, Integer.parseInt(cntPerPage), vo.getSearchType());
			mav.addObject("paging", vo);
			
			QuestionVO quevo = new QuestionVO();
			
			// ����� �ִ� ������ ���� ������ ������ ��ȸ�Ѵ�.
			// ����� ���� ������ resultMap�� ����ؼ� List<AnswerVO>�� �ҷ����� exception�� �߻�
			// resultMap�� ������� ���� �Ϲ����� select���� ����� ���� catch�� ����
			try {
				quevo = questionServiceInter.getQuestionDetail2(vo);
				List<AnswerVO> list = quevo.getAnswer();
				System.out.println("�󼼺��� ��� ����");
				mav.addObject("quevo",quevo);
				mav.addObject("list",list);

				List<String> prolist = questionServiceInter.getmemInfoDe(list);
				mav.addObject("prolist", prolist);
			} catch (Exception e) {
				quevo = questionServiceInter.getQuestionDetail(que_num);
				System.out.println("�󼼺��� ��� ����");
				
				mav.addObject("quevo", quevo);
			}
			
			
			try {
				String mem_id = request.getSession().getAttribute("sessionID").toString();
				MemberVO memvo2 = memberDaoInter.getMemInfoById(mem_id);
				mav.addObject("myprofile",memvo2.getMem_profile());
			} catch (Exception e) {
				
			}
			
			MemberVO memvo = memberDaoInter.getMemInfoById(quevo.getMem_id());
			mav.addObject("que_profile", memvo.getMem_profile());
			
			mav.setViewName("question/questionDetail_ver2");
			return mav;
		}
	
	// ������ ���� �亯,��� �߰�
	@PostMapping("/addans")
	public ModelAndView answeradd(AnswerVO ansvo, MultipartFile mfile ,HttpServletRequest request) {
		
		int que_num = Integer.parseInt(request.getParameter("que_num"));
		ansvo.setQue_num(que_num);
		ansvo.setAns_id(request.getParameter("sessionID"));
		ansvo.setAns_content(request.getParameter("content"));
		
		// ÷������ ó�� ===========================================================================
		// -- ���� ������ ����
		String r_path = request.getRealPath("/"); // �� �� ������
		String img_path = "resources\\uploadFile";
		
		String oriFn =	mfile.getOriginalFilename();
		StringBuffer path = new StringBuffer();
		path.append(r_path).append(img_path).append("\\").append(oriFn);
		// -- ���� ����
		File f = new File(path.toString());
		
		try {
			mfile.transferTo(f);
		} catch (Exception e) {
			
		}
		ansvo.setAns_photo(oriFn);
		questionServiceInter.addAnswer(ansvo,que_num);
		
		ModelAndView mav = new ModelAndView();
		mav.setView(new RedirectView("questionDetail?que_num=" + que_num));
		return mav;
	}
		
	// ���� �˻�(Ű����, ����+���� �� ���� ������ �˻�)
		@RequestMapping(value = "/questionList")
		public ModelAndView SearchQuestionList(
				@RequestParam(value = "search", required = false, defaultValue = "0") int search,
		        @RequestParam(value = "key", required = false) String key ,
		        HttpServletRequest request,
		        @RequestParam(value = "nowPage", required = false, defaultValue = "1") String nowPage,
		        @RequestParam(value = "cntPerPage", required = false, defaultValue = "10") String cntPerPage,
		        @RequestParam(value = "sort", required = false, defaultValue = "0") int sort,
		         PageVO pvo) {
			
			ModelAndView mav = new ModelAndView();
		      List<QuestionVO> list ;
		      List<String> imgList = new ArrayList<>(); 

		      // �˻��� �� key�� searchValue�� ����ش�.
		      // sort ���Ĺ���� searchType�� ����ش�.
		      
		      String searchValue = "%"+key+"%";
		      String searchType = String.valueOf(sort);
		      
		      System.out.println(searchValue);
		      
		      // ��ȸ�� ����� total�� 0�Ͻ� ���� �޼��� ����
		      String msg = "�ش� �˻��� ����� �����ϴ�.";
		  	  
		  	// ��ü Ű���� ��õ
			  List<QuestionWordCloudVO> klist = questionLogServiceInter.suggestkeyword();
			  List<String> keylist = new ArrayList<>();
			  			
			  for(QuestionWordCloudVO e : klist) {
				  keylist.add(e.getSubject());
			  }
			  
			  mav.addObject("keylist",keylist );
			  
			  // �α��� ���¿��� ���� ���� �˻��� Ű���� ��õ
			  try {
				  String mem_id = request.getSession().getAttribute("sessionID").toString();
				  
				  List<QuestionWordCloudVO> mklist = questionLogServiceInter.mysearchkeyword(mem_id);
				  List<String> mkeylist = new ArrayList<>();
				  			
				  for(QuestionWordCloudVO e : mklist) {
					  mkeylist.add(e.getSubject());
				  }
				  
				  mav.addObject("mkeylist",mkeylist );
				  
			  } catch (Exception e) {
				System.out.println("��α��� �����Դϴ�.");
			  }
			  
			  if (key == null) {
				  int total = questionServiceInter.totalQuestionList();
				  pvo = new PageVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), searchType);
				  
				  list = questionServiceInter.QuestionList(pvo);
				  mav.addObject("paging", pvo);

			      imgList = questionServiceInter.imgList(list);
			      // �𵨿� PageVO ��ü�� ����Ʈ ��ü ���
			      mav.addObject("list", list);
			      
			      List<String> prolist = questionServiceInter.getmemInfo(list);
			      mav.addObject("prolist", prolist);
			  }else {
				  // Ű����, ����/���� �˻��� ���� search�� ���� �ٸ��� �ް� �׿� ���� ó���� ����
			      // Ű����˻� (0), ����/����˻�(1)
			      if(search == 0) {
			    	  System.out.println("Ű���� �˻�");
			    	  int total = questionServiceInter.totalSearchKeyword(searchValue);
			    	  System.out.println("total : "+total);
			    	  
			    	  if(total == 0) {
			    		  mav.addObject("msg", msg);
			    	  }
			    	  
			    	  pvo = new PageVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), searchType, searchValue);
			    	  list = questionServiceInter.SearchKeywordList(pvo);
			    	  
			    	  imgList = questionServiceInter.imgList(list);
			    	  
				      mav.addObject("list", list);
				      
				      List<String> prolist = questionServiceInter.getmemInfo(list);
				      mav.addObject("prolist", prolist);
			      }
			      else if(search == 1) {
			    	  System.out.println("���� + ���� �˻�");
			    	  int total = questionServiceInter.totalSearchTitle_Content(searchValue);
			    	  System.out.println("total : "+total);
			    	  
			    	  if(total == 0) {
			    		  mav.addObject("msg", msg);
			    	  }
			    	  
			    	  pvo = new PageVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), searchType, searchValue);
			    	  list = questionServiceInter.SearchTitle_Content(pvo);
			    	  
			    	  imgList = questionServiceInter.imgList(list);
			    	  
				      mav.addObject("list", list);
				      
				      List<String> prolist = questionServiceInter.getmemInfo(list);
				      mav.addObject("prolist", prolist);
			      }
			      mav.addObject("paging", pvo);
			      mav.addObject("type", 1);
			  }
		      
		      
		      mav.addObject("key",key);
		      mav.addObject("search", search);
		      mav.addObject("imgList", imgList);
		      mav.setViewName("question/questionList");
		      
		      return mav;
		   }
		
		
		// �亯(���)�� ���� ���� �߿� �˻�
		@RequestMapping(value = "/naquestionList")
		public ModelAndView NoAnsQuestionList(
				 @RequestParam(value = "search", required = false, defaultValue = "0") int search,
		         @RequestParam(value = "key", required = false) String key,
		         HttpServletRequest request,
		         @RequestParam(value = "nowPage", required = false, defaultValue = "1") String nowPage,
		         @RequestParam(value = "cntPerPage", required = false, defaultValue = "10") String cntPerPage,
		         @RequestParam(value = "sort", required = false, defaultValue = "0") int sort,
		         PageVO pvo) {
			
		      ModelAndView mav = new ModelAndView();
		      List<QuestionVO> list ;
		      List<String> imgList = new ArrayList<>(); // ��ǥ �̹����� ���� �̸��� ���� ����Ʈ
		      
		      String searchValue = "%"+key+"%";
		      String searchType = String.valueOf(sort);
			  String msg = "�ش� �˻��� ����� �����ϴ�.";
			  
			  // ��ü Ű���� ��õ
			  List<QuestionWordCloudVO> klist = questionLogServiceInter.suggestkeyword();
			  List<String> keylist = new ArrayList<>();
			  			
			  for(QuestionWordCloudVO e : klist) {
				  keylist.add(e.getSubject());
			  }
			  
			  mav.addObject("keylist",keylist );
			  
			  // �α��� ���¿��� ���� ���� �˻��� Ű���� ��õ
			  try {
				  String mem_id = request.getSession().getAttribute("sessionID").toString();
				  
				  List<QuestionWordCloudVO> mklist = questionLogServiceInter.mysearchkeyword(mem_id);
				  List<String> mkeylist = new ArrayList<>();
				  			
				  for(QuestionWordCloudVO e : mklist) {
					  mkeylist.add(e.getSubject());
				  }
				  
				  mav.addObject("mkeylist",mkeylist );
				  
			  } catch (Exception e) {
				System.out.println("��α��� �����Դϴ�.");
			  }
		      
		      if(key == null) {
		    	  int total = questionServiceInter.totalNAQuestionList();
				  pvo = new PageVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), searchType);
				  
				  list = questionServiceInter.NAQuestionList(pvo);
				  mav.addObject("paging", pvo);
				  
				  // ������ �Խù��� ��ǥ�̹��� �ϳ����� �����ϱ� ����
			      
				  imgList = questionServiceInter.imgList(list);
				  
			      mav.addObject("list", list);
			      
			      List<String> prolist = questionServiceInter.getmemInfo(list);
			      mav.addObject("prolist", prolist);
		      }
		      else {

	    	  if(search == 0) {
		    	  System.out.println("Ű���� �˻�");
		    	  int total = questionServiceInter.totalNaSearchKeyword(searchValue);
		    	  System.out.println("total : "+total);
		    	  
		    	  if(total == 0) {
		    		  mav.addObject("msg", msg);
		    	  }
		    	  
		    	  pvo = new PageVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), searchType, searchValue);
		    	  list = questionServiceInter.SearchNaKeywordList(pvo);
		    	  mav.addObject("paging", pvo);
		    	  
		    	  imgList = questionServiceInter.imgList(list);
		    	  
			      mav.addObject("list", list);
			      
			      List<String> prolist = questionServiceInter.getmemInfo(list);
			      mav.addObject("prolist", prolist);
		      }
		      else if(search == 1) {
		    	  System.out.println("����/���� �˻�");
		    	  int total = questionServiceInter.totalNaSearchTitle_Content(searchValue);
		    	  System.out.println("total : "+total);
		    	  
		    	  if(total == 0) {
		    		  mav.addObject("msg", msg);
		    	  }
		    	  
		    	  pvo = new PageVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), searchType, searchValue);
		    	  list = questionServiceInter.SearchNaTitle_Content(pvo);
		    	  mav.addObject("paging", pvo);
		    	  
		    	  imgList = questionServiceInter.imgList(list);
		    	  
			      mav.addObject("list", list);
			      
			      List<String> prolist = questionServiceInter.getmemInfo(list);
			      mav.addObject("prolist", prolist);
		      	}
	    	  
		      }
	      
		      mav.addObject("key",key);
		      mav.addObject("search", search);
		      mav.addObject("type", 2);
		      // �𵨿� PageVO ��ü�� ����Ʈ ��ü ���
		      mav.addObject("imgList", imgList);
		      mav.setViewName("question/questionList");
		      return mav;
		   }
	
	@RequestMapping(value="/quesearchwordcloud", method = RequestMethod.GET, produces = "application/text; charset=UTF-8" )
	@ResponseBody
	public String wordcloud(HttpServletRequest request,QuestionWordCloudVO quewcvo) throws Exception{
			List<QuestionWordCloudVO> list = questionLogServiceInter.quesearchWordcloud();			
			String json = null;
			try {
				json = new ObjectMapper().writeValueAsString(list);
			} catch (JsonProcessingException e) {
				e.printStackTrace();
			}				
			return json;
	}	

}
