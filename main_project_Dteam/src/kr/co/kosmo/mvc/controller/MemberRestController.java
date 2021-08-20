package kr.co.kosmo.mvc.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import kr.co.kosmo.mvc.service.MemberServiceInter;
import kr.co.kosmo.mvc.vo.MemberVO;

@RestController
public class MemberRestController {
	
	@Autowired
	private MemberServiceInter memberServiceInter;
	@RequestMapping(value="/mem_update", method=RequestMethod.POST,produces="application/json; charset=euc-kr")
	public String updateOne(HttpSession session, 
			@RequestBody Map<String, Object> map) throws Exception {
		String result = null;
		int mem_num = Integer.parseInt(session.getAttribute("sessionNum").toString());
		MemberVO memvo = new MemberVO();
		memvo.setMem_num(mem_num);
		memvo.setMem_addr(map.get("mem_addr").toString());
		memvo.setMem_nickname(map.get("mem_nickname").toString());
		memvo.setMem_pwd(map.get("mem_pwd").toString());
		memvo.setMem_tel(map.get("mem_tel").toString());
		memvo.setMem_profile(map.get("mem_profile").toString());
		memberServiceInter.updateOne(memvo);
		result = "{\"result\":\"ok\"}";
		session.setAttribute("sessionNickname", memvo.getMem_nickname());
		System.out.println("rest 컨트롤러 성공!!");
		return result;
	}

}
