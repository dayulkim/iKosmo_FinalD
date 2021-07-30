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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import kr.co.kosmo.mvc.service.QuestionServiceInter;
import kr.co.kosmo.mvc.vo.AnswerVO;
import kr.co.kosmo.mvc.vo.PageVO;
import kr.co.kosmo.mvc.vo.QuestionVO;

@Controller
public class QuestionController {
	
	@Autowired
	private QuestionServiceInter questionServiceInter;
	
	@RequestMapping("/questionForm")
	public String questionForm() {
		return "question/question_Form";
	}
	
	
	@PostMapping("/insertQuestion")
	public String insertReview(QuestionVO quevo, List<MultipartFile> mfile, HttpServletRequest request) {
		
		String writerID = request.getSession().getAttribute("sessionID").toString();
		//String writerID = "test";
		System.out.println("�ۼ���ID: "+ writerID);
		quevo.setMem_id(writerID);
		
		quevo.setQue_title(request.getParameter("title"));
		quevo.setQue_content(request.getParameter("content"));
		System.out.println(request.getParameter("title"));
		System.out.println(request.getParameter("content"));
		
		//�����ߴ� üũ�ڽ� �׸��� String �迭�� �޴´�.
		String[] kinds = request.getParameterValues("kinds");
		String[] furnitures = request.getParameterValues("furnitures");
		String[] space = request.getParameterValues("space");
		
		List<String> keylist = new ArrayList<>();
		
		// Ű���带 ���� ���� ���� �ʾұ� ������ ����Ʈ �ϳ��� ���Ƽ� ����ִ´�.
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
		
		String keywords = String.join(",", keylist);
		System.out.println(keywords);
		quevo.setQue_keyword(keywords);
				
		// ÷������ ó�� ===========================================================================
		// -- ���� ������ ����
		String r_path = request.getRealPath("/"); // �� �� ������
		String img_path = "resources\\uploadFile";
		List<String> imglist = new ArrayList<>();
		for(MultipartFile mf : mfile) {
			String oriFn = mf.getOriginalFilename(); // ���ε��� ���� ���ϸ��� ������
			StringBuffer path = new StringBuffer();
			path.append(r_path).append(img_path).append("\\").append(oriFn);
			System.out.println("������ : " + r_path);
			System.out.println("File FullPath: "+path);
			// -- ���� ����
			File f = new File(path.toString());
			try {
				mf.transferTo(f); // �ӽ�����ҿ� �ִ� ������ File ��ü�� �ű��
				imglist.add(oriFn);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}
		// ���� �̸��� ����Ʈ�� String���� ����� �̰Ÿ� DB�� ����
		String fileNames = String.join(",", imglist);
		System.out.println(fileNames);
		
		// -- DB�� ���� �̸� ����
		quevo.setQue_photo(fileNames);
		questionServiceInter.addQuestion(quevo);
		
		return "redirect:/questionList";
	}
	
	
	@RequestMapping(value = "/questionList")
	public ModelAndView QuestionList(
	         @RequestParam(value = "nowPage", required = false, defaultValue = "1") String nowPage,
	         @RequestParam(value = "cntPerPage", required = false, defaultValue = "10") String cntPerPage,
	         @RequestParam(value = "sort", required = false, defaultValue = "0") int sort,
	         PageVO pvo) {
		
	      ModelAndView mav = new ModelAndView();
	      List<QuestionVO> list ;
	      
	      String searchType = String.valueOf(sort);
	      
	      int total = questionServiceInter.totalQuestionList();
		  pvo = new PageVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), searchType);
		  
		  list = questionServiceInter.QuestionList(pvo);
		  mav.addObject("paging", pvo);
		  
		  // ������ �Խù��� ��ǥ�̹��� �ϳ����� �����ϱ� ����
	      List<String> imgList = new ArrayList<>(); // ��ǥ �̹����� ���� �̸��� ���� ����Ʈ
	      for (QuestionVO quevo : list) {
	         if (quevo.getQue_photo() != null) {
	            String[] arr = quevo.getQue_photo().split(",");
	            imgList.add(arr[0]); // ù��° �̹����� �̸��� ����Ʈ�� ����
	         } else {
	            imgList.add("noImage");
	         }
	      }
	      
