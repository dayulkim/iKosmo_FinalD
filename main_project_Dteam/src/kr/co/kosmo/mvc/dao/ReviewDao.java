package kr.co.kosmo.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.vo.PageVO;
import kr.co.kosmo.mvc.vo.ReviewVO;
import kr.co.kosmo.mvc.vo.SellerVO;

@Repository
public class ReviewDao implements ReviewDaoInter { // 이재영

	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public int getTotalReviewCount(PageVO pvo) {
		System.out.println("여기는 왔다");
		return ss.selectOne("review.totalCnt", pvo);
	}

	@Override
	public List<ReviewVO> getReviewList(PageVO pvo) {
		return ss.selectList("review.reviewList", pvo);
	}

	@Override
	public void addReview(ReviewVO revvo) {
		ss.insert("review.addReview", revvo);
	}

	@Override
	public List<Integer> revRecommend1(int cateNum) {
		return ss.selectList("review.revRecommend1", cateNum);
	}
	@Override
	public List<Integer> revRecommend2(int cateNum) {
		return ss.selectList("review.revRecommend2",cateNum);
	}
	// 상세보기 리뷰탭2
	@Override
	public List<ReviewVO> reviewTab(int pro_num) {
		return ss.selectList("review.reviewTab", pro_num);
	}

}
