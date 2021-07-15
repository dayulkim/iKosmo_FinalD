package kr.co.kosmo.mvc.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.vo.ProductVO;

@Repository
public class ProductDao {
	@Autowired
	private SqlSessionTemplate ss;

	// 상품 상세정보 출력
	public ProductVO productDetail(int pro_num) {
		return ss.selectOne("productMap.productDetail", pro_num);
	}

}
