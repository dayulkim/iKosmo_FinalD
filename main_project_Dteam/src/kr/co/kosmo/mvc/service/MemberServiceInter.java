package kr.co.kosmo.mvc.service;

import java.util.List;
import java.util.Map;

import kr.co.kosmo.mvc.vo.HouseInfoVO;
import kr.co.kosmo.mvc.vo.MemberVO;

public interface MemberServiceInter {
	// ���翵 (���  ������ �޴� �κ�c r d) ������Ʈ ���� ----------------------------------------
	public void addMemberHouseInfo(HouseInfoVO hinvo);
	public List<HouseInfoVO> getMemberHouseInfo(String mem_id);
	public void delMemberHouseInfo(int hinfo_num);
	// ���翵 (���  ������ �޴� �κ�) ----------------------------------------
	public void addmember(MemberVO vo);

	public int idchk(String id);
	
	// ȫ���� (�����̿��� ���Ǵ� �κ�) ----------------------------------------
	public String getMemberID(int mem_num);
	public String getMemberProfile(int mem_num);
	

}
