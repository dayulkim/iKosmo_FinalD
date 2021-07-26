package kr.co.kosmo.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import kr.co.kosmo.mvc.dao.ProductDaoInter;
import kr.co.kosmo.mvc.vo.ProductVO;

@Service
public class ProductService {
	@Autowired
	private ProductDaoInter productDaoInter;

	public List<ProductVO> productList() {

		return productDaoInter.productList();
	}

	public ProductVO getProductOne(int pro_num) {
		return productDaoInter.productDetail(pro_num);
	}

}
