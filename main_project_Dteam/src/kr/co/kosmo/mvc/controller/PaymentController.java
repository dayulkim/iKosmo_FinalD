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

	// 결제페이지로 넘어가기
	@RequestMapping("/confirm")
	public String confirm(Model m, HttpSession session,
			@RequestParam(value = "pro_num", required = false, defaultValue = "0") int pro_num,
			@RequestParam(value = "ord_qty", required = false, defaultValue = "1") int ord_qty,
			@RequestParam(value = "fromCart") int fromcart) {
		
		// 로그인한 멤버의 세션 넘버 받아오기
		int mem_num = Integer.parseInt(session.getAttribute("sessionNum").toString());
		// 세션 넘버 바탕으로 회원정보 받아오기
		m.addAttribute("member", paymentServiceInter.memberInfo(mem_num));
		// 즉시구매 / 장바구니 구분 파라미터 넘겨주기
		m.addAttribute("fromcart", fromcart);

		// 즉시구매상품 / 장바구니 상품목록 넘겨주기 
		List<CartVO> carvo_list = new ArrayList<CartVO>();
		int totalPrice = 0;
		if (fromcart == 0) { // fromcart == 0 -> 상세보기에서 구매하기 눌렀을 때
			ProductVO provo = paymentServiceInter.detailConfirm(pro_num);
			CartVO carvo = new CartVO();
			carvo.setCar_qty(ord_qty);
			carvo.setProductVO(provo);
			carvo_list.add(carvo);
			totalPrice = provo.getPro_price() * ord_qty; // 총액 = 단일상품가 * 수량
			m.addAttribute("pro_num", pro_num);
			m.addAttribute("ord_qty", ord_qty);
		} else if (fromcart == 1) { // fromcart == 1 -> 장바구니에서 구매하기 눌렀을 때
			carvo_list = paymentServiceInter.selectCart(mem_num);
			totalPrice = paymentServiceInter.totalPrice(mem_num);
			m.addAttribute("carvo_list", carvo_list);
		}
		m.addAttribute("carvo_list", carvo_list);
		// 총액 넘겨주기
		m.addAttribute("totalPrice", totalPrice);
		// 배송비 더한 금액 보내주기
		int payPrice = totalPrice+2500;
		m.addAttribute("payPrice", payPrice);
		
		return "payment/confirm";
	}

	// 결제하기 눌렀을 때 결제 처리하기
	@RequestMapping("/payment")
	public String payment(Model m, HttpSession session, HttpServletRequest request,
			@RequestParam(value = "pro_num", required = false, defaultValue = "0") int pro_num,
			@RequestParam(value = "fromCart") int fromcart,
			@RequestParam(value = "ord_qty", required = false, defaultValue = "0") int ord_qty, PurchaseVO purvo) {

		int mem_num = Integer.parseInt(session.getAttribute("sessionNum").toString());
		List<CartVO> carvo_list = new ArrayList<CartVO>();
		if (fromcart == 0) { // fromcart == 0 -> 상세보기에서 구매하기 눌렀을 때
			CartVO carvo = new CartVO();
			carvo.setCar_qty(ord_qty);
			carvo.setMem_num(mem_num);
			carvo.setPro_num(pro_num);
			carvo_list.add(carvo);
		} else if (fromcart == 1) { // fromcart == 1 -> 장바구니에서 구매하기 눌렀을 때
			carvo_list = paymentServiceInter.selectCart(mem_num);
			m.addAttribute("carvo_list", carvo_list);
		}
		paymentServiceInter.payment(mem_num, carvo_list, purvo); 
		return "redirect:/"; // 구매내역 페이지로 이동
	}
}