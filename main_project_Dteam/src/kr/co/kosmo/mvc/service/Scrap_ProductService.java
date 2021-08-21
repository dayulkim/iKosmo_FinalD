package kr.co.kosmo.mvc.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.co.kosmo.mvc.dao.Scrap_ProductDaoInter;

@Service
public class Scrap_ProductService implements Scrap_ProductServiceInter {
	@Autowired
	private Scrap_ProductDaoInter scrap_ProductDaoInter;

	public List<Integer> scrap_ProRecommend(int cateNum) {
		return scrap_ProductDaoInter.scrap_ProRecommend(cateNum);
	}

}
