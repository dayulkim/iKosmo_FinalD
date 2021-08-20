package kr.co.kosmo.mvc.dao;

import java.util.List;

import kr.co.kosmo.mvc.vo.PageVO;
import kr.co.kosmo.mvc.vo.ReviewVO;
import kr.co.kosmo.mvc.vo.SellerVO;

public interface ReviewDaoInter {

	public List<ReviewVO> getReviewList(PageVO pvo);

	public int getTotalReviewCount(PageVO pvo);

	public void addReview(ReviewVO revvo);
	
	public List<Integer> revRecommend1(int cateNum);
	public List<Integer> revRecommend2(int cateNum);
	// ªÛºº∫∏±‚ ∏Æ∫‰≈«2
	public List<ReviewVO> reviewTab(int pro_num);
}
