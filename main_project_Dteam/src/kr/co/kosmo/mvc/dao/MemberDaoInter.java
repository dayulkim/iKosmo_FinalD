package kr.co.kosmo.mvc.dao;

import kr.co.kosmo.mvc.vo.MemberVO;

public interface MemberDaoInter { // 오원석
	
	public void addmember(MemberVO vo);

	public int idchk(String id);
	
	// 홍영의 (집들이에서 사용되는 부분) ----------------------------------------
	public String getMemberID(int mem_num);
	public String getMemberProfile(int mem_num);
	// 김세연 (마이페이지 친구목록에서 사용)
	public MemberVO getMemberInfo(int mem_num);
	// 김세연 (마이페이지 회원정보 수정)
	public void updateOne(MemberVO memvo);
}
