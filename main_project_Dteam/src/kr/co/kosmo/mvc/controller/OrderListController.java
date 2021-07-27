package kr.co.kosmo.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.kosmo.mvc.service.OrderListService;
import kr.co.kosmo.mvc.service.ProductService;
import kr.co.kosmo.mvc.vo.OrderListVO;
import kr.co.kosmo.mvc.vo.ProductVO;


@Controller // 컨트롤러 클래스로 설정
public class OrderListController { // 김다율
	
	@Autowired // 필요한 오브젝트를 인젝션
	private OrderListService orderListService;
	
	@RequestMapping("/orderList") // 개인의 전체 주문내역 출력
	public ModelAndView orderList(HttpServletRequest request) {
		System.out.println("전체 주문내역 컨트롤러 시작!");
		// int mem_num = 1;
		int mem_num = Integer.parseInt(request.getParameter("mem_num"));
		ModelAndView mav = new ModelAndView();
		List<OrderListVO> ordvo = orderListService.orderListii(mem_num);
		mav.addObject("ordvo", ordvo);
		// mav.setViewName("order/orderList"); // jsp의 위치 주소,,.
		mav.setViewName("member/mypage");
		return mav;
	}
	// http://localhost/main_project_Dteam/orderList
	// https://localhost/main_project_Dteam/orderList?mem_num=1
	
//	@RequestMapping("/test")
//	public String test() {
//		return "member/mypage_0719";
//	}
}
