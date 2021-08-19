package kr.co.kosmo.mvc.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.kosmo.mvc.dao.QuestionDao;
import kr.co.kosmo.mvc.vo.AnswerVO;
import kr.co.kosmo.mvc.vo.PageVO;
import kr.co.kosmo.mvc.vo.QuestionVO;

@Service
public class QuestionService implements QuestionServiceInter{
	
	@Autowired
	private QuestionDao questionDao;

	@Transactional
	public void addAnswer(AnswerVO ansvo, int que_num) {
		questionDao.addAnswer(ansvo);
		questionDao.questionAns(que_num);
	}
	
	@Override
	public void addQuestion(QuestionVO quevo) {
		questionDao.addQuestion(quevo);
	}
	
	@Override
	public List<AnswerVO> MyAnswerList(PageVO pvo) {
		return questionDao.MyAnswerList(pvo);
	}
	@Override
	public int totalMyAnswer(String ans_id) {
		return questionDao.totalMyAnswer(ans_id);
	}

	@Override
	public int totalQuestionList() {
		return questionDao.totalQuestionList();
	}

	@Override
	public int totalMyQuestionList(String mem_id) {
		return questionDao.totalMyQuestionList(mem_id);
	}

	@Override
	public List<QuestionVO> QuestionList(PageVO pvo) {
		return questionDao.QuestionList(pvo);
	}

	@Override
	public List<QuestionVO> MyQuestionList(PageVO pvo) {
		return questionDao.MyQuestionList(pvo);
	}

	@Override
	public QuestionVO getQuestionDetail(int que_num) {
		return questionDao.getQuestionDetail(que_num);
	}


	@Override
	public int totalAnswer(int que_num) {
		return questionDao.totalAnswer(que_num);
	}

	@Override
	public QuestionVO getQuestionDetail2(PageVO pvo) {
		return questionDao.getQuestionDetail2(pvo);
	}

	@Override
	public int totalSearchKeyword(String key) {
		return questionDao.totalSearchKeyword(key);
	}

	@Override
	public int totalSearchTitle_Content(String key) {
		return questionDao.totalSearchTitle_Content(key);
	}

	@Override
	public List<QuestionVO> SearchKeywordList(PageVO pvo) {
		return questionDao.SearchKeywordList(pvo);
	}

	@Override
	public List<QuestionVO> SearchTitle_Content(PageVO pvo) {
		return questionDao.SearchTitle_Content(pvo);
	}

	@Override
	public void questionHit(int que_num) {
		questionDao.questionHit(que_num);
	}
	
	@Override
	public List<QuestionVO> NAQuestionList(PageVO pvo) {
		return questionDao.NAQuestionList(pvo);
	}
	
	@Override
	public int totalNAQuestionList() {
		return questionDao.totalNAQuestionList();
	}
	
	@Override
	public int totalNaSearchKeyword(String key) {
		return questionDao.totalNaSearchKeyword(key);
	}
	@Override
	public int totalNaSearchTitle_Content(String key) {
		return questionDao.totalNaSearchTitle_Content(key);
	}
	
	@Override
	public List<QuestionVO> SearchNaKeywordList(PageVO pvo) {
		return questionDao.SearchNaKeywordList(pvo);
	}
	@Override
	public List<QuestionVO> SearchNaTitle_Content(PageVO pvo) {
		return questionDao.SearchNaTitle_Content(pvo);
	}
	
	@Override
	public List<String> imgList(List<QuestionVO> list) {
		List<String> imgList = new ArrayList<>();
		
		for (QuestionVO quevo : list) {
	         if (quevo.getQue_photo() != null) {
	            String[] arr = quevo.getQue_photo().split(",");
	            imgList.add(arr[0]); // 첫번째 이미지의 이름을 리스트에 저장
	         } else {
	            imgList.add("noImage");
	         }
	      }
		
		return imgList;
	}
}
