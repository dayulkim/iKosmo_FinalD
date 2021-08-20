package kr.co.kosmo.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.vo.CartVO;

@Repository
public class CartDao implements CartDaoInter {
	
	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public void addcart(CartVO vo) { //장바구니 추가
		ss.insert("cart.in", vo);
	}
	
	@Override
	public List<CartVO> getlist(int num) { // 장바구니 출력
		return ss.selectList("cart.getlist", num);
	}

	@Override
	public void delcart(CartVO vo) { // 장바구니 삭제		
		ss.delete("cart.delcart", vo);
	}

}
