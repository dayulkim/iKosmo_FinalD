package kr.co.kosmo.mvc.dao;


import java.util.List;

import kr.co.kosmo.mvc.vo.QuestionLogVO;
import kr.co.kosmo.mvc.vo.QuestionWordCloudVO;

public interface QuestionLogDaoInter {

	public void insertSearchLog(QuestionLogVO quelogvo);
	public List<QuestionWordCloudVO> quesearchWordcloud();
	public List<QuestionWordCloudVO> suggestkeyword();
	public List<QuestionWordCloudVO> mysearchkeyword(String mem_id);
}
