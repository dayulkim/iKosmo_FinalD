package kr.co.kosmo.mvc.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.vo.Scrap_ProductVO;

@Repository
public class Scrap_ProductDao implements Scrap_ProductDaoInter {
	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public List<Integer> scrap_ProRecommend() {

		return ss.selectList("scarp_Product.recommend");
	}

}
