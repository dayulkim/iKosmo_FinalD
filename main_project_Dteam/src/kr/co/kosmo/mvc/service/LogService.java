package kr.co.kosmo.mvc.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.kosmo.mvc.dao.LogDaoInter;
import kr.co.kosmo.mvc.vo.AdminHitVO;
import kr.co.kosmo.mvc.vo.LogVO;
import kr.co.kosmo.mvc.vo.SearchLogVO;

@Service
public class LogService implements LogServiceInter {

	@Autowired
	private LogDaoInter logDaoInter;

	@Override
	public void insertSearchLog(SearchLogVO vo) {
		logDaoInter.insertSearchLog(vo);
	}

	@Override
	public void addlog(LogVO logvo) {
		logDaoInter.addlog(logvo);
	}

	@Override
	public void productHitLog(AdminHitVO vo) {
		logDaoInter.productHitLog(vo);
		
	}

	
}
