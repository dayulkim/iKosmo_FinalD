package kr.co.kosmo.mvc.service;

import java.util.List;

import kr.co.kosmo.mvc.vo.ReviewVO;

public interface ReviewServiceInter {
	
	public void addReview(ReviewVO revvo);
	public List<Integer> revRecommend(int recommend);
	
}
