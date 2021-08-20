package kr.co.kosmo.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.vo.HouseInfoVO;
import kr.co.kosmo.mvc.vo.MemberVO;

@Repository
public class MemberDao implements MemberDaoInter { // ������

	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public void addmember(MemberVO vo) {
		ss.insert("member.in", vo);
	}

	@Override
	public int idchk(String id) { // ���̵� �ߺ�Ȯ��
		return ss.selectOne("member.idchk", id);
	}

	// ȫ���� : ������ �κп��� ���Ǵ� �ڵ� ---------------------------------
	@Override
	public String getMemberID(int mem_num) {
		return ss.selectOne("member.getMemberID", mem_num);
	}

	@Override
	public String getMemberProfile(int mem_num) {
		return ss.selectOne("member.getMemberProfile", mem_num);
	}

	// �翵  : ȸ�� �� ���� �޴� �ڵ� ---------------------------------
	@Override
	public void addMemberHouseInfo(HouseInfoVO hinvo) {
		ss.insert("member.addMemberHouseInfo",hinvo);
	}
	// �翵  : ȸ�� �� ���� ��� �ڵ� ---------------------------------
	@Override
	public List<HouseInfoVO> getMemberHouseInfo(String mem_id) {
		return ss.selectList("member.getMemberHouseInfo",mem_id);
	}
	@Override
	public void delMemberHouseInfo(int hinfo_num) {
		ss.delete("member.delMemberHouseInfo",hinfo_num);
	}

	// �輼�� : ����������, ģ����Ͽ��� ���Ǵ� �ڵ� --------------------------
	@Override
	public MemberVO getMemberInfo(int mem_num) {
		return ss.selectOne("member.getMemberName", mem_num);
	}
	
	// ������ : �����亯 ������ ���� ���
	@Override
	public MemberVO getMemInfoById(String mem_id) {
		return ss.selectOne("member.getMemInfoId", mem_id);
	}



}
