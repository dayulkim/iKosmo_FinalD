package kr.co.kosmo.mvc.service;

import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.co.kosmo.mvc.dao.MemberDaoInter;
import kr.co.kosmo.mvc.vo.HouseInfoVO;
import kr.co.kosmo.mvc.vo.MemberVO;

@Service
public class MemberService implements MemberServiceInter {
	@Autowired
	private MemberDaoInter memberDaoInter;

	// 이재영 (멤버 집정보 받는 부분) ----------------------------------------
	@Override
	public List<HouseInfoVO> getMemberHouseInfo(String mem_id) {
		return memberDaoInter.getMemberHouseInfo(mem_id);
	}
//재영 추가 집정보 널 예외시 핸들링
	@Override
	public void addMemberHouseInfo(HouseInfoVO hinvo) {
		hinvo.setMem_id("좽이");// 아이디테스트용 아이디연결후 삭제해야합니다
		hinvo.setHinfo_type(Optional.ofNullable(hinvo.getHinfo_type()).orElse("0"));
		hinvo.setHinfo_size(Optional.ofNullable(hinvo.getHinfo_size()).orElse("0"));
		hinvo.setHinfo_with(Optional.ofNullable(hinvo.getHinfo_with()).orElse("0"));
		hinvo.setHinfo_tend(Optional.ofNullable(hinvo.getHinfo_tend()).orElse("0"));
		hinvo.setHinfo_favour(Optional.ofNullable(hinvo.getHinfo_favour()).orElse("0"));
		hinvo.setHinfo_buytend(Optional.ofNullable(hinvo.getHinfo_buytend()).orElse("0"));
		hinvo.setHinfo_style(Optional.ofNullable(hinvo.getHinfo_style()).orElse("0"));
		hinvo.setHinfo_activity(Optional.ofNullable(hinvo.getHinfo_activity()).orElse("0"));
		memberDaoInter.addMemberHouseInfo(hinvo);
	}
//재영 집정도 삭제
	@Override
	public void delMemberHouseInfo(int hinfo_num) {
		memberDaoInter.delMemberHouseInfo(hinfo_num);

	}

	@Override
	public void addmember(MemberVO vo) {
		memberDaoInter.addmember(vo);

	}

	@Override
	public int idchk(String id) {
		return memberDaoInter.idchk(id);
	}

	@Override
	public String getMemberID(int mem_num) {
		return memberDaoInter.getMemberID(mem_num);
	}

	@Override
	public String getMemberProfile(int mem_num) {
		return memberDaoInter.getMemberProfile(mem_num);
	}

}
