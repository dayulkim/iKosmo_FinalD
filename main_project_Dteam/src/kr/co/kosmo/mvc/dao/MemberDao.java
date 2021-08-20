package kr.co.kosmo.mvc.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.vo.MemberVO;

@Repository
public class MemberDao implements MemberDaoInter { // ������

	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public void addmember(MemberVO vo) {
		System.out.println("ȸ������ �õ�");
		ss.insert("member.in", vo);
		System.out.println("ȸ������ ����");
	}

	@Override
	public int idchk(String id) {
		System.out.println("���̵� �ߺ�Ȯ��");
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
	// �輼�� : ����������, ģ����Ͽ��� ���Ǵ� �ڵ� --------------------------
	@Override
	public MemberVO getMemberInfo(int mem_num) {
		return ss.selectOne("member.getMemberName", mem_num);
	}
	// �輼�� : ����������, ȸ������ ����
	@Override
	public void updateOne(MemberVO memvo) {
		ss.update("member.memUpdate", memvo);
	}
	
	
	

}
