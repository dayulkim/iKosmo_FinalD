package kr.co.kosmo.mvc.dao;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import kr.co.kosmo.mvc.vo.ProductVO;
import kr.co.kosmo.mvc.vo.Scrap_ProductVO;

@Repository
public class Scrap_ProductDao implements Scrap_ProductDaoInter {
	@Autowired
	private SqlSessionTemplate ss;

	@Override

	public List<Integer> scrap_ProRecommend(int cateNum) {

		return ss.selectList("scarp_Product.recommend",cateNum);
	}
	
	@Override
	public List<ProductVO> getproductlist() { // ��ǰ����Ʈ
		return ss.selectList("scarp_Product.getlist");
	}

	@Override
	public void doscrap(Scrap_ProductVO vo) { // ��ǰ ��ũ��
		ss.insert("scarp_Product.scrap", vo);
	}
	
	@Override
	public int countscrap(Scrap_ProductVO vo) {
		return ss.selectOne("scarp_Product.scrapchk", vo);
	}
	
	@Override
	public void scrapdel(Scrap_ProductVO vo) { // ��ũ�� ����
		ss.delete("scarp_Product.scrapdel", vo);
	}

}
