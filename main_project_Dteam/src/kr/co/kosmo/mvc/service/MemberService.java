package kr.co.kosmo.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.kosmo.mvc.dao.MemberDaoInter;
import kr.co.kosmo.mvc.vo.MemberVO;

@Service
public class MemberService implements MemberServiceInter{
	
	@Autowired
	private MemberDaoInter memberDaoInter;

	@Override
	public void updateOne(MemberVO memvo) {
		memberDaoInter.updateOne(memvo);
	}

}
