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
public class LoginController { // �α��� ��Ʈ�ѷ� ����
	
	// �۾� ������ ���ƽ��ϴ�.
	
	// Person A �۾� ����

	// Person B �۾�����

	
	@Autowired
	private LoginDaoInter loginDaoInter;
	
	// �α��������� �̵�
	@RequestMapping(value="/login")
	public String gologin() {
		System.out.println("�α��� ������ �̵�");
		return "login/loginform";
	}
	
	
	// �α���
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
				msg = "ȯ���մϴ�. " + mvo.getMem_nickname() + "��";
				response.getWriter().print(msg);
			} else if (mvo == null) {
				msg = "���̵� Ȥ�� ��й�ȣ�� �߸��Ǿ����ϴ�.";
				response.getWriter().print(msg);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	// �α׾ƿ�
	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("sessionID");
		session.removeAttribute("sessionNickname");
		return "redirect:/";
	}

}
