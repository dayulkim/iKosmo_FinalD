package kr.co.kosmo.mvc.service;

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
}
