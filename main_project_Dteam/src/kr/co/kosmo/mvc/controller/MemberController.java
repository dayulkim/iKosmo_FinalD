package kr.co.kosmo.mvc.controller;

import java.io.File;
import java.io.IOException;

import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.co.kosmo.mvc.dao.CartDaoInter;

import kr.co.kosmo.mvc.service.MemberServiceInter;

import kr.co.kosmo.mvc.vo.HouseInfoVO;

import kr.co.kosmo.mvc.service.FriendsServiceInter;
import kr.co.kosmo.mvc.service.OrderListServiceInter;

import kr.co.kosmo.mvc.service.ReviewServiceInter;

import kr.co.kosmo.mvc.vo.FriendsVO;

import kr.co.kosmo.mvc.vo.MemberVO;
import kr.co.kosmo.mvc.vo.OrderListVO;
import kr.co.kosmo.mvc.vo.PageVO;

import kr.co.kosmo.mvc.vo.ReviewVO;

@Controller
public class MemberController {

	@Autowired
	private MemberServiceInter memberServiceInter;
	@Autowired
	private ReviewServiceInter reviewServiceInter;

	@Autowired
	private CartDaoInter cartDaoInter;
	@Autowired // 필요한 오브젝트를 인젝션
	private OrderListServiceInter orderListServiceInter;
	@Autowired
	private FriendsServiceInter friendsServiceInter;

	// 회원가입 페이지로 이동
	@RequestMapping(value = "join")
	public String gojoin() {
		System.out.println("회원가입 페이지 이동");
		return "member/joinform";
	}

	// 회원가입 시도
	@PostMapping(value = "joinprocess")
	public String join(HttpServletRequest request, MemberVO vo) {
		System.out.println("입력 받은 이름 : " + request.getParameter("mem_name"));
		System.out.println("입력 받은 아이디 : " + request.getParameter("mem_id"));
		System.out.println("입력 받은 비밀번호 : " + request.getParameter("mem_pwd"));
		System.out.println("입력 받은 닉네임 : " + request.getParameter("mem_nickname"));
		System.out.println("입력받은 생일 : " + request.getParameter("mem_birth"));
		System.out.println("입력받은 성별 : " + request.getParameter("mem_gender"));
		System.out.println("입력 받은 전화번호 : " + request.getParameter("mem_tel"));
		System.out.println("입력 받은 주소 : " + request.getParameter("mem_addr"));
		int birth_y = Integer.parseInt(request.getParameter("mem_birth").substring(0, 4));
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);
		int age = year - birth_y + 1;
		vo.setMem_age(age);
		memberServiceInter.addmember(vo);
		return "index";
	}

	// 회원가입시 아이디 중복확인
	@PostMapping(value = "/idchk")
	public String idchk(Model m, @RequestParam("mem_id") String id) {
		System.out.println("입력받은 아이디 : " + id);

		int cnt = memberServiceInter.idchk(id);

		String msg = "이미 사용중인 아이디 입니다.";
		if (cnt == 0) {
			msg = "사용 가능한 아이디 입니다.";
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
	public String reviewInsert(HttpSession session, HttpServletRequest request, MultipartFile mfile, ReviewVO revo) {

		int mem_num = Integer.parseInt(session.getAttribute("sessionNum").toString());
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
		revo.setMem_num(mem_num);
		revo.setRev_photo(oriFn);
		reviewServiceInter.addReview(revo);
		System.out.println("fileNames: " + oriFn);

		return "redirect:/orders";
	}

	@RequestMapping(value = "survey")
	public String survey(HttpSession session, Model m) {
		String mem_id = session.getAttribute("sessionID").toString();
		List<HouseInfoVO> house_Info = memberServiceInter.getMemberHouseInfo(mem_id);
		m.addAttribute("house_info", house_Info);

		System.out.println("survey 이동");
		return "mypage/survey";
	}

	@RequestMapping(value = "cart")
	public String cart2(HttpSession session, Model m) {
//		System.out.println("cart 이동");
//		int mem_num = Integer.parseInt(session.getAttribute("sessionNum").toString());
//		List<CartVO> list = cartDaoInter.getlist(mem_num);
//		m.addAttribute("clist",list);
		return "mypage/cart";
	}

	@RequestMapping("/orders") // 개인의 전체 주문내역 출력
	public ModelAndView orderList(@RequestParam(value = "nowPage", required = false, defaultValue = "1") String nowPage,
			@RequestParam(value = "cntPerPage", required = false, defaultValue = "10") String cntPerPage,
			HttpServletRequest request, PageVO pvo, HttpSession session) {
		System.out.println("전체 주문내역 컨트롤러 시작!");
		// int mem_num = 1;
		// int mem_num = Integer.parseInt(request.getParameter("mem_num"));
		int mem_session = (int) session.getAttribute("sessionNum");
		System.out.println("mem_session::::::::::::" + mem_session);
		ModelAndView mav = new ModelAndView();
		List<OrderListVO> ordvo = orderListServiceInter.orderList(mem_session);

		mav.addObject("ordvo", ordvo);
		mav.setViewName("mypage/orders");
		return mav;

	}

	@RequestMapping(value = "friends_queue")
	public String friends_queue(HttpSession session, Model m) {
		int mem_num = Integer.parseInt(session.getAttribute("sessionNum").toString());
		MemberVO memvo = friendsServiceInter.getMemberInfo(mem_num);
		List<FriendsVO> list = friendsServiceInter.getFriWtList(mem_num);
		m.addAttribute("memvo", memvo);
		m.addAttribute("frilist", list);
		return "mypage/friends_queue";
	}

	@RequestMapping(value = "friends_list")
	public String friends_list(HttpSession session, Model m) {
		int mem_num = Integer.parseInt(session.getAttribute("sessionNum").toString());
		MemberVO memvo = friendsServiceInter.getMemberInfo(mem_num);
		List<FriendsVO> list = friendsServiceInter.getFriednsList(mem_num);
		m.addAttribute("memvo", memvo);
		m.addAttribute("frilist", list);
		return "mypage/friends_list";
	}

	@RequestMapping(value = "myqna")
	public String myqna() {
		System.out.println("myqna 이동");
		return "mypage/myqna";
	}

	@RequestMapping(value = "scrapbook")
	public String scrapbook() {
		System.out.println("scrapbook 이동");
		return "mypage/scrapbook";
	}

	@RequestMapping("/mypage")
	public String myPage(Model m, HttpSession session) {
		int mem_num = Integer.parseInt(session.getAttribute("sessionNum").toString());
		System.out.println("sessionNum ::" + mem_num);
		List<FriendsVO> list = friendsServiceInter.getFriednsList(mem_num);
		// System.out.println("이름 ::"+list.get(0).getMemvo().getMem_name());
		m.addAttribute("frilist", list);
		List<FriendsVO> wtlist = friendsServiceInter.getFriWtList(mem_num);
		m.addAttribute("wtlist", wtlist);
		return "store/mypage";
	}
	@PostMapping("/houseinfoinsert")
	public String houseInfoInsert(HttpSession session, HouseInfoVO hinvo) {
		hinvo.setMem_id(session.getAttribute("sessionID").toString());
		memberServiceInter.addMemberHouseInfo(hinvo);
		return "redirect:/survey";
	}

	@RequestMapping("/houseinfo_del")
	public String houseinfoDel(int hinfo_num) {
		memberServiceInter.delMemberHouseInfo(hinfo_num);
		return "redirect:/survey";

	}

}
