package kr.co.kosmo.mvc.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import kr.co.kosmo.mvc.vo.SearchLogVO;


public interface LogServiceInter {

	public void insertSearchLog(SearchLogVO vo);
	
}
