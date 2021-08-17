package kr.co.kosmo.mvc.dao;

import java.util.List;
import java.util.Map;

import kr.co.kosmo.mvc.vo.HousewarmingVO;
import kr.co.kosmo.mvc.vo.ProductVO;
import kr.co.kosmo.mvc.vo.QuestionVO;
import kr.co.kosmo.mvc.vo.SearchLogVO;

public interface SearchDaoInter {
	public List<SearchLogVO> top10Search();
	
	//김세연 검색결과 상품/질문/집들이
	public List<ProductVO> getSrchProList(String key);
	public List<QuestionVO> getSrchQueList(String key);
	public List<HousewarmingVO> getSrchHouList(String key);
}
