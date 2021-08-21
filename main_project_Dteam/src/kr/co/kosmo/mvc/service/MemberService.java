package kr.co.kosmo.mvc.service;

import java.util.List;
import java.util.Optional;
import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
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
		
		hinvo.setHinfo_size(Optional.ofNullable(hinvo.getHinfo_size()).orElse("0"));
		hinvo.setHinfo_with(Optional.ofNullable(hinvo.getHinfo_with()).orElse("0"));
		hinvo.setHinfo_favour(Optional.ofNullable(hinvo.getHinfo_favour()).orElse("0"));
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
	
	// 회원정보 업데이트 프로필이미지 변경 시 파일복사&파일이름 반환하는 메서드
	@Override
	public String copyAndGetFileName(HttpServletRequest request, MultipartFile mf) {
		String filename = null;
		String r_path = request.getSession().getServletContext().getRealPath("/"); // 웹 상 절대경로
		String img_path = "resources\\uploadFile\\profile";
		filename = mf.getOriginalFilename();
		StringBuffer path = new StringBuffer();
		path.append(r_path).append(img_path).append("\\").append(filename);
		File file = new File(path.toString());
		try {
			mf.transferTo(file); 
		}catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		return filename;
	}
	@Override
	public void updateOne(MemberVO memvo) {
		memberDaoInter.updateOne(memvo);
	}

}
