package kr.co.kosmo.mvc.service;

import java.util.List;

import kr.co.kosmo.mvc.vo.PageVO;
import kr.co.kosmo.mvc.vo.ReviewVO;
import kr.co.kosmo.mvc.vo.SellerVO;

public interface ReviewServiceInter {
	
	public void addReview(ReviewVO revvo);
	public int getTotalReviewCount(PageVO pvo);
	
	public List<Integer> revRecommend1(int cateNum);
	public List<Integer> revRecommend2(int cateNum);
	public List<ReviewVO> reviewTab(PageVO pvo);
}
