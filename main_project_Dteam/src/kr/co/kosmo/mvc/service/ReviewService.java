package kr.co.kosmo.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.kosmo.mvc.dao.ReviewDaoInter;
import kr.co.kosmo.mvc.vo.PageVO;
import kr.co.kosmo.mvc.vo.ReviewVO;
import kr.co.kosmo.mvc.vo.SellerVO;

@Service
public class ReviewService implements ReviewServiceInter {
	@Autowired
	private ReviewDaoInter reviewDaoInter;

	public void addReview(ReviewVO revvo) {
		reviewDaoInter.addReview(revvo);
	}

	public List<Integer> revRecommend1( int cateNum) {
		return reviewDaoInter.revRecommend1(cateNum);
	}

	public List<Integer> revRecommend2(int cateNum) {
		return reviewDaoInter.revRecommend2( cateNum);
	}

	@Override
	public List<ReviewVO> reviewTab(int pro_num) {
		return reviewDaoInter.reviewTab(pro_num);
	}
}
