package kr.co.kosmo.mvc.service;

import java.util.List;
import kr.co.kosmo.mvc.vo.Scrap_ProductVO;

public interface Scrap_ProductServiceInter {

	public List<Integer> scrap_ProRecommend(int cateNum);
	public List<Scrap_ProductVO> getproductlist(int mem_num);
	public void doscrap(Scrap_ProductVO vo);
	public int countscrap(Scrap_ProductVO vo);
	public void scrapdel(Scrap_ProductVO vo);
}
