package kr.co.kosmo.mvc.service;

import java.util.List;

import kr.co.kosmo.mvc.vo.CartVO;

public interface CartServiceInter {
	public void addcart(CartVO vo);
	public List<CartVO> getlist(int num);
	public void delcart(CartVO vo);

}
