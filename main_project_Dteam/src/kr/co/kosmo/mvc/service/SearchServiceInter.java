package kr.co.kosmo.mvc.service;

import java.util.List;
import java.util.Map;

import kr.co.kosmo.mvc.vo.HousewarmingVO;
import kr.co.kosmo.mvc.vo.ProductVO;
import kr.co.kosmo.mvc.vo.QuestionVO;
import kr.co.kosmo.mvc.vo.SearchLogVO;

public interface SearchServiceInter {
	
	public List<SearchLogVO> top10Search();
	
	//�輼�� �˻���� ��ǰ/����/������
	public List<ProductVO> srchResProList(String key);
	public List<QuestionVO> srchResQueList(String key);
	public List<HousewarmingVO> srchResHouList(String key);
}
