package kr.co.kosmo.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.kosmo.mvc.dao.ReviewDao;
import kr.co.kosmo.mvc.dao.Scrap_ProductDaoInter;
import kr.co.kosmo.mvc.service.FriendsServiceInter;
import kr.co.kosmo.mvc.service.ProductServiceInter;
import kr.co.kosmo.mvc.service.SellerService;
import kr.co.kosmo.mvc.vo.FriendsVO;
import kr.co.kosmo.mvc.vo.InterestVO;
import kr.co.kosmo.mvc.vo.PageVO;
import kr.co.kosmo.mvc.vo.ProductVO;
import kr.co.kosmo.mvc.vo.ReviewVO;
import kr.co.kosmo.mvc.vo.Scrap_ProductVO;
import kr.co.kosmo.mvc.vo.SellerVO;

@Controller // ��Ʈ�ѷ� Ŭ������ ����
public class ProductController { // �����

	@Autowired // �ʿ��� ������Ʈ�� ������
	private SellerService sellerService;

	@Autowired
	private ProductServiceInter productServiceInter;

	@Autowired
	private ReviewDao reviewDao;
	
	@Autowired
	private Scrap_ProductDaoInter scrap_ProductDaoInter;
	
	@Autowired
	private FriendsServiceInter friendsServiceInter;

	// ----�ſ��� ����--------
	// ����ȭ���� ����� ��ư Ŭ���� �̵�
	@RequestMapping("/store")
	public String highSold(HttpSession session, Model m) {
		// sessionID ����
		if (session.getAttribute("sessionID") != null) {
			String sid = (String) session.getAttribute("sessionID");
			System.out.println("�� ID: " + sid);
			// ��ǰ �� ����
			String total_num = productServiceInter.totalProduct();
			m.addAttribute("pro_total", total_num);
			System.out.println(total_num);
			// ��ǰ ����Ʈ
			List<ProductVO> list = productServiceInter.productList();
			m.addAttribute("list", list);
			// ��ũ�� �� ����
			String total_num2 = productServiceInter.totalScrap(sid);
			m.addAttribute("scrap_total", total_num2);
			// īƮ �� ����
			String total_num3 = productServiceInter.totalCart(sid);
			m.addAttribute("cart_total", total_num3);
			// �ֱ� ��ȸ��ǰ �ҷ����� (���̵� ���)
			List<InterestVO> mylist = productServiceInter.myProduct(sid);
			m.addAttribute("my_list", mylist);
			// sessionID ���� x
		} else {
			// ��ǰ �� ����
			String total_num = productServiceInter.totalProduct();
			System.out.println(total_num);
			m.addAttribute("pro_total", total_num);
			// ��ǰ ����Ʈ
			List<ProductVO> list = productServiceInter.productList();
			System.out.println("��ǰ ��� :" + list);
			for (int i = 0; i < list.size(); i++) {
				System.out.println(list.get(i).getSel_name());
			}
			m.addAttribute("list", list);
			// �ִ� Ŭ����ǰ �ҷ����� (���̵� ���)
			List<InterestVO> theirlist = productServiceInter.theirProduct();
			m.addAttribute("their_list", theirlist);
			System.out.println("�ִ�Ŭ�� ����Ʈ: " + theirlist);
		}
		return "store/product_list";
	}

