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
	
	// 질문 등록 폼
	@RequestMapping("/questionForm")
	public String questionForm() {
		return "question/question_Form";
	}
	
	// 질문 등록
	@PostMapping("/insertQuestion")
	public String insertReview(QuestionVO quevo, List<MultipartFile> mfile, HttpServletRequest request) {
		String writerID = request.getSession().getAttribute("sessionID").toString();
		quevo.setMem_id(writerID);	
		quevo.setQue_title(request.getParameter("title"));
		quevo.setQue_content(request.getParameter("content"));
		
		//선택했던 체크박스 항목을 String 배열로 받는다.
		String[] kinds = request.getParameterValues("kinds");
		String[] furnitures = request.getParameterValues("furnitures");
		String[] space = request.getParameterValues("space");
		
		List<String> keylist = new ArrayList<>();
		// 각 항목에 따른 키워드를 keylist에 모두 담아준다.
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
		
		// 문자열로 만들어서 DB에 저장
		String keywords = String.join(",", keylist);
		quevo.setQue_keyword(keywords);
				
		// 첨부파일 처리 ===========================================================================
		// -- 파일 복사경로 설정
		String r_path = request.getSession().getServletContext().getRealPath("/"); // 웹 상 절대경로
		String img_path = "resources\\uploadFile";
		List<String> imglist = new ArrayList<>();
		for(MultipartFile mf : mfile) {
			String oriFn = mf.getOriginalFilename(); // 업로드할 때의 파일명을 가져옴
			StringBuffer path = new StringBuffer();
			path.append(r_path).append(img_path).append("\\").append(oriFn);
			// -- 파일 복사
			File f = new File(path.toString());
			try {
				mf.transferTo(f); // 임시저장소에 있는 파일을 File 객체로 옮기기
				imglist.add(oriFn);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}
		// 파일 이름의 리스트를 String으로 만들고  DB에 저장
		String fileNames = String.join(",", imglist);
		
		// -- DB에 파일 이름 저장
		quevo.setQue_photo(fileNames);
		questionServiceInter.addQuestion(quevo);
		
		return "redirect:/questionList";
	}
	
	// 질문 상세보기
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
			
			// 댓글이 있는 질문과 없는 질문을 나눠서 조회한다.
			// 댓글이 없는 질문을 resultMap을 사용해서 List<AnswerVO>를 불러오면 exception이 발생
			// resultMap을 사용하지 않은 일반적인 select문을 사용한 것을 catch에 적용
			try {
				quevo = questionServiceInter.getQuestionDetail2(vo);
				List<AnswerVO> list = quevo.getAnswer();
				System.out.println("상세보기 댓글 있음");
				mav.addObject("quevo",quevo);
				mav.addObject("list",list);

				List<String> prolist = questionServiceInter.getmemInfoDe(list);
				mav.addObject("prolist", prolist);
			} catch (Exception e) {
				quevo = questionServiceInter.getQuestionDetail(que_num);
				System.out.println("상세보기 댓글 없음");
				
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
	
	// 질문에 대한 답변,댓글 추가
	@PostMapping("/addans")
	public ModelAndView answeradd(AnswerVO ansvo, MultipartFile mfile ,HttpServletRequest request) {
		
		int que_num = Integer.parseInt(request.getParameter("que_num"));
		ansvo.setQue_num(que_num);
		ansvo.setAns_id(request.getParameter("sessionID"));
		ansvo.setAns_content(request.getParameter("content"));
		
		// 첨부파일 처리 ===========================================================================
		// -- 파일 복사경로 설정
		String r_path = request.getRealPath("/"); // 웹 상 절대경로
		String img_path = "resources\\uploadFile";
		
		String oriFn =	mfile.getOriginalFilename();
		StringBuffer path = new StringBuffer();
		path.append(r_path).append(img_path).append("\\").append(oriFn);
		// -- 파일 복사
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
		
	// 질문 검색(키워드, 제목+내용 에 따른 질문을 검색)
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

		      // 검색된 값 key를 searchValue에 담아준다.
		      // sort 정렬방식을 searchType에 담아준다.
		      
		      String searchValue = "%"+key+"%";
		      String searchType = String.valueOf(sort);
		      
		      System.out.println(searchValue);
		      
		      // 조회된 결과의 total이 0일시 나올 메세지 문구
		      String msg = "해당 검색의 결과가 없습니다.";
		  	  
		  	// 전체 키워드 추천
			  List<QuestionWordCloudVO> klist = questionLogServiceInter.suggestkeyword();
			  List<String> keylist = new ArrayList<>();
			  			
			  for(QuestionWordCloudVO e : klist) {
				  keylist.add(e.getSubject());
			  }
			  
			  mav.addObject("keylist",keylist );
			  
			  // 로그인 상태에서 내가 자주 검색한 키워드 추천
			  try {
				  String mem_id = request.getSession().getAttribute("sessionID").toString();
				  
				  List<QuestionWordCloudVO> mklist = questionLogServiceInter.mysearchkeyword(mem_id);
				  List<String> mkeylist = new ArrayList<>();
				  			
				  for(QuestionWordCloudVO e : mklist) {
					  mkeylist.add(e.getSubject());
				  }
				  
				  mav.addObject("mkeylist",mkeylist );
				  
			  } catch (Exception e) {
				System.out.println("비로그인 상태입니다.");
			  }
			  
			  if (key == null) {
				  int total = questionServiceInter.totalQuestionList();
				  pvo = new PageVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), searchType);
				  
				  list = questionServiceInter.QuestionList(pvo);
				  mav.addObject("paging", pvo);

			      imgList = questionServiceInter.imgList(list);
			      // 모델에 PageVO 객체와 리스트 객체 담기
			      mav.addObject("list", list);
			      
			      List<String> prolist = questionServiceInter.getmemInfo(list);
			      mav.addObject("prolist", prolist);
			  }else {
				  // 키워드, 제목/내용 검색에 따라서 search의 값을 다르게 받고 그에 따른 처리를 진행
			      // 키워드검색 (0), 제목/내용검색(1)
			      if(search == 0) {
			    	  System.out.println("키워드 검색");
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
			    	  System.out.println("제목 + 내용 검색");
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
		
		
		// 답변(댓글)이 없는 질문 중에 검색
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
		      List<String> imgList = new ArrayList<>(); // 대표 이미지의 파일 이름을 담을 리스트
		      
		      String searchValue = "%"+key+"%";
		      String searchType = String.valueOf(sort);
			  String msg = "해당 검색의 결과가 없습니다.";
			  
			  // 전체 키워드 추천
			  List<QuestionWordCloudVO> klist = questionLogServiceInter.suggestkeyword();
			  List<String> keylist = new ArrayList<>();
			  			
			  for(QuestionWordCloudVO e : klist) {
				  keylist.add(e.getSubject());
			  }
			  
			  mav.addObject("keylist",keylist );
			  
			  // 로그인 상태에서 내가 자주 검색한 키워드 추천
			  try {
				  String mem_id = request.getSession().getAttribute("sessionID").toString();
				  
				  List<QuestionWordCloudVO> mklist = questionLogServiceInter.mysearchkeyword(mem_id);
				  List<String> mkeylist = new ArrayList<>();
				  			
				  for(QuestionWordCloudVO e : mklist) {
					  mkeylist.add(e.getSubject());
				  }
				  
				  mav.addObject("mkeylist",mkeylist );
				  
			  } catch (Exception e) {
				System.out.println("비로그인 상태입니다.");
			  }
		      
		      if(key == null) {
		    	  int total = questionServiceInter.totalNAQuestionList();
				  pvo = new PageVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), searchType);
				  
				  list = questionServiceInter.NAQuestionList(pvo);
				  mav.addObject("paging", pvo);
				  
				  // 각각의 게시물에 대표이미지 하나씩만 추출하기 위함
			      
				  imgList = questionServiceInter.imgList(list);
				  
			      mav.addObject("list", list);
			      
			      List<String> prolist = questionServiceInter.getmemInfo(list);
			      mav.addObject("prolist", prolist);
		      }
		      else {

	    	  if(search == 0) {
		    	  System.out.println("키워드 검색");
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
		    	  System.out.println("제목/내용 검색");
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
		      // 모델에 PageVO 객체와 리스트 객체 담기
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
