package kr.co.kosmo.mvc.service;

import java.util.List;

import kr.co.kosmo.mvc.vo.ReviewVO;
import kr.co.kosmo.mvc.vo.SellerVO;

public interface ReviewServiceInter {
	
	public void addReview(ReviewVO revvo);
	public List<Integer> revRecommend(int recommend);
	public List<ReviewVO> reviewTab(int pro_num);
}
