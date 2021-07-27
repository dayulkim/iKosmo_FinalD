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


@Controller // ��Ʈ�ѷ� Ŭ������ ����
public class OrderListController { // �����
	
	@Autowired // �ʿ��� ������Ʈ�� ������
	private OrderListService orderListService;
	
	@RequestMapping("/orderList") // ������ ��ü �ֹ����� ���
	public ModelAndView orderList(HttpServletRequest request) {
		System.out.println("��ü �ֹ����� ��Ʈ�ѷ� ����!");
		// int mem_num = 1;
		int mem_num = Integer.parseInt(request.getParameter("mem_num"));
		ModelAndView mav = new ModelAndView();
		List<OrderListVO> ordvo = orderListService.orderListii(mem_num);
		mav.addObject("ordvo", ordvo);
		// mav.setViewName("order/orderList"); // jsp�� ��ġ �ּ�,,.
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
