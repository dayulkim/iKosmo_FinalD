package kr.co.kosmo.mvc.dao;

import java.util.List;

import kr.co.kosmo.mvc.vo.PageVO;
import kr.co.kosmo.mvc.vo.ReviewVO;

public interface ReviewDaoInter {

	public List<ReviewVO> getReviewList(PageVO pvo);

	public int getTotalReviewCount(PageVO pvo);

	public void addReview(ReviewVO revvo);
	
	public List<Integer> revRecommend(int recommend);


}
