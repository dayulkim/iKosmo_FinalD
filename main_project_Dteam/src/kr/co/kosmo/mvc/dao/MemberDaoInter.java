package kr.co.kosmo.mvc.dao;

import kr.co.kosmo.mvc.vo.MemberVO;

public interface MemberDaoInter {
	public void addmember(MemberVO vo);
	public int idchk(String id);
}
