package kr.co.kosmo.mvc.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import kr.co.kosmo.mvc.vo.HouseInfoVO;
import kr.co.kosmo.mvc.vo.MemberVO;

public interface MemberServiceInter {
	// 이재영 (멤버  집정보 받는 부분c r d) 업데이트 없음 ----------------------------------------
	public void addMemberHouseInfo(HouseInfoVO hinvo);
	public List<HouseInfoVO> getMemberHouseInfo(String mem_id);
	public void delMemberHouseInfo(int hinfo_num);
	// 이재영 (멤버  집정보 받는 부분) ----------------------------------------
	public void addmember(MemberVO vo);

	public int idchk(String id);
	
	// 홍영의 (집들이에서 사용되는 부분) ----------------------------------------
	public String getMemberID(int mem_num);
	public String getMemberProfile(int mem_num);
	
	// 김세연 (회원정보 업데이트)
	public void updateOne(MemberVO memvo);
	// 김세연 회원정보 업데이트 & 이미지 복사
	public String copyAndGetFileName(HttpServletRequest request, MultipartFile mf);
}
