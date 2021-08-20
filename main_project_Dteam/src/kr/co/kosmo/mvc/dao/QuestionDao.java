package kr.co.kosmo.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.vo.AnswerVO;
import kr.co.kosmo.mvc.vo.PageVO;
import kr.co.kosmo.mvc.vo.QuestionVO;

@Repository
public class QuestionDao implements QuestionDaoInter{

	
	@Autowired
	private SqlSessionTemplate ss;
	
	@Override
	public void addQuestion(QuestionVO quevo) {
		ss.insert("question.insertQuestion",quevo);
	}
	
	@Override
	public int totalQuestionList() {
		return ss.selectOne("question.questionTotal");
	}
	@Override
	public int totalMyQuestionList(String mem_id) {
		return ss.selectOne("question.myquestionTotal", mem_id);
	}
	
	@Override
	public List<QuestionVO> QuestionList(PageVO pvo) {
		return ss.selectList("question.questionList",pvo);
	}
	@Override
	public List<QuestionVO> MyQuestionList(PageVO pvo) {
		return ss.selectList("question.myquestionList",pvo);
	}
	
	@Override
	public QuestionVO getQuestionDetail(int que_num) {
		return ss.selectOne("question.questionDetail",que_num);
	}
	
	@Override
	public void addAnswer(AnswerVO ansvo) {
		ss.insert("question.insertAnswer", ansvo);
	}
	
	@Override
	public int totalAnswer(int que_num) {
		return ss.selectOne("question.answerTotal",que_num);
	}
	
	@Override
	public QuestionVO getQuestionDetail2(PageVO pvo) {
		QuestionVO quevo = ss.selectOne("question.questionDetail2", pvo);
		return quevo;
	}
	
	@Override
	public int totalSearchKeyword(String key) {
		return ss.selectOne("question.questionSearchKeyword", key);
	}
	@Override
	public int totalSearchTitle_Content(String key) {
		return ss.selectOne("question.questionSearchTitle_Content", key);
	}
	
	@Override
	public List<QuestionVO> SearchKeywordList(PageVO pvo) {
		return ss.selectList("question.questionSearchKeywordList",pvo);
	}
	@Override
	public List<QuestionVO> SearchTitle_Content(PageVO pvo) {
		return ss.selectList("question.questionSearchTitle_ContentList",pvo);
	}
	
	@Override
	public void questionHit(int que_num) {
		ss.update("question.questionHit", que_num);
	}
	
	@Override
	public void questionAns(int que_num) {
		ss.update("question.questionAns", que_num);
	}
	
	@Override
	public List<QuestionVO> NAQuestionList(PageVO pvo) {
		return ss.selectList("question.naquestionList", pvo);
	}
	
	@Override
	public int totalNAQuestionList() {
		return ss.selectOne("question.naquestionTotal");
	}
	
	
	@Override
	public int totalNaSearchKeyword(String key) {
		return ss.selectOne("question.naquestionSearchKeyword", key);
	}
	@Override
	public int totalNaSearchTitle_Content(String key) {
		return ss.selectOne("question.naquestionSearchTitle_Content", key);
	}
	
	@Override
	public List<QuestionVO> SearchNaKeywordList(PageVO pvo) {
		return ss.selectList("question.naquestionSearchKeywordList",pvo);
	}
	@Override
	public List<QuestionVO> SearchNaTitle_Content(PageVO pvo) {
		return ss.selectList("question.naquestionSearchTitle_ContentList",pvo);
	}
	
	@Override
	public List<AnswerVO> MyAnswerList(PageVO pvo) {
		return ss.selectList("question.myAnswerList",pvo);
	}
	
	@Override
	public int totalMyAnswer(String ans_id) {
		return ss.selectOne("question.myAnswerTotal", ans_id);
	}
}
