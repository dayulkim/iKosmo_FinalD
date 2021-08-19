package kr.co.kosmo.mvc.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
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
import kr.co.kosmo.mvc.dao.MemberDaoInter;
import kr.co.kosmo.mvc.service.FriendsServiceInter;
import kr.co.kosmo.mvc.service.OrderListServiceInter;
import kr.co.kosmo.mvc.service.QuestionServiceInter;
import kr.co.kosmo.mvc.service.ReviewServiceInter;
import kr.co.kosmo.mvc.vo.CartVO;
import kr.co.kosmo.mvc.vo.FriendsVO;
import kr.co.kosmo.mvc.vo.MemberVO;
import kr.co.kosmo.mvc.vo.PurchaseVO;
import kr.co.kosmo.mvc.vo.QuestionVO;
import kr.co.kosmo.mvc.vo.ReviewVO;

@Controller
public class MemberController {

	@Autowired
	private MemberDaoInter memberDaoInter;
	@Autowired
	private ReviewServiceInter reviewServiceInter;
	@Autowired
	private CartDaoInter cartDaoInter;
	@Autowired // �ʿ��� ������Ʈ�� ������
	private OrderListServiceInter orderListServiceInter;
	@Autowired
	private FriendsServiceInter friendsServiceInter;

	// ȸ������ �������� �̵�
	@RequestMapping(value = "join")
	public String gojoin() {
		System.out.println("ȸ������ ������ �̵�");
		return "member/joinform";
	}

	// ȸ������ �õ�
	@PostMapping(value = "joinprocess")
	public String join(HttpServletRequest request, MemberVO vo) {
		System.out.println("�Է� ���� �̸� : " + request.getParameter("mem_name"));
		System.out.println("�Է� ���� ���̵� : " + request.getParameter("mem_id"));
		System.out.println("�Է� ���� ��й�ȣ : " + request.getParameter("mem_pwd"));
		System.out.println("�Է� ���� �г��� : " + request.getParameter("mem_nickname"));
		System.out.println("�Է¹��� ���� : " + request.getParameter("mem_birth"));
		System.out.println("�Է¹��� ���� : " + request.getParameter("mem_gender"));
		System.out.println("�Է� ���� ��ȭ��ȣ : " + request.getParameter("mem_tel"));
		System.out.println("�Է� ���� �ּ� : " + request.getParameter("mem_addr"));
		int birth_y = Integer.parseInt(request.getParameter("mem_birth").substring(0, 4));
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);
		int age = year - birth_y + 1;
		vo.setMem_age(age);
		memberDaoInter.addmember(vo);
		return "index";
	}

	// ȸ�����Խ� ���̵� �ߺ�Ȯ��
	@PostMapping(value = "/idchk")
	public String idchk(Model m, @RequestParam("mem_id") String id) {
		System.out.println("�Է¹��� ���̵� : " + id);
		int cnt = memberDaoInter.idchk(id);
		String msg = "�̹� ������� ���̵� �Դϴ�.";
		if (cnt == 0) {
			msg = "��� ������ ���̵� �Դϴ�.";
		}
		m.addAttribute("msg", msg);
		return "member/idchk";
	}

//	�ɹ����������� �̵�
	@RequestMapping("/reviewform")
	public String reivewForm(Model m) {

		return "member/form/reviewForm";
	}

//	�����μ�Ʈ
	@RequestMapping("/reviewinsert")
	public String reviewInsert(ReviewVO revo, HttpServletRequest request, MultipartFile mfile) {

		String r_path = request.getServletContext().getRealPath("/"); // �� �� ������
		String img_path = "resources\\uploadFile\\review";

		String oriFn = mfile.getOriginalFilename(); // ���ε��� ���� ���ϸ��� ������
		StringBuffer path = new StringBuffer();
		path.append(r_path).append(img_path).append("\\").append(oriFn);
		System.out.println("File FullPath: " + path);

		// -- ���� ����
		File f = new File(path.toString());
		try {
			mfile.transferTo(f); // �ӽ�����ҿ� �ִ� ������ File ��ü�� �ű��
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		revo.setRev_photo(oriFn);
		reviewServiceInter.addReview(revo);
		System.out.println("fileNames: " + oriFn);

		return "redirect:/mypage";
	}

	@RequestMapping(value = "mypage")
	public String mypage() {
		System.out.println("mypage �̵�");
		return "mypage/mypage";
	}

	@RequestMapping(value = "survey")
	public String survey() {
		System.out.println("survey �̵�");
		return "mypage/survey";
	}

	@RequestMapping(value = "cart")
	public String cart2(HttpSession session, Model m) {
		int mem_num = Integer.parseInt(session.getAttribute("sessionNum").toString());
		List<CartVO> list = cartDaoInter.getlist(mem_num);
		m.addAttribute("clist",list);
		return "mypage/cart";
	}

	@RequestMapping("/orders") // ������ ��ü �ֹ����� ���
	public ModelAndView orderList(HttpSession session) {
		System.out.println("��ü �ֹ����� ��Ʈ�ѷ� ����!");
		int mem_session = Integer.parseInt(session.getAttribute("sessionNum").toString());
		ModelAndView mav = new ModelAndView();
		List<PurchaseVO> pchvo = orderListServiceInter.purList(mem_session);
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
	public String myqna() {
		System.out.println("myqna �̵�");
		return "mypage/myqna";
	}

	@RequestMapping(value = "scrapbook")
	public String scrapbook() {
		System.out.println("scrapbook �̵�");
		return "mypage/scrapbook";
	}
}
