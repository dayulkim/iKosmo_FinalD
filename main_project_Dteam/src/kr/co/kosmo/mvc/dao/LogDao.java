package kr.co.kosmo.mvc.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.vo.SearchLogVO;

@Repository
public class LogDao implements LogDaoInter{

	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public void insertSearchLog(SearchLogVO vo) {
		ss.insert("log.insertSearchLog", vo);
	}


}
