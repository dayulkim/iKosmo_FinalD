package kr.co.kosmo.mvc.dao;

import java.util.List;

import kr.co.kosmo.mvc.vo.ProductVO;
import kr.co.kosmo.mvc.vo.Scrap_ProductVO;

public interface Scrap_ProductDaoInter {
	
	public List<Integer> scrap_ProRecommend(int cateNum);
	public List<ProductVO> getproductlist();
	public void doscrap(Scrap_ProductVO vo);
	public int countscrap(Scrap_ProductVO vo);
	public void scrapdel(Scrap_ProductVO vo);

}
