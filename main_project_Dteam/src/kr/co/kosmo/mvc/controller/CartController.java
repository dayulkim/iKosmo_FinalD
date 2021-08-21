package kr.co.kosmo.mvc.controller;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.kosmo.mvc.service.CartServiceInter;
import kr.co.kosmo.mvc.vo.CartVO;

@Controller
public class CartController {
	
	@Autowired
	private CartServiceInter cartServiceInter;
	
	// 장바구니에 물건 등록
	@RequestMapping(value="/addcart")
	public void addcart(int pro_num, int car_qty, HttpSession session) {
		CartVO vo = new CartVO();
		int mem_num = Integer.parseInt(session.getAttribute("sessionNum").toString());
		vo.setCar_qty(car_qty);
		vo.setMem_num(mem_num);
		vo.setPro_num(pro_num);
		cartServiceInter.addcart(vo);
	}
	
	// 장바구니 물건 삭제
	@RequestMapping(value="/delcart")
	@ResponseBody
	public String delcart(HttpSession session, int car_num) {
		CartVO vo = new CartVO();
		int mem_num = Integer.parseInt(session.getAttribute("sessionNum").toString());
		vo.setMem_num(mem_num);
		vo.setCar_num(car_num);
		cartServiceInter.delcart(vo);
		return "success";
	}
	
}