	// ī�װ����� Ư�� ī�װ��� Ŭ���� �̵�
	@RequestMapping("/theme")
	public String latest(HttpSession session, Model m, String category) {
		System.out.println("ī�װ�: " + category);
		// sessionID ����
		if (session.getAttribute("sessionID") != null) {
			String sid = (String) session.getAttribute("sessionID");
			System.out.println("�� ID: " + sid);
			// ��ǰ �� ����
			String total_num = productServiceInter.totalProduct();
			m.addAttribute("pro_total", total_num);
			System.out.println(total_num);
			// �ֽż����� �ش� ī�װ��� ��ǰ ����Ʈ �޾ƿ���
			List<ProductVO> list = productServiceInter.productList2(category);
			System.out.println("��ǰ ��� :" + list);
			m.addAttribute("list", list);
			// ��ũ�� �� ����
			String total_num2 = productServiceInter.totalScrap(sid);
			m.addAttribute("scrap_total", total_num2);
			// īƮ �� ����
			String total_num3 = productServiceInter.totalCart(sid);
			m.addAttribute("cart_total", total_num3);
			// �ֱ� ��ȸ��ǰ �ҷ����� (���̵� ���)
			List<InterestVO> mylist = productServiceInter.myProduct(sid);
			m.addAttribute("my_list", mylist);
			// sessionID ���� x
		} else {
			// ��ǰ �� ����
			String total_num = productServiceInter.totalProduct();
			System.out.println("�� ��ǰ ��" + total_num);
			m.addAttribute("pro_total", total_num);
			// ��ǰ ����Ʈ
			// �ֽż����� �ش� ī�װ��� ��ǰ ����Ʈ �޾ƿ���
			List<ProductVO> list = productServiceInter.productList2(category);
			System.out.println("��ǰ ��� :" + list);
			m.addAttribute("list", list);
			for (int i = 0; i < list.size(); i++) {
				System.out.println(list.get(i).getSel_name());
			}
			// �ִ� Ŭ����ǰ �ҷ����� (���̵� ���)
			List<InterestVO> theirlist = productServiceInter.theirProduct();
			m.addAttribute("their_list", theirlist);
			System.out.println("�ִ�Ŭ�� ����Ʈ: " + theirlist);
		}
		return "store/product_list";
	}

	// Ư�� ���� ���� Ŭ���� �̵�
	@RequestMapping("/selection")
	public String orderList(HttpSession session, Model m, @RequestParam(value = "way") String way,
			@RequestParam(value = "merit") String merit, @RequestParam(value = "category") String category) {
		System.out.println("���ı���: " + way);
		System.out.println("���û���: " + merit);
		System.out.println("ī�װ�: " + category);

		// sessionID ����
		if (session.getAttribute("sessionID") != null) {
			String sid = (String) session.getAttribute("sessionID");
			System.out.println("�� ID: " + sid);
			// ��ǰ �� ����
			String total_num = productServiceInter.totalProduct();
			m.addAttribute("pro_total", total_num);
			System.out.println(total_num);
			// �ش� ������ ��ǰ ����Ʈ �޾ƿ���
			List<ProductVO> list = productServiceInter.productOrder(way, merit, category);
			System.out.println("��ǰ ��� :" + list);
			m.addAttribute("list", list);
			// ��ũ�� �� ����
			String total_num2 = productServiceInter.totalScrap(sid);
			m.addAttribute("scrap_total", total_num2);
			// īƮ �� ����
			String total_num3 = productServiceInter.totalCart(sid);
			m.addAttribute("cart_total", total_num3);
			// �ֱ� ��ȸ��ǰ �ҷ����� (���̵� ���)
			List<InterestVO> mylist = productServiceInter.myProduct(sid);
			m.addAttribute("my_list", mylist);
			// sessionID ���� x
		} else {
			// ��ǰ �� ����
			String total_num = productServiceInter.totalProduct();
			System.out.println("�� ��ǰ ��" + total_num);
			m.addAttribute("pro_total", total_num);
			// ��ǰ ����Ʈ
			List<ProductVO> list = productServiceInter.productOrder(way, merit, category);
			for (int i = 0; i < list.size(); i++) {
				System.out.println("�ɼ� ���� ����Ʈ" + list.get(i).getPro_name());
			}
			m.addAttribute("list", list);
			// �ִ� Ŭ����ǰ �ҷ����� (���̵� ���)
			List<InterestVO> theirlist = productServiceInter.theirProduct();
			m.addAttribute("their_list", theirlist);
			System.out.println("�ִ�Ŭ�� ����Ʈ: " + theirlist);
		}
		return "store/product_list";
	}




	@RequestMapping("/scraplist")
	public String scrapList() {
		return "store/scraplist";
	}

