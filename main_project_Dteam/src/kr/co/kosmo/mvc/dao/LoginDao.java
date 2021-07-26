package kr.co.kosmo.mvc.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.vo.MemberVO;

@Repository
public class LoginDao implements LoginDaoInter { // ������

	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public MemberVO login(MemberVO vo) {
		System.out.println("�α��� �õ�");
		return ss.selectOne("member.login", vo);
	}

}
