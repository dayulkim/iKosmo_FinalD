package kr.co.kosmo.mvc.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.vo.ProductVO;
import kr.co.kosmo.mvc.vo.SellerVO;

@Repository
public class SellerDao {
	@Autowired
	private SqlSessionTemplate ss;
	
	//??????ȣ ?? ????????
	public SellerVO getSellerOne(int sel_num) {
		return ss.selectOne("sellerMap.sellerInfo", sel_num);
	}
	
}