package kr.co.kosmo.mvc.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import kr.co.kosmo.mvc.vo.QuestionLogVO;
import kr.co.kosmo.mvc.vo.QuestionWordCloudVO;

public interface QuestionLogServiceInter {

	public void insertSearchLog(QuestionLogVO quelogvo);
	public List<QuestionWordCloudVO> quesearchWordcloud();
	public List<QuestionWordCloudVO> suggestkeyword();
	public List<QuestionWordCloudVO> mysearchkeyword(String mem_id);
}
