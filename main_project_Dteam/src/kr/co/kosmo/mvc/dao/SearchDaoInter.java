package kr.co.kosmo.mvc.dao;

import java.util.List;
import java.util.Map;

import kr.co.kosmo.mvc.vo.SearchLogVO;

public interface SearchDaoInter {
	public List<SearchLogVO> top10Search();
}