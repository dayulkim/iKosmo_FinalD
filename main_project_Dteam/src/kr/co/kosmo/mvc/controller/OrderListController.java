package kr.co.kosmo.mvc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.kosmo.mvc.service.OrderListService;
import kr.co.kosmo.mvc.service.OrderListServiceInter;
import kr.co.kosmo.mvc.service.ProductService;
import kr.co.kosmo.mvc.service.QuestionServiceInter;
import kr.co.kosmo.mvc.vo.OrderListVO;
import kr.co.kosmo.mvc.vo.PageVO;
import kr.co.kosmo.mvc.vo.ProductVO;
import kr.co.kosmo.mvc.vo.QuestionVO;


@Controller // 컨트롤러 클래스로 설정
public class OrderListController { // 김다율
	
	@Autowired // 필요한 오브젝트를 인젝션
	private OrderListServiceInter orderListServiceInter;
	
	@Autowired
	private QuestionServiceInter questionServiceInter;
	
	@RequestMapping("/orderList") // 개인의 전체 주문내역 출력
	public ModelAndView orderList(
			@RequestParam(value = "nowPage", required = false, defaultValue = "1") String nowPage,
	        @RequestParam(value = "cntPerPage", required = false, defaultValue = "10") String cntPerPage,
	        HttpServletRequest request,
	        PageVO pvo, HttpSession session) {
		System.out.println("전체 주문내역 컨트롤러 시작!");
		// int mem_num = 1;
		// int mem_num = Integer.parseInt(request.getParameter("mem_num"));
		int mem_session = (int) session.getAttribute("sessionNum");
		System.out.println("mem_session::::::::::::"+mem_session);
		ModelAndView mav = new ModelAndView();
		List<OrderListVO> ordvo = orderListServiceInter.orderListii(mem_session);
		mav.addObject("ordvo", ordvo);
		// mav.setViewName("order/orderList"); // jsp의 위치 주소,,.
		
		List<QuestionVO> list ;
		String searchType = request.getSession().getAttribute("sessionID").toString();
		System.out.println("마이페이지 id : "+searchType);
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
	      mav.addObject("imgList", imgList); // 나머지는 service에 담고 여거 4개만 남겨두 되긩
	      
	mav.setViewName("member/mypage");
	return mav;
	}
	
//	@RequestMapping("/orderList") // 개인의 전체 주문내역 출력
//	public ModelAndView orderList(HttpServletRequest request) {
//		System.out.println("전체 주문내역 컨트롤러 시작!");
//		// int mem_num = 1;
//		int mem_num = Integer.parseInt(request.getParameter("mem_num"));
//		ModelAndView mav = new ModelAndView();
//		List<OrderListVO> ordvo = orderListService.orderListii(mem_num);
//		mav.addObject("ordvo", ordvo);
//		// mav.setViewName("order/orderList"); // jsp의 위치 주소,,.
//		mav.setViewName("member/mypage");
//		return mav;
//	}
	// http://localhost/main_project_Dteam/orderList
	// https://localhost/main_project_Dteam/orderList?mem_num=1
	
//	@RequestMapping("/test")
//	public String test() {
//		return "member/mypage_0719";
//	}
}
