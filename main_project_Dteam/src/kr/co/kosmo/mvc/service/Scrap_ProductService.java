package kr.co.kosmo.mvc.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.co.kosmo.mvc.dao.Scrap_ProductDaoInter;
import kr.co.kosmo.mvc.vo.Scrap_ProductVO;

@Service
public class Scrap_ProductService implements Scrap_ProductServiceInter {
	@Autowired
	private Scrap_ProductDaoInter scrap_ProductDaoInter;

	public List<Integer> scrap_ProRecommend(int cateNum) {
		return scrap_ProductDaoInter.scrap_ProRecommend(cateNum);
	}

	@Override
	public void doscrap(Scrap_ProductVO vo) {
		scrap_ProductDaoInter.doscrap(vo);
	}

	@Override
	public int countscrap(Scrap_ProductVO vo) {
		return scrap_ProductDaoInter.countscrap(vo);
	}

	@Override
	public void scrapdel(Scrap_ProductVO vo) {
		scrap_ProductDaoInter.scrapdel(vo);
	}

	@Override
	public List<Scrap_ProductVO> getproductlist(int mem_num) {
		return scrap_ProductDaoInter.getproductlist(mem_num);
	}

}
