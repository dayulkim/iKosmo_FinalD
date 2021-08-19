package kr.co.kosmo.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.kosmo.mvc.dao.CartDaoInter;
import kr.co.kosmo.mvc.vo.CartVO;

@Controller
public class CartController {
	
	@Autowired
	private CartDaoInter cartDaoInter;
	
	
	// 장바구니 폼으로 이동
	@RequestMapping(value="/cartform")
	public String gocart(HttpSession session, Model m) {
		int mem_num = (int) session.getAttribute("sessionNum");
		List<CartVO> list = cartDaoInter.getlist(mem_num);
		m.addAttribute("clist",list);
		return "cart/cartform";
	}
	
	
	// 장바구니에 물건 등록
	@RequestMapping(value="/addcart")
	@ResponseBody
	public void addcart(int pro_num, int car_qty, HttpSession session) {
		CartVO vo = new CartVO();
		int num = (int) session.getAttribute("sessionNum");
		vo.setCar_qty(car_qty);
		vo.setMem_num(num);
		vo.setPro_num(pro_num);
		cartDaoInter.addcart(vo);
	}
	
	// 장바구니 물건 삭제
	@RequestMapping(value="/delcart")
	@ResponseBody
	public String delcart(HttpSession session, int car_num) {
		CartVO vo = new CartVO();
		int mem_num = (int) session.getAttribute("sessionNum");
		vo.setMem_num(mem_num);
		vo.setCar_num(car_num);
		cartDaoInter.delcart(vo);
		return "success";
	}
	
}



