package kr.co.kosmo.mvc.dao;

import kr.co.kosmo.mvc.vo.MemberVO;

public interface MemberDaoInter { // ¿À¿ø¼®
	
	public void addmember(MemberVO vo);

	public int idchk(String id);
}
