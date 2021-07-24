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


@Controller // 컨트롤러 클래스로 설정
public class OrderListController { // 김다율
	
	@Autowired // 필요한 오브젝트를 인젝션
	private OrderListService orderListService;
	
	// @Autowired
	// private ProductService productService;
	
	@RequestMapping("/orderList") // 개인의 전체 주문내역 출력
	public ModelAndView orderList(HttpServletRequest request) {
		System.out.println("전체 주문내역 컨트롤러 시작!");
		int mem_num = 1;
		// int mem_num = Integer.parseInt(request.getParameter("mem_num"));
		ModelAndView mav = new ModelAndView();
		List<OrderListVO> ovo = orderListService.orderListii(mem_num);
		
		// int test = ovo.get(0).getPro_num();
		// System.out.println("넘어오나? : "+test);
		
		mav.addObject("ordvo", ovo);
		mav.setViewName("order/orderList"); // jsp의 위치 주소,,.
		return mav;
	}
	// http://localhost/main_project_Dteam/orderList
	
//	@RequestMapping("/orderDetail") // 주문내역 상세정보 출력
//	public ModelAndView orderDetail(HttpServletRequest request) {
//		int ord_num = 3;
//		// int ord_num = Integer.parseInt(request.getParameter("ord_num"));
//		ModelAndView mav = new ModelAndView();
//		OrderListVO ovo = orderListService.getOrderOne(ord_num);
//		mav.addObject("ordvo", ovo);
//		mav.setViewName("order/orderDetail"); // jsp의 위치 주소,,.
//		return mav;
//	}
}
