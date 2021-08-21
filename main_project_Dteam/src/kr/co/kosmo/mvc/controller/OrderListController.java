package kr.co.kosmo.mvc.controller;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import kr.co.kosmo.mvc.service.OrderListServiceInter;
import kr.co.kosmo.mvc.vo.OrderListVO;


@Controller // ��Ʈ�ѷ� Ŭ������ ����
public class OrderListController { // �����
	
	@Autowired // �ʿ��� ������Ʈ�� ������
	private OrderListServiceInter orderListServiceInter;
	
	@RequestMapping("/anypage")
	public String anypage(HttpSession session, Model m) {
		int mem_session = (int) session.getAttribute("sessionNum");
		List<OrderListVO> ordvo = orderListServiceInter.orderList(mem_session);
		m.addAttribute("ordvo", ordvo);
		return "order/anypage";
	}
}
