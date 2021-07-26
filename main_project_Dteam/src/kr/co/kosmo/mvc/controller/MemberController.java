package kr.co.kosmo.mvc.controller;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.kosmo.mvc.dao.MemberDaoInter;
import kr.co.kosmo.mvc.vo.MemberVO;

@Controller
public class MemberController {
	
	@Autowired
	private MemberDaoInter memberDaoInter;
	
	// ȸ������ �������� �̵�
	@RequestMapping(value="join")
	public String gojoin() {
		System.out.println("ȸ������ ������ �̵�");
		return "member/joinform";
	}
	
	// ȸ������ �õ�
	@PostMapping(value="joinprocess")
	public String join(HttpServletRequest request, MemberVO vo) {
		System.out.println("�Է� ���� �̸� : " + request.getParameter("mem_name"));
		System.out.println("�Է� ���� ���̵� : " + request.getParameter("mem_id"));
		System.out.println("�Է� ���� ��й�ȣ : " + request.getParameter("mem_pwd"));
		System.out.println("�Է� ���� �г��� : " + request.getParameter("mem_nickname"));
		System.out.println("�Է¹��� ���� : " + request.getParameter("mem_birth"));
		System.out.println("�Է¹��� ���� : " + request.getParameter("mem_gender"));
		System.out.println("�Է� ���� ��ȭ��ȣ : " + request.getParameter("mem_tel"));
		System.out.println("�Է� ���� �ּ� : " + request.getParameter("mem_addr"));
		int birth_y = Integer.parseInt(request.getParameter("mem_birth").substring(0,4));
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);
		int age = year - birth_y + 1;
		vo.setMem_age(age);
		memberDaoInter.addmember(vo);
		return "index";
	}
	
	// ȸ�����Խ� ���̵� �ߺ�Ȯ��
	@PostMapping(value="/idchk")
	public String idchk(Model m, @RequestParam("mem_id") String id) {
		System.out.println("�Է¹��� ���̵� : " + id);
		int cnt = memberDaoInter.idchk(id);
		String msg ="�̹� ������� ���̵� �Դϴ�.";
		if(cnt == 0) {
			 msg ="��� ������ ���̵� �Դϴ�.";
		}
		m.addAttribute("msg", msg);
		return "member/idchk";
	}

}
