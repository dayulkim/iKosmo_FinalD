package kr.co.kosmo.mvc.controller;

import java.io.File;
import java.io.IOException;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import kr.co.kosmo.mvc.dao.MemberDaoInter;
import kr.co.kosmo.mvc.service.ReviewServiceInter;
import kr.co.kosmo.mvc.vo.MemberVO;
import kr.co.kosmo.mvc.vo.ReviewVO;

@Controller
public class MemberController {
	
	@Autowired
	private MemberDaoInter memberDaoInter;
	@Autowired
	private ReviewServiceInter reviewServiceInter;
	
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
	
//	맴버리뷰폼으로 이동
	@RequestMapping("/reviewform")
	public String reivewForm(Model m) {

		return "member/form/reviewForm";
	}
//	리뷰인서트
	@RequestMapping("/reviewinsert")
	public String reviewInsert(ReviewVO revo, HttpServletRequest request, MultipartFile mfile) {

		String r_path = request.getServletContext().getRealPath("/"); // 웹 상 절대경로
		String img_path = "resources\\uploadFile\\review";

		String oriFn = mfile.getOriginalFilename(); // 업로드할 때의 파일명을 가져옴
		StringBuffer path = new StringBuffer();
		path.append(r_path).append(img_path).append("\\").append(oriFn);
		System.out.println("File FullPath: " + path);

		// -- 파일 복사
		File f = new File(path.toString());
		try {
			mfile.transferTo(f); // 임시저장소에 있는 파일을 File 객체로 옮기기
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		revo.setRev_photo(oriFn);
		reviewServiceInter.addReview(revo);
		System.out.println("fileNames: " + oriFn);

		return "redirect:/mypage";
	}

}
