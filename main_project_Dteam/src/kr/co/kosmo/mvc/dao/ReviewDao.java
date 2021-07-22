package kr.co.kosmo.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.vo.PageVO;
import kr.co.kosmo.mvc.vo.ReviewVO;

@Repository
public class ReviewDao {

	@Autowired
	private SqlSessionTemplate ss;

	// ��ǰ���� ���丮��Ʈ ���
//	public List<ReviewVO> getReviewList(int pro_num) {
//		return ss.selectList("review.reviewlist", pro_num);
//	}
	public int getTotalReviewCount(PageVO pvo) {
		System.out.println("����� �Դ�");
		return ss.selectOne("review.totalCnt", pvo);
	}

	public List<ReviewVO> getReviewList(PageVO pvo) {
		return ss.selectList("review.reviewList", pvo);
	}
}
