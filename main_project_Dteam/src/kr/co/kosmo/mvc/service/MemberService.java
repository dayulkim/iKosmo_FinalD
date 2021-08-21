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

	// ���翵 (��� ������ �޴� �κ�) ----------------------------------------
	@Override
	public List<HouseInfoVO> getMemberHouseInfo(String mem_id) {
		return memberDaoInter.getMemberHouseInfo(mem_id);
	}
	//�翵 �߰� ������ �� ���ܽ� �ڵ鸵
	@Override
	public void addMemberHouseInfo(HouseInfoVO hinvo) {
		
		hinvo.setHinfo_size(Optional.ofNullable(hinvo.getHinfo_size()).orElse("0"));
		hinvo.setHinfo_with(Optional.ofNullable(hinvo.getHinfo_with()).orElse("0"));
		hinvo.setHinfo_favour(Optional.ofNullable(hinvo.getHinfo_favour()).orElse("0"));
		hinvo.setHinfo_activity(Optional.ofNullable(hinvo.getHinfo_activity()).orElse("0"));
		memberDaoInter.addMemberHouseInfo(hinvo);
	}
//�翵 ������ ����
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
	
	// ȸ������ ������Ʈ �������̹��� ���� �� ���Ϻ���&�����̸� ��ȯ�ϴ� �޼���
	@Override
	public String copyAndGetFileName(HttpServletRequest request, MultipartFile mf) {
		String filename = null;
		String r_path = request.getSession().getServletContext().getRealPath("/"); // �� �� ������
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
