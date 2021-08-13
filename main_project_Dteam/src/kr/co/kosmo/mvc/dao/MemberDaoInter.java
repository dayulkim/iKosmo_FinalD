package kr.co.kosmo.mvc.dao;

import java.util.List;

import kr.co.kosmo.mvc.vo.HouseInfoVO;
import kr.co.kosmo.mvc.vo.MemberVO;

public interface MemberDaoInter { // 오원석
	
	public void addmember(MemberVO vo);

	public int idchk(String id);
	
	// 홍영의 (집들이에서 사용되는 부분) ----------------------------------------
	public String getMemberID(int mem_num);
	public String getMemberProfile(int mem_num);
	// 이재영 (멤버  집정보 받는 부분) ----------------------------------------
	public void addMemberHouseInfo(HouseInfoVO hinvo);
	public List<HouseInfoVO> getMemberHouseInfo(String mem_id);
	public void delMemberHouseInfo(int hinfo_num);
}
