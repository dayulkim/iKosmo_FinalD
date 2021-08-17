package kr.co.kosmo.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.kosmo.mvc.dao.QuestionLogDaoInter;
import kr.co.kosmo.mvc.vo.QuestionLogVO;
import kr.co.kosmo.mvc.vo.QuestionWordCloudVO;

@Service
public class QuestionLogService implements QuestionLogServiceInter{

	@Autowired
	private QuestionLogDaoInter questionLogDaoInter;
	
	@Override
	public void insertSearchLog(QuestionLogVO quelogvo) {
		questionLogDaoInter.insertSearchLog(quelogvo);
	}
	
	@Override
	public List<QuestionWordCloudVO> quesearchWordcloud() {
		return questionLogDaoInter.quesearchWordcloud();
	}
	
	@Override
	public List<QuestionWordCloudVO> suggestkeyword() {
		return questionLogDaoInter.suggestkeyword();
	}
	
	@Override
	public List<QuestionWordCloudVO> mysearchkeyword(String mem_id) {
		return questionLogDaoInter.mysearchkeyword(mem_id);
	}
}
