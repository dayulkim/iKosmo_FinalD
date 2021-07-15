package kr.co.kosmo.mvc.dao;

import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.vo.ProductVO;

@Repository
public interface ProductDaoInter {

	public ProductVO productDetail(int pro_num);

}
