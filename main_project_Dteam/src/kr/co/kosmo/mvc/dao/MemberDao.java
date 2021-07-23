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

}
