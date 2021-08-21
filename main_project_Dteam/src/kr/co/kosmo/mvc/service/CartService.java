package kr.co.kosmo.mvc.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.co.kosmo.mvc.dao.CartDaoInter;
import kr.co.kosmo.mvc.vo.CartVO;

@Service
public class CartService implements CartServiceInter {
	
	@Autowired
	private CartDaoInter cartDaoInter;

	@Override
	public void addcart(CartVO vo) {
		cartDaoInter.addcart(vo);
	}

	@Override
	public List<CartVO> getlist(int num) {
		return cartDaoInter.getlist(num);
	}

	@Override
	public void delcart(CartVO vo) {
		cartDaoInter.delcart(vo);
	}
	

}
