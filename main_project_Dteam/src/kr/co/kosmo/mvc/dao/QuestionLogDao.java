package kr.co.kosmo.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.vo.QuestionLogVO;
import kr.co.kosmo.mvc.vo.QuestionWordCloudVO;

@Repository
public class QuestionLogDao implements QuestionLogDaoInter{

	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public void insertSearchLog(QuestionLogVO quelogvo) {
		ss.insert("questionlog.insertSearchLog", quelogvo);
	}

	@Override
	public List<QuestionWordCloudVO> quesearchWordcloud() {
		return ss.selectList("questionlog.wordcloudlist");
	}
	
	@Override
	public List<QuestionWordCloudVO> suggestkeyword() {
		return ss.selectList("questionlog.suggestsearch");
	}

	@Override
	public List<QuestionWordCloudVO> mysearchkeyword(String mem_id) {
		return ss.selectList("questionlog.mysearch", mem_id);
	}
	
	
}
