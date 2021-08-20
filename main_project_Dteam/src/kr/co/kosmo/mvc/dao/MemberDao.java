package kr.co.kosmo.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.vo.HouseInfoVO;
import kr.co.kosmo.mvc.vo.MemberVO;

@Repository
public class MemberDao implements MemberDaoInter { // 오원석

	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public void addmember(MemberVO vo) {
		ss.insert("member.in", vo);
	}

	@Override
	public int idchk(String id) { // 아이디 중복확인
		return ss.selectOne("member.idchk", id);
	}

	// 홍영의 : 집들이 부분에서 사용되는 코드 ---------------------------------
	@Override
	public String getMemberID(int mem_num) {
		return ss.selectOne("member.getMemberID", mem_num);
	}

	@Override
	public String getMemberProfile(int mem_num) {
		return ss.selectOne("member.getMemberProfile", mem_num);
	}

	// 재영  : 회원 집 정보 받는 코드 ---------------------------------
	@Override
	public void addMemberHouseInfo(HouseInfoVO hinvo) {
		ss.insert("member.addMemberHouseInfo",hinvo);
	}
	// 재영  : 회원 집 정보 출력 코드 ---------------------------------
	@Override
	public List<HouseInfoVO> getMemberHouseInfo(String mem_id) {
		return ss.selectList("member.getMemberHouseInfo",mem_id);
	}
	@Override
	public void delMemberHouseInfo(int hinfo_num) {
		ss.delete("member.delMemberHouseInfo",hinfo_num);
	}

	// 김세연 : 마이페이지, 친구목록에서 사용되는 코드 --------------------------
	@Override
	public MemberVO getMemberInfo(int mem_num) {
		return ss.selectOne("member.getMemberName", mem_num);
	}
	
	// 정재윤 : 질문답변 프로필 사진 사용
	@Override
	public MemberVO getMemInfoById(String mem_id) {
		return ss.selectOne("member.getMemInfoId", mem_id);
	}



}
