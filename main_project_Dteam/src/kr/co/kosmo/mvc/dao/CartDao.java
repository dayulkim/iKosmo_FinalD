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
	public void addcart(CartVO vo) {
		System.out.println("��ٱ��� �߰�");
		ss.insert("cart.in", vo);
	}
	
	@Override
	public List<CartVO> getlist(int num) {
		System.out.println("��ٱ��� ���");
		return ss.selectList("cart.getlist", num);
	}

	@Override
	public void delcart(CartVO vo) {
		System.out.println("��ٱ��� ����");
		ss.delete("cart.delcart", vo);
	}

}