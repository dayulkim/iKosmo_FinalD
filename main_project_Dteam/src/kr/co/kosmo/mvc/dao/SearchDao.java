package kr.co.kosmo.mvc.dao;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import kr.co.kosmo.mvc.vo.HousewarmingVO;
import kr.co.kosmo.mvc.vo.ProductVO;
import kr.co.kosmo.mvc.vo.QuestionVO;
import kr.co.kosmo.mvc.vo.SearchLogVO;

@Repository
public class SearchDao implements SearchDaoInter{
	
	@Autowired
	private SqlSessionTemplate ss;
	
	@Override
	public List<SearchLogVO> top10Search() {
		return ss.selectList("search.top10Search");
	}
	
	// �˻���� ��ǰ����Ʈ
	@Override
	public List<ProductVO> getSrchProList(String key) {
		return ss.selectList("search.productList", key);
	}
	// �˻���� ��������Ʈ
	@Override
	public List<QuestionVO> getSrchQueList(String key) {
		return ss.selectList("search.queList", key);
	}
	// �˻���� �����̸���Ʈ
	@Override
	public List<HousewarmingVO> getSrchHouList(String key) {
		return ss.selectList("search.houList", key);
	}
}