	      // �𵨿� PageVO ��ü�� ����Ʈ ��ü ���
	      mav.addObject("list", list);
	      mav.addObject("imgList", imgList);
	      mav.setViewName("question/questionList");
	      return mav;
	   }
	
	@RequestMapping(value = "/myquestionList")
	public ModelAndView MyQuestionList(
	         @RequestParam(value = "nowPage", required = false, defaultValue = "1") String nowPage,
	         @RequestParam(value = "cntPerPage", required = false, defaultValue = "10") String cntPerPage,
	         HttpServletRequest request,
	         PageVO pvo) {
		
	      ModelAndView mav = new ModelAndView();
	      List<QuestionVO> list ;
	      String searchType = request.getSession().getAttribute("sessionID").toString();
	      //String searchType = "test";
	      int total = questionServiceInter.totalMyQuestionList(searchType);
		  pvo = new PageVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), searchType);
		  
		  list = questionServiceInter.MyQuestionList(pvo);
		  mav.addObject("paging", pvo);
		  
		  // ������ �Խù��� ��ǥ�̹��� �ϳ����� �����ϱ� ����
	      List<String> imgList = new ArrayList<>(); // ��ǥ �̹����� ���� �̸��� ���� ����Ʈ
	      for (QuestionVO quevo : list) {
	         if (quevo.getQue_photo() != null) {
	            String[] arr = quevo.getQue_photo().split(",");
	            imgList.add(arr[0]); // ù��° �̹����� �̸��� ����Ʈ�� ����
	         } else {
	            imgList.add("noImage");
	         }
	      }
	      
	      // �𵨿� PageVO ��ü�� ����Ʈ ��ü ���
	      mav.addObject("list", list);
	      mav.addObject("imgList", imgList);
	      mav.setViewName("question/questionList");
	      return mav;
	   }
	
	// ����� �󼼺���
	@RequestMapping(value="/questionDetail")
	public ModelAndView getReviewDetail(int que_num, HttpSession session,
			@RequestParam(value="nowPage",
			required=false,defaultValue="1") String nowPage,
			@RequestParam(value="cntPerPage",
			required=false,defaultValue="10") String cntPerPage,
			PageVO vo) {
		
		ModelAndView mav = new ModelAndView();
		
		int spage = Integer.parseInt(nowPage);
		int total = questionServiceInter.totalAnswer(que_num);
		
		vo.setSearchType(Integer.toString(que_num));
		vo = new PageVO(total, spage, Integer.parseInt(cntPerPage), vo.getSearchType());
		mav.addObject("paging", vo);
		
		QuestionVO quevo = new QuestionVO();
		questionServiceInter.questionHit(que_num);
		
		// ����� �ִ� ������ ���� ������ ������ ��ȸ�Ѵ�.
		try {
			quevo = questionServiceInter.getQuestionDetail2(vo);
			List<AnswerVO> list = quevo.getAnswer();
			System.out.println("�󼼺��� ��� ����");
			mav.addObject("quevo",quevo);
			mav.addObject("list",list);
		} catch (Exception e) {
			quevo = questionServiceInter.getQuestionDetail(que_num);
			System.out.println("�󼼺��� ��� ����");
			mav.addObject("quevo", quevo);
		}
		
		mav.setViewName("question/questionDetail");
		return mav;
	}
	
	@PostMapping("/addans")
	public ModelAndView answeradd(AnswerVO ansvo, MultipartFile mfile ,HttpServletRequest request) {
		
		int que_num = Integer.parseInt(request.getParameter("que_num"));
		
		ansvo.setQue_num(que_num);
		ansvo.setAns_id(request.getParameter("sessionID"));
		//ansvo.setAns_id("test");
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
		
		ModelAndView mav = new ModelAndView();
		mav.setView(new RedirectView("questionDetail?que_num=" + que_num));
		questionServiceInter.addAnswer(ansvo,que_num);
		return mav;
	}
		
	@RequestMapping(value = "/questionSearch")
	public ModelAndView SearchQuestionList(
	         @RequestParam(value = "nowPage", required = false, defaultValue = "1") String nowPage,
	         @RequestParam(value = "cntPerPage", required = false, defaultValue = "10") String cntPerPage,
	         @RequestParam(value = "search", required = false, defaultValue = "0") int search,
	         @RequestParam(value = "key", required = false) String key ,
	         @RequestParam(value = "sort", required = false, defaultValue = "0") int sort,
	         HttpServletRequest request,
	         PageVO pvo) {
		
		ModelAndView mav = new ModelAndView();
	      List<QuestionVO> list ;
	      List<String> imgList = new ArrayList<>(); 

	      
	      String searchValue = "%"+key+"%";
	      String searchType = String.valueOf(sort);
	      
	      System.out.println(searchValue);
	      
	      String msg = "�ش� �˻��� ����� �����ϴ�.";
	      
	      if(search == 0) {
	    	  System.out.println("Ű���� �˻�");
	    	  int total = questionServiceInter.totalSearchKeyword(searchValue);
	    	  System.out.println("total : "+total);
	    	  
	    	  if(total == 0) {
	    		  mav.addObject("msg", msg);
	    	  }
	    	  
	    	  pvo = new PageVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), searchType, searchValue);
	    	  list = questionServiceInter.SearchKeywordList(pvo);
	    	  
	    	  for (QuestionVO quevo : list) {
	 	         if (quevo.getQue_photo() != null) {
	 	            String[] arr = quevo.getQue_photo().split(",");
	 	            imgList.add(arr[0]); // ù��° �̹����� �̸��� ����Ʈ�� ����
	 	         } else {
	 	            imgList.add("noImage");
	 	         }
	 	      }
		      mav.addObject("list", list);
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
	    	  
	    	  for (QuestionVO quevo : list) {
	 	         if (quevo.getQue_photo() != null) {
	 	            String[] arr = quevo.getQue_photo().split(",");
	 	            imgList.add(arr[0]); // ù��° �̹����� �̸��� ����Ʈ�� ����
	 	         } else {
	 	            imgList.add("noImage");
	 	         }
	 	      }
		      mav.addObject("list", list);
	      }
	      
	      mav.addObject("key",key);
	      mav.addObject("search", search);
	      mav.addObject("type", 1);
	      mav.addObject("paging", pvo);
	      mav.addObject("imgList", imgList);
	      mav.setViewName("question/questionList");
	      return mav;
	   }
	
	
	@RequestMapping(value = "/naquestionList")
	public ModelAndView NoAnsQuestionList(
	         @RequestParam(value = "nowPage", required = false, defaultValue = "1") String nowPage,
	         @RequestParam(value = "cntPerPage", required = false, defaultValue = "10") String cntPerPage,
	         @RequestParam(value = "sort", required = false, defaultValue = "0") int sort,
	         @RequestParam(value = "search", required = false, defaultValue = "0") int search,
	         @RequestParam(value = "key", required = false) String key,
	         PageVO pvo) {
		
	      ModelAndView mav = new ModelAndView();
	      List<QuestionVO> list ;
	      List<String> imgList = new ArrayList<>(); // ��ǥ �̹����� ���� �̸��� ���� ����Ʈ
	      
	      String searchValue = "%"+key+"%";
	      String searchType = String.valueOf(sort);
		  String msg = "�ش� �˻��� ����� �����ϴ�.";
	      
	      if(key == null) {
	    	  int total = questionServiceInter.totalNAQuestionList();
			  pvo = new PageVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), searchType);
			  
			  list = questionServiceInter.NAQuestionList(pvo);
			  mav.addObject("paging", pvo);
			  
			  // ������ �Խù��� ��ǥ�̹��� �ϳ����� �����ϱ� ����
		      
		      for (QuestionVO quevo : list) {
		         if (quevo.getQue_photo() != null) {
		            String[] arr = quevo.getQue_photo().split(",");
		            imgList.add(arr[0]); // ù��° �̹����� �̸��� ����Ʈ�� ����
		         } else {
		            imgList.add("noImage");
		         }
		      }
		      mav.addObject("list", list);
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
		    	  
		    	  for (QuestionVO quevo : list) {
		 	         if (quevo.getQue_photo() != null) {
		 	            String[] arr = quevo.getQue_photo().split(",");
		 	            imgList.add(arr[0]); // ù��° �̹����� �̸��� ����Ʈ�� ����
		 	         } else {
		 	            imgList.add("noImage");
		 	         }
		 	      }
			      mav.addObject("list", list);
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
		    	  
		    	  
		    	  for (QuestionVO quevo : list) {
		 	         if (quevo.getQue_photo() != null) {
		 	            String[] arr = quevo.getQue_photo().split(",");
		 	            imgList.add(arr[0]); // ù��° �̹����� �̸��� ����Ʈ�� ����
		 	         } else {
		 	            imgList.add("noImage");
		 	         }
		 	      }
			      mav.addObject("list", list);
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

}
