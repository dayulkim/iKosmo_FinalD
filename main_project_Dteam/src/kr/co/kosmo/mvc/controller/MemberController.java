package kr.co.kosmo.mvc.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Optional;

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
import kr.co.kosmo.mvc.service.QuestionServiceInter;
import kr.co.kosmo.mvc.service.ReviewServiceInter;
import kr.co.kosmo.mvc.vo.AnswerVO;
import kr.co.kosmo.mvc.vo.CartVO;
import kr.co.kosmo.mvc.vo.FriendsVO;

import kr.co.kosmo.mvc.vo.MemberVO;
import kr.co.kosmo.mvc.vo.PageVO;
import kr.co.kosmo.mvc.vo.PurchaseVO;
import kr.co.kosmo.mvc.vo.QuestionVO;

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
	@Autowired
	private QuestionServiceInter questionServiceInter;

	// 회원가입 페이지로 이동
	@RequestMapping(value = "join")
	public String gojoin() {
		System.out.println("회원가입 페이지 이동");
		return "member/joinform";
	}

	// 회원가입 시도
	@PostMapping(value = "joinprocess")
	public String join(HttpServletRequest request, MemberVO vo) {
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
		int cnt = memberServiceInter.idchk(id);
		String msg = "이미 사용중인 아이디 입니다.";
		if (cnt == 0) {
			msg = "사용 가능한 아이디 입니다.";
		}
		m.addAttribute("msg", msg);
		return "member/idchk";
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

		return "redirect:/orders";
	}

	@RequestMapping(value = "mypage")
	public String mypage(HttpSession session, Model m) {
		int mem_num = Integer.parseInt(session.getAttribute("sessionNum").toString());
		MemberVO memvo = friendsServiceInter.getMemberInfo(mem_num);
		m.addAttribute("memvo", memvo);
		return "mypage/mypage";
	}

	@RequestMapping(value = "survey")
	public String survey(HttpSession session, Model m) {
		// 회원정보
		int mem_num = Integer.parseInt(session.getAttribute("sessionNum").toString());
		MemberVO memvo = friendsServiceInter.getMemberInfo(mem_num);
		m.addAttribute("memvo", memvo);
		// 추가정보
		String mem_id = session.getAttribute("sessionID").toString();
		List<HouseInfoVO> house_Info = memberServiceInter.getMemberHouseInfo(mem_id);
		m.addAttribute("house_info", house_Info);

		return "mypage/survey";
	}

	@RequestMapping(value = "cart")
	public String cart2(HttpSession session, Model m) {
		int mem_num = Integer.parseInt(session.getAttribute("sessionNum").toString());
		List<CartVO> list = cartDaoInter.getlist(mem_num);
		m.addAttribute("clist", list);
		MemberVO memvo = friendsServiceInter.getMemberInfo(mem_num);
		m.addAttribute("memvo", memvo);
		return "mypage/cart";
	}

	@RequestMapping("/orders") // 개인의 전체 주문내역 출력
	public ModelAndView orderList(HttpSession session) {
		int mem_session = Integer.parseInt(session.getAttribute("sessionNum").toString());
		ModelAndView mav = new ModelAndView();
		List<PurchaseVO> pchvo = orderListServiceInter.purList(mem_session);
		int mem_num = Integer.parseInt(session.getAttribute("sessionNum").toString());
		MemberVO memvo = friendsServiceInter.getMemberInfo(mem_num);
		mav.addObject("memvo", memvo);
		mav.addObject("pchvo", pchvo);
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
	public ModelAndView myqna(@RequestParam(value = "nowPage", required = false, defaultValue = "1") String nowPage,
			@RequestParam(value = "cntPerPage", required = false, defaultValue = "10") String cntPerPage,
			@RequestParam(value = "ansnowPage", required = false, defaultValue = "1") String ansnowPage,
			@RequestParam(value = "anscntPerPage", required = false, defaultValue = "10") String anscntPerPage,
			HttpServletRequest request, PageVO pvo) {

		ModelAndView mav = new ModelAndView();
		List<QuestionVO> list;
		String searchType = request.getSession().getAttribute("sessionID").toString();
		int total = questionServiceInter.totalMyQuestionList(searchType);
		pvo = new PageVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), searchType);
		list = questionServiceInter.MyQuestionList(pvo);
		mav.addObject("paging", pvo);

		// 각각의 게시물에 대표이미지 하나씩만 추출하기 위함
		List<String> imgList = new ArrayList<>(); // 대표 이미지의 파일 이름을 담을 리스트
		for (QuestionVO quevo : list) {
			if (quevo.getQue_photo() != null) {
				String[] arr = quevo.getQue_photo().split(",");
				imgList.add(arr[0]); // 첫번째 이미지의 이름을 리스트에 저장
			} else {
				imgList.add("noImage");
			}
		}

		List<AnswerVO> anslist;
		total = questionServiceInter.totalMyAnswer(searchType);
		pvo = new PageVO(total, Integer.parseInt(ansnowPage), Integer.parseInt(anscntPerPage), searchType);
		mav.addObject("paging2", pvo);
		anslist = questionServiceInter.MyAnswerList(pvo);
		mav.addObject("anslist", anslist);

		List<String> tlist = new ArrayList<>();
		for (AnswerVO ansvo : anslist) {
			QuestionVO quevo = questionServiceInter.getQuestionDetail(ansvo.getQue_num());
			String que_title = quevo.getQue_title();
			tlist.add(que_title);
		}
		mav.addObject("tlist", tlist);

		int mem_num = Integer.parseInt(request.getSession().getAttribute("sessionNum").toString());
		MemberVO memvo = friendsServiceInter.getMemberInfo(mem_num);
		mav.addObject("memvo", memvo);

		// 모델에 PageVO 객체와 리스트 객체 담기
		mav.addObject("list", list);
		mav.addObject("imgList", imgList);
		mav.setViewName("mypage/myqna");
		return mav;
	}

	@RequestMapping(value = "scrapbook")
	public String scrapbook(HttpSession session, Model m) {
		int mem_num = Integer.parseInt(session.getAttribute("sessionNum").toString());
		MemberVO memvo = friendsServiceInter.getMemberInfo(mem_num);
		m.addAttribute("memvo", memvo);
		return "mypage/scrapbook";
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

	@RequestMapping("/mem_update")
	public String updateOne(HttpSession session, HttpServletRequest request, MemberVO memvo,
			@RequestParam("profile") MultipartFile mf) {
		int mem_num = Integer.parseInt(session.getAttribute("sessionNum").toString());
		// 파일 업로드 처리
		if (mf.isEmpty()) {
			memvo.setMem_num(mem_num);
		} else {
			String mem_profile = memberServiceInter.copyAndGetFileName(request, mf);
			memvo.setMem_profile(mem_profile);
			memvo.setMem_num(mem_num);
		}
		memberServiceInter.updateOne(memvo);
		session.setAttribute("sessionNickname", memvo.getMem_nickname());
		return "redirect:/mypage";
	}

}
