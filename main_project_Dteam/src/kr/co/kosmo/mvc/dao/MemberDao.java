package kr.co.kosmo.mvc.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.vo.MemberVO;

@Repository
public class MemberDao implements MemberDaoInter { // 오원석

	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public void addmember(MemberVO vo) {
		System.out.println("회원가입 시도");
		ss.insert("member.in", vo);
		System.out.println("회원가입 성공");
	}

	@Override
	public int idchk(String id) {
		System.out.println("아이디 중복확인");
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

}
