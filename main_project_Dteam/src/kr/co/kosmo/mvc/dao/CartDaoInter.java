package kr.co.kosmo.mvc.dao;

import java.util.List;

import kr.co.kosmo.mvc.vo.CartVO;

public interface CartDaoInter {
	public void addcart(CartVO vo);
	public List<CartVO> getlist(int num);
	public void delcart(CartVO vo);
}
