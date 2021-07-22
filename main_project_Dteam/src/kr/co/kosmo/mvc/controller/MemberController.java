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
	
	// 회원가입 페이지로 이동
	@RequestMapping(value="join")
	public String gojoin() {
		System.out.println("회원가입 페이지 이동");
		return "member/joinform";
	}
	
	// 회원가입 시도
	@PostMapping(value="joinprocess")
	public String join(HttpServletRequest request, MemberVO vo) {
		System.out.println("입력 받은 이름 : " + request.getParameter("mem_name"));
		System.out.println("입력 받은 아이디 : " + request.getParameter("mem_id"));
		System.out.println("입력 받은 비밀번호 : " + request.getParameter("mem_pwd"));
		System.out.println("입력 받은 닉네임 : " + request.getParameter("mem_nickname"));
		System.out.println("입력받은 생일 : " + request.getParameter("mem_birth"));
		System.out.println("입력받은 성별 : " + request.getParameter("mem_gender"));
		System.out.println("입력 받은 전화번호 : " + request.getParameter("mem_tel"));
		System.out.println("입력 받은 주소 : " + request.getParameter("mem_addr"));
		int birth_y = Integer.parseInt(request.getParameter("mem_birth").substring(0,4));
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);
		int age = year - birth_y + 1;
		vo.setMem_age(age);
		memberDaoInter.addmember(vo);
		return "index";
	}
	
	// 회원가입시 아이디 중복확인
	@PostMapping(value="/idchk")
	public String idchk(Model m, @RequestParam("mem_id") String id) {
		System.out.println("입력받은 아이디 : " + id);
		int cnt = memberDaoInter.idchk(id);
		String msg ="이미 사용중인 아이디 입니다.";
		if(cnt == 0) {
			 msg ="사용 가능한 아이디 입니다.";
		}
		m.addAttribute("msg", msg);
		return "member/idchk";
	}

}
