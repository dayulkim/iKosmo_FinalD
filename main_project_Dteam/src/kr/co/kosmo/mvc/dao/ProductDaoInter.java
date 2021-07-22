package kr.co.kosmo.mvc.dao;



import java.util.List;

import kr.co.kosmo.mvc.vo.ProductVO;


public interface ProductDaoInter {

	public List<ProductVO> productList();
	public ProductVO productDetail(int pro_num);
	

}
