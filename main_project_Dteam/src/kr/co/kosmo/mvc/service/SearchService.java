package kr.co.kosmo.mvc.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.kosmo.mvc.dao.SearchDaoInter;
import kr.co.kosmo.mvc.vo.SearchLogVO;

@Service
public class SearchService implements SearchServiceInter{
	
	@Autowired
	private SearchDaoInter searchDaoInter;

	@Override
	public List<SearchLogVO> top10Search() {
		return searchDaoInter.top10Search();
	}
	
}
