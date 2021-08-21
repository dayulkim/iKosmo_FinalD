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

import kr.co.kosmo.mvc.service.PaymentServiceInter;
import kr.co.kosmo.mvc.vo.CartVO;
import kr.co.kosmo.mvc.vo.ProductVO;
import kr.co.kosmo.mvc.vo.PurchaseVO;

@Controller
public class PaymentController {

	@Autowired
	PaymentServiceInter paymentServiceInter;

	// ������������ �Ѿ��
	@RequestMapping("/confirm")
	public String confirm(Model m, HttpSession session,
			@RequestParam(value = "pro_num", required = false, defaultValue = "0") int pro_num,
			@RequestParam(value = "ord_qty", required = false, defaultValue = "1") int ord_qty,
			@RequestParam(value = "fromCart") int fromcart) {
		
		// �α����� ����� ���� �ѹ� �޾ƿ���
		int mem_num = Integer.parseInt(session.getAttribute("sessionNum").toString());
		// ���� �ѹ� �������� ȸ������ �޾ƿ���
		m.addAttribute("member", paymentServiceInter.memberInfo(mem_num));
		// ��ñ��� / ��ٱ��� ���� �Ķ���� �Ѱ��ֱ�
		m.addAttribute("fromcart", fromcart);

		// ��ñ��Ż�ǰ / ��ٱ��� ��ǰ��� �Ѱ��ֱ� 
		List<CartVO> carvo_list = new ArrayList<CartVO>();
		int totalPrice = 0;
		if (fromcart == 0) { // fromcart == 0 -> �󼼺��⿡�� �����ϱ� ������ ��
			ProductVO provo = paymentServiceInter.detailConfirm(pro_num);
			CartVO carvo = new CartVO();
			carvo.setCar_qty(ord_qty);
			carvo.setProductVO(provo);
			carvo_list.add(carvo);
			totalPrice = provo.getPro_price() * ord_qty; // �Ѿ� = ���ϻ�ǰ�� * ����
			m.addAttribute("pro_num", pro_num);
			m.addAttribute("ord_qty", ord_qty);
		} else if (fromcart == 1) { // fromcart == 1 -> ��ٱ��Ͽ��� �����ϱ� ������ ��
			carvo_list = paymentServiceInter.selectCart(mem_num);
			totalPrice = paymentServiceInter.totalPrice(mem_num);
			m.addAttribute("carvo_list", carvo_list);
		}
		m.addAttribute("carvo_list", carvo_list);
		// �Ѿ� �Ѱ��ֱ�
		m.addAttribute("totalPrice", totalPrice);
		// ��ۺ� ���� �ݾ� �����ֱ�
		int payPrice = totalPrice+2500;
		m.addAttribute("payPrice", payPrice);
		
		return "payment/confirm";
	}

	// �����ϱ� ������ �� ���� ó���ϱ�
	@RequestMapping("/payment")
	public String payment(Model m, HttpSession session, HttpServletRequest request,
			@RequestParam(value = "pro_num", required = false, defaultValue = "0") int pro_num,
			@RequestParam(value = "fromCart") int fromcart,
			@RequestParam(value = "ord_qty", required = false, defaultValue = "0") int ord_qty, PurchaseVO purvo) {

		int mem_num = Integer.parseInt(session.getAttribute("sessionNum").toString());
		List<CartVO> carvo_list = new ArrayList<CartVO>();
		if (fromcart == 0) { // fromcart == 0 -> �󼼺��⿡�� �����ϱ� ������ ��
			CartVO carvo = new CartVO();
			carvo.setCar_qty(ord_qty);
			carvo.setMem_num(mem_num);
			carvo.setPro_num(pro_num);
			carvo_list.add(carvo);
		} else if (fromcart == 1) { // fromcart == 1 -> ��ٱ��Ͽ��� �����ϱ� ������ ��
			carvo_list = paymentServiceInter.selectCart(mem_num);
			m.addAttribute("carvo_list", carvo_list);
		}
		paymentServiceInter.payment(mem_num, carvo_list, purvo); 
		return "redirect:/"; // ���ų��� �������� �̵�
	}
}