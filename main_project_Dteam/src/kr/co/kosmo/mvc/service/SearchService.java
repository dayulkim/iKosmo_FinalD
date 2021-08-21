package kr.co.kosmo.mvc.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.co.kosmo.mvc.dao.SearchDaoInter;
import kr.co.kosmo.mvc.vo.HousewarmingVO;
import kr.co.kosmo.mvc.vo.ProductVO;
import kr.co.kosmo.mvc.vo.QuestionVO;
import kr.co.kosmo.mvc.vo.SearchLogVO;

@Service
public class SearchService implements SearchServiceInter{
	
	@Autowired
	private SearchDaoInter searchDaoInter;

	@Override
	public List<SearchLogVO> top10Search() {
		return searchDaoInter.top10Search();
	}
	
	@Override
	public List<ProductVO> srchResProList(String key) {
		return searchDaoInter.getSrchProList(key);
	}

	@Override
	public List<QuestionVO> srchResQueList(String key) {
		return searchDaoInter.getSrchQueList(key);
	}

	@Override
	public List<HousewarmingVO> srchResHouList(String key) {
		return searchDaoInter.getSrchHouList(key);
	}
	
}
