package kr.co.kosmo.mvc.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import kr.co.kosmo.mvc.vo.AdminHitVO;
import kr.co.kosmo.mvc.vo.LogVO;
import kr.co.kosmo.mvc.vo.SearchLogVO;


public interface LogServiceInter {

	public void insertSearchLog(SearchLogVO vo);
	
	public void addlog(LogVO logvo);
	
	public void productHitLog(AdminHitVO vo);
   
}
