package kr.co.kosmo.mvc.dao;

import kr.co.kosmo.mvc.vo.MemberVO;

public interface MemberDaoInter { // ������
	
	public void addmember(MemberVO vo);

	public int idchk(String id);
	
	// ȫ���� (�����̿��� ���Ǵ� �κ�) ----------------------------------------
	public String getMemberID(int mem_num);
	public String getMemberProfile(int mem_num);
	// �輼�� (���������� ģ����Ͽ��� ���)
	public MemberVO getMemberInfo(int mem_num);
	// �輼�� (���������� ȸ������ ����)
	public void updateOne(MemberVO memvo);
}
