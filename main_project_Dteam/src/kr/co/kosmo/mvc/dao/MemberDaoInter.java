package kr.co.kosmo.mvc.dao;

import java.util.List;

import kr.co.kosmo.mvc.vo.HouseInfoVO;
import kr.co.kosmo.mvc.vo.MemberVO;

public interface MemberDaoInter { // ������
	
	public void addmember(MemberVO vo);

	public int idchk(String id);
	
	// ȫ���� (�����̿��� ���Ǵ� �κ�) ----------------------------------------
	public String getMemberID(int mem_num);
	public String getMemberProfile(int mem_num);

	// ���翵 (���  ������ �޴� �κ�) ----------------------------------------
	public void addMemberHouseInfo(HouseInfoVO hinvo);
	public List<HouseInfoVO> getMemberHouseInfo(String mem_id);
	public void delMemberHouseInfo(int hinfo_num);

	// �輼�� (���������� ģ����Ͽ��� ���)
	public MemberVO getMemberInfo(int mem_num);

}
