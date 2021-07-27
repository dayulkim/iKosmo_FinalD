package kr.co.kosmo.mvc.service;

import java.util.List;
import java.util.Map;

import kr.co.kosmo.mvc.vo.SearchLogVO;

public interface SearchServiceInter {
	
	public List<SearchLogVO> top10Search();
}
