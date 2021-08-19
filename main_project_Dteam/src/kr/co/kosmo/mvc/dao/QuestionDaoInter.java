package kr.co.kosmo.mvc.dao;

import java.util.List;

import kr.co.kosmo.mvc.vo.AnswerVO;
import kr.co.kosmo.mvc.vo.PageVO;
import kr.co.kosmo.mvc.vo.QuestionVO;

public interface QuestionDaoInter {

	
	public void addQuestion(QuestionVO quevo);
	
	public int totalMyAnswer(String ans_id);
	public List<AnswerVO> MyAnswerList(PageVO pvo);
	
	public int totalQuestionList();
	public int totalMyQuestionList(String mem_id);
	
	public List<QuestionVO> QuestionList(PageVO pvo);
	public List<QuestionVO> MyQuestionList(PageVO pvo);
	
	public QuestionVO getQuestionDetail(int que_num);
	
	public void addAnswer(AnswerVO ansvo);
	
	public int totalAnswer(int que_num);
	
	public QuestionVO getQuestionDetail2(PageVO pvo);
	
	public int totalSearchKeyword(String key);
	public int totalSearchTitle_Content(String key);
	
	public List<QuestionVO> SearchKeywordList(PageVO pvo);
	public List<QuestionVO> SearchTitle_Content(PageVO pvo);
	
	public void questionHit(int que_num);
	public void questionAns(int que_num);
	
	public int totalNAQuestionList();
	public List<QuestionVO> NAQuestionList(PageVO pvo);
	
	public int totalNaSearchKeyword(String key);
	public int totalNaSearchTitle_Content(String key);
	
	public List<QuestionVO> SearchNaKeywordList(PageVO pvo);
	public List<QuestionVO> SearchNaTitle_Content(PageVO pvo);
}