	// ��ǰ ������ ������ -�����, �ſ���
	@RequestMapping("/detail")
	public String interest(Model m,
			@RequestParam(value = "nowPage", required = false, defaultValue = "1") int nowPage,
			@RequestParam(value = "cntPerPage", required = false, defaultValue = "5") int cntPerPage,
			@RequestParam(value = "pro_num", required = false) int pro_num,
			@RequestParam(value = "sortType1", required = false, defaultValue = "0", name = "sortType1") int sortType1,
			PageVO pvo, HttpServletRequest request) {

		// �ش� ��ȣ�� ��ǰ ���� �ҷ�����
		ProductVO provo = productServiceInter.productDetail(pro_num);
		m.addAttribute("provo", provo);
		System.out.println("��ǰ�� :" + provo.getPro_name());
		System.out.println("��ǰ�� :" + provo.getPro_photo());
		// ���� ����Ʈ �ҷ�����
		String[] plist = provo.getPro_photo().split(",");
		m.addAttribute("plist", plist);
		// ������ ���� ����Ʈ �ҷ�����
		String[] dlist = provo.getPro_detail().split(",");
		m.addAttribute("dlist", dlist);
		// ���� ���� �ҷ�����
		String st = productServiceInter.productStar(pro_num);
		m.addAttribute("pro_star", st);

		pvo.setPro_num(pro_num);
		int total = reviewDao.getTotalReviewCount(pvo);

		// ����¡ó��
		pvo = new PageVO(total, nowPage, cntPerPage, pro_num, sortType1);
		System.out.println("��Ʈ" + pvo.getSortType1());
		System.out.println("�ѹ�" + pvo.getPro_num());
		System.out.println("nowPage" + pvo.getNowPage());
		System.out.println("cntPerPage" + pvo.getCntPerPage());
		List<ReviewVO> list = reviewDao.getReviewList(pvo);

		// �Ǹ��� ����: īī�� ���� API
		//int sel_num = Integer.parseInt(request.getParameter(sel_num));
		SellerVO vo = sellerService.getSellerOne(provo.getSel_num());
		m.addAttribute("selvo", vo);

		m.addAttribute("provo", provo);
		m.addAttribute("paging", pvo);
		m.addAttribute("reviewList", list);

		return "store/product_detail";

	}
	// ----------�󼼺��� - �����, �ſ��� ��----------------
	
	// ������ ��ǰ��ũ��
	// ��ǰ ��ũ��
	@RequestMapping(value="/productscrap")
	public String productscrap(int pro_num, HttpSession session) {
		Scrap_ProductVO svo = new Scrap_ProductVO();
		int mem_num = (int) session.getAttribute("sessionNum");
		svo.setMem_num(mem_num);
		svo.setPro_num(pro_num);
		scrap_ProductDaoInter.doscrap(svo);
		return "redirect:/productform";
	}
	
	// ��ũ�� ���� Ȯ�� (���� ���������� �̵�)
	@RequestMapping(value="/scrapchk")
	public ModelAndView scrapcheck(int pro_num, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		Scrap_ProductVO svo = new Scrap_ProductVO();
		int mem_num = (int) session.getAttribute("sessionNum");
		svo.setMem_num(mem_num);
		svo.setPro_num(pro_num);
		int num = scrap_ProductDaoInter.countscrap(svo);
		if (num == 1) {
			System.out.println("�̹� ��ũ���� �Ǿ��ִ�! ������ư�� ���̰� �����ؾ���");
		} else {
			System.out.println("��ũ���� �Ǿ����� �ʴ�! ��ũ����ư�� ���̰� �����ؾ���");
		}
		mav.setViewName("redirect:/productform");
		return mav;
	}
	
	// ��ũ�� ����
	@RequestMapping(value="/scrapdel")
	public String scrapdel(int pro_num, HttpSession session) {
		int mem_num = (int) session.getAttribute("sessionNum");
		Scrap_ProductVO svo = new Scrap_ProductVO();
		svo.setMem_num(mem_num);
		svo.setPro_num(pro_num);
		scrap_ProductDaoInter.scrapdel(svo);
		return "redirect:/productform";
	}
	// ������ ��ǰ ��ũ�� ��

}
