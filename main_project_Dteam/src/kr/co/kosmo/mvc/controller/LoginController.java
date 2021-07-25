package kr.co.kosmo.mvc.controller;

import java.io.IOException;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import kr.co.kosmo.mvc.dao.LoginDaoInter;
import kr.co.kosmo.mvc.vo.MemberVO;

@Controller
public class LoginController { // 로그인 컨트롤러 수정
	
	// 작업 내용을 합쳤습니다.
	
	// Person A 작업 내용

	// Person B 작업내용

	
	@Autowired
	private LoginDaoInter loginDaoInter;
	
	// 로그인페이지 이동
	@RequestMapping(value="/login")
	public String gologin() {
		System.out.println("로그인 폼으로 이동");
		return "login/loginform";
	}
	
	
	// 로그인
	@RequestMapping(value = "/loginprocess")
	@ResponseBody
	public void login(MemberVO vo, HttpSession session, HttpServletResponse response) {
		MemberVO mvo = loginDaoInter.login(vo);
		String msg = "";
		try {
			response.setContentType("text/html; charset=euc-kr");
			if (mvo != null) {
				session.setAttribute("sessionID", mvo.getMem_id());
				session.setAttribute("sessionNickname", mvo.getMem_nickname());
				msg = "환영합니다. " + mvo.getMem_nickname() + "님";
				response.getWriter().print(msg);
			} else if (mvo == null) {
				msg = "아이디 혹은 비밀번호가 잘못되었습니다.";
				response.getWriter().print(msg);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	// 로그아웃
	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("sessionID");
		session.removeAttribute("sessionNickname");
		return "redirect:/";
	}

}
