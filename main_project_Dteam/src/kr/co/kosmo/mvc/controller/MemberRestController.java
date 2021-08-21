package kr.co.kosmo.mvc.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.co.kosmo.mvc.service.MemberServiceInter;
import kr.co.kosmo.mvc.vo.MemberVO;

@RestController
public class MemberRestController {
	
	@Autowired
	private MemberServiceInter memberServiceInter;
	@RequestMapping(value="/", method=RequestMethod.POST,produces="application/json; charset=euc-kr")
	public String updateOne(HttpSession session, HttpServletRequest request, MultipartFile mf,
			@RequestBody MemberVO memvo) throws Exception {
		String result = null;
		int mem_num = Integer.parseInt(session.getAttribute("sessionNum").toString());
		
		// 파일 업로드 처리
		if(mf.isEmpty()) {
			memvo.setMem_num(mem_num);
		}else {
			String mem_profile = memberServiceInter.copyAndGetFileName(request, mf);
			memvo.setMem_profile(mem_profile);
			memvo.setMem_num(mem_num);
		}	
		memberServiceInter.updateOne(memvo);

		result = "{\"result\":\"ok\"}";
		session.setAttribute("sessionNickname", memvo.getMem_nickname());
		
		return result;
	}

}
