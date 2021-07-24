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


@Controller // ��Ʈ�ѷ� Ŭ������ ����
public class OrderListController { // �����
	
	@Autowired // �ʿ��� ������Ʈ�� ������
	private OrderListService orderListService;
	
	// @Autowired
	// private ProductService productService;
	
	@RequestMapping("/orderList") // ������ ��ü �ֹ����� ���
	public ModelAndView orderList(HttpServletRequest request) {
		System.out.println("��ü �ֹ����� ��Ʈ�ѷ� ����!");
		int mem_num = 1;
		// int mem_num = Integer.parseInt(request.getParameter("mem_num"));
		ModelAndView mav = new ModelAndView();
		List<OrderListVO> ovo = orderListService.orderListii(mem_num);
		
		// int test = ovo.get(0).getPro_num();
		// System.out.println("�Ѿ����? : "+test);
		
		mav.addObject("ordvo", ovo);
		mav.setViewName("order/orderList"); // jsp�� ��ġ �ּ�,,.
		return mav;
	}
	// http://localhost/main_project_Dteam/orderList
	
//	@RequestMapping("/orderDetail") // �ֹ����� ������ ���
//	public ModelAndView orderDetail(HttpServletRequest request) {
//		int ord_num = 3;
//		// int ord_num = Integer.parseInt(request.getParameter("ord_num"));
//		ModelAndView mav = new ModelAndView();
//		OrderListVO ovo = orderListService.getOrderOne(ord_num);
//		mav.addObject("ordvo", ovo);
//		mav.setViewName("order/orderDetail"); // jsp�� ��ġ �ּ�,,.
//		return mav;
//	}
}
