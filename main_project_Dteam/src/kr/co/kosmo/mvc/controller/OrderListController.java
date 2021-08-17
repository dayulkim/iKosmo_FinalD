package kr.co.kosmo.mvc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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


@Controller // ��Ʈ�ѷ� Ŭ������ ����
public class OrderListController { // �����
	
	@Autowired // �ʿ��� ������Ʈ�� ������
	private OrderListServiceInter orderListServiceInter;
	
	@Autowired
	private QuestionServiceInter questionServiceInter;
	
	@RequestMapping("/anypage")
	public String anypage(HttpSession session, Model m) {
		System.out.println("��ü �ֹ����� ��Ʈ�ѷ� ����!");
		// int mem_num = 1;
		// int mem_num = Integer.parseInt(request.getParameter("mem_num"));
		int mem_session = (int) session.getAttribute("sessionNum");
		System.out.println("mem_session::::::::::::"+mem_session);
		ModelAndView mav = new ModelAndView();
		List<OrderListVO> ordvo = orderListServiceInter.orderList(mem_session);
		m.addAttribute("ordvo", ordvo);
		// mav.setViewName("order/orderList"); // jsp�� ��ġ �ּ�,,.
		return "order/anypage";
	}
}
