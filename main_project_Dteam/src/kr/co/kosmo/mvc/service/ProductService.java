package kr.co.kosmo.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.kosmo.mvc.dao.ProductDao;
import kr.co.kosmo.mvc.dao.ProductDaoInter;
import kr.co.kosmo.mvc.vo.ProductVO;

@Service
public class ProductService {
	@Autowired
	private ProductDao prodao; // ProductDaoInter ���� Dao�� �޾Ƽ� 500�Ѽ�

	public ProductVO getProductOne(int pro_num) {
		return prodao.productDetail(pro_num);
	}

}
