package kr.co.kosmo.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.vo.ProductVO;

@Repository
public class ProductDao implements ProductDaoInter { // �����
	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public List<ProductVO> productList() {
		return ss.selectList("product.productList");

	}

	// ��ǰ ������ ���
	@Override
	public ProductVO productDetail(int pro_num) {
		return ss.selectOne("product.productDetail", pro_num);
	}

}
