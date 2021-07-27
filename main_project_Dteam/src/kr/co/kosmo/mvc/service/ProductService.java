package kr.co.kosmo.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import kr.co.kosmo.mvc.dao.ProductDaoInter;
import kr.co.kosmo.mvc.vo.InterestVO;
import kr.co.kosmo.mvc.vo.ProductVO;

@Service
public class ProductService implements ProductServiceInter{
	@Autowired
	private ProductDaoInter productDaoInter;

	public List<ProductVO> productList() {

		return productDaoInter.productList();
	}

	@Override
	public List<ProductVO> productList2(String category) {
		
		return productDaoInter.productList2(category);
	}

	@Override
	public List<ProductVO> productOrder(String way, String merit, String category) {
		
		return productDaoInter.productOrder(way, merit, category);
	}

	@Override
	public String totalProduct() {
		
		return productDaoInter.totalProduct();
	}

	@Override
	public List<ProductVO> priceList(String range) {
		
		return productDaoInter.priceList(range);
	}

	@Override
	public String totalScrap(String sid) {
		return productDaoInter.totalScrap(sid);
	}

	@Override
	public String totalCart(String sid) {
		return productDaoInter.totalCart(sid);
	}

	@Override
	public List<InterestVO> myProduct(String sid) {
		return productDaoInter.myProduct(sid);
	}

	@Override
	public List<InterestVO> theirProduct() {
		return productDaoInter.theirProduct();
	}

	@Override
	public ProductVO productDetail(int pro_num) {
		return productDaoInter.productDetail(pro_num);
	}

	@Override
	public String productStar(int pro_num) {
		return productDaoInter.productStar(pro_num);
	}



}
