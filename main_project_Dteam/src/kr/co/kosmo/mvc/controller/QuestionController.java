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
		System.out.println("작성자ID: "+ writerID);
		quevo.setMem_id(writerID);
		
		quevo.setQue_title(request.getParameter("title"));
		quevo.setQue_content(request.getParameter("content"));
		System.out.println(request.getParameter("title"));
		System.out.println(request.getParameter("content"));
		
		//선택했던 체크박스 항목을 String 배열로 받는다.
		String[] kinds = request.getParameterValues("kinds");
		String[] furnitures = request.getParameterValues("furnitures");
		String[] space = request.getParameterValues("space");
		
		List<String> keylist = new ArrayList<>();
		
		// 키워드를 세부 분할 하지 않았기 때문에 리스트 하나에 몰아서 집어넣는다.
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
				
		// 첨부파일 처리 ===========================================================================
		// -- 파일 복사경로 설정
		String r_path = request.getRealPath("/"); // 웹 상 절대경로
		String img_path = "resources\\uploadFile";
		List<String> imglist = new ArrayList<>();
		for(MultipartFile mf : mfile) {
			String oriFn = mf.getOriginalFilename(); // 업로드할 때의 파일명을 가져옴
			StringBuffer path = new StringBuffer();
			path.append(r_path).append(img_path).append("\\").append(oriFn);
			System.out.println("절대경로 : " + r_path);
			System.out.println("File FullPath: "+path);
			// -- 파일 복사
			File f = new File(path.toString());
			try {
				mf.transferTo(f); // 임시저장소에 있는 파일을 File 객체로 옮기기
				imglist.add(oriFn);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}
		// 파일 이름의 리스트를 String으로 만들고 이거를 DB에 저장
		String fileNames = String.join(",", imglist);
		System.out.println(fileNames);
		
		// -- DB에 파일 이름 저장
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
		  
		  // 각각의 게시물에 대표이미지 하나씩만 추출하기 위함
	      List<String> imgList = new ArrayList<>(); // 대표 이미지의 파일 이름을 담을 리스트
	      for (QuestionVO quevo : list) {
	         if (quevo.getQue_photo() != null) {
	            String[] arr = quevo.getQue_photo().split(",");
	            imgList.add(arr[0]); // 첫번째 이미지의 이름을 리스트에 저장
	         } else {
	            imgList.add("noImage");
	         }
	      }
	      
	      // 모델에 PageVO 객체와 리스트 객체 담기
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
		  
		  // 각각의 게시물에 대표이미지 하나씩만 추출하기 위함
	      List<String> imgList = new ArrayList<>(); // 대표 이미지의 파일 이름을 담을 리스트
	      for (QuestionVO quevo : list) {
	         if (quevo.getQue_photo() != null) {
	            String[] arr = quevo.getQue_photo().split(",");
	            imgList.add(arr[0]); // 첫번째 이미지의 이름을 리스트에 저장
	         } else {
	            imgList.add("noImage");
	         }
	      }
	      
	      // 모델에 PageVO 객체와 리스트 객체 담기
	      mav.addObject("list", list);
	      mav.addObject("imgList", imgList);
	      mav.setViewName("question/questionList");
	      return mav;
	   }
	
	// 리뷰글 상세보기
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
		
		// 댓글이 있는 질문과 없는 질문을 나눠서 조회한다.
		try {
			quevo = questionServiceInter.getQuestionDetail2(vo);
			List<AnswerVO> list = quevo.getAnswer();
			System.out.println("상세보기 댓글 있음");
			mav.addObject("quevo",quevo);
			mav.addObject("list",list);
		} catch (Exception e) {
			quevo = questionServiceInter.getQuestionDetail(que_num);
			System.out.println("상세보기 댓글 없음");
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
	      
	      String msg = "해당 검색의 결과가 없습니다.";
	      
	      if(search == 0) {
	    	  System.out.println("키워드 검색");
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
	 	            imgList.add(arr[0]); // 첫번째 이미지의 이름을 리스트에 저장
	 	         } else {
	 	            imgList.add("noImage");
	 	         }
	 	      }
		      mav.addObject("list", list);
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
	    	  
	    	  for (QuestionVO quevo : list) {
	 	         if (quevo.getQue_photo() != null) {
	 	            String[] arr = quevo.getQue_photo().split(",");
	 	            imgList.add(arr[0]); // 첫번째 이미지의 이름을 리스트에 저장
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
	      List<String> imgList = new ArrayList<>(); // 대표 이미지의 파일 이름을 담을 리스트
	      
	      String searchValue = "%"+key+"%";
	      String searchType = String.valueOf(sort);
		  String msg = "해당 검색의 결과가 없습니다.";
	      
	      if(key == null) {
	    	  int total = questionServiceInter.totalNAQuestionList();
			  pvo = new PageVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), searchType);
			  
			  list = questionServiceInter.NAQuestionList(pvo);
			  mav.addObject("paging", pvo);
			  
			  // 각각의 게시물에 대표이미지 하나씩만 추출하기 위함
		      
		      for (QuestionVO quevo : list) {
		         if (quevo.getQue_photo() != null) {
		            String[] arr = quevo.getQue_photo().split(",");
		            imgList.add(arr[0]); // 첫번째 이미지의 이름을 리스트에 저장
		         } else {
		            imgList.add("noImage");
		         }
		      }
		      mav.addObject("list", list);
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
		    	  
		    	  for (QuestionVO quevo : list) {
		 	         if (quevo.getQue_photo() != null) {
		 	            String[] arr = quevo.getQue_photo().split(",");
		 	            imgList.add(arr[0]); // 첫번째 이미지의 이름을 리스트에 저장
		 	         } else {
		 	            imgList.add("noImage");
		 	         }
		 	      }
			      mav.addObject("list", list);
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
		    	  
		    	  
		    	  for (QuestionVO quevo : list) {
		 	         if (quevo.getQue_photo() != null) {
		 	            String[] arr = quevo.getQue_photo().split(",");
		 	            imgList.add(arr[0]); // 첫번째 이미지의 이름을 리스트에 저장
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
	      // 모델에 PageVO 객체와 리스트 객체 담기
	      mav.addObject("imgList", imgList);
	      mav.setViewName("question/questionList");
	      return mav;
	   }

}
