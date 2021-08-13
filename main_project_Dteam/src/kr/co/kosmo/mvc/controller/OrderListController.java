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


@Controller // ��Ʈ�ѷ� Ŭ������ ����
public class OrderListController { // �����
	
	@Autowired // �ʿ��� ������Ʈ�� ������
	private OrderListServiceInter orderListServiceInter;
	
	@Autowired
	private QuestionServiceInter questionServiceInter;
	
	@RequestMapping("/orderList") // ������ ��ü �ֹ����� ���
	public ModelAndView orderList(
			@RequestParam(value = "nowPage", required = false, defaultValue = "1") String nowPage,
	        @RequestParam(value = "cntPerPage", required = false, defaultValue = "10") String cntPerPage,
	        HttpServletRequest request,
	        PageVO pvo, HttpSession session) {
		System.out.println("��ü �ֹ����� ��Ʈ�ѷ� ����!");
		// int mem_num = 1;
		// int mem_num = Integer.parseInt(request.getParameter("mem_num"));
		int mem_session = (int) session.getAttribute("sessionNum");
		System.out.println("mem_session::::::::::::"+mem_session);
		ModelAndView mav = new ModelAndView();
		List<OrderListVO> ordvo = orderListServiceInter.orderListii(mem_session);
		mav.addObject("ordvo", ordvo);
		// mav.setViewName("order/orderList"); // jsp�� ��ġ �ּ�,,.
		
		List<QuestionVO> list ;
		String searchType = request.getSession().getAttribute("sessionID").toString();
		System.out.println("���������� id : "+searchType);
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
	      mav.addObject("imgList", imgList); // �������� service�� ��� ���� 4���� ���ܵ� �ǃm
	      
	mav.setViewName("member/mypage");
	return mav;
	}
	
//	@RequestMapping("/orderList") // ������ ��ü �ֹ����� ���
//	public ModelAndView orderList(HttpServletRequest request) {
//		System.out.println("��ü �ֹ����� ��Ʈ�ѷ� ����!");
//		// int mem_num = 1;
//		int mem_num = Integer.parseInt(request.getParameter("mem_num"));
//		ModelAndView mav = new ModelAndView();
//		List<OrderListVO> ordvo = orderListService.orderListii(mem_num);
//		mav.addObject("ordvo", ordvo);
//		// mav.setViewName("order/orderList"); // jsp�� ��ġ �ּ�,,.
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
