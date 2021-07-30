package kr.co.kosmo.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.kosmo.mvc.dao.ReviewDaoInter;
import kr.co.kosmo.mvc.vo.PageVO;
import kr.co.kosmo.mvc.vo.ReviewVO;

@Service
public class ReviewService implements ReviewServiceInter {
	@Autowired
	private ReviewDaoInter reviewDaoInter;


	public void addReview(ReviewVO revvo) {
		reviewDaoInter.addReview(revvo);
	}
	public List<Integer> revRecommend(int recommend) {
		return reviewDaoInter.revRecommend(recommend);
	}
}
