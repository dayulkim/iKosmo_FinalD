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
import kr.co.kosmo.mvc.dao.Scrap_ProductDaoInter;
import kr.co.kosmo.mvc.service.ProductServiceInter;
import kr.co.kosmo.mvc.service.ReviewServiceInter;
import kr.co.kosmo.mvc.service.SellerService;
import kr.co.kosmo.mvc.vo.AdminHitVO;
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
	private Scrap_ProductDaoInter scrap_ProductDaoInter;
	
	@Autowired
	private ReviewServiceInter reviewServiceInter;

	// ----�ſ��� ����--------
	// ����ȭ���� ����� ��ư Ŭ���� �̵�
	@RequestMapping("/store")
	public String highSold(HttpSession session, Model m) {
		// sessionID ����
		if (session.getAttribute("sessionID") != null) {
			String sid = (String) session.getAttribute("sessionID");
			// ��ǰ �� ����
			String total_num = productServiceInter.totalProduct();
			m.addAttribute("pro_total", total_num);
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
			List<AdminHitVO> mylist = productServiceInter.myProduct(sid);
			m.addAttribute("my_list", mylist);

			// sessionID ���� x
		} else {
			// ��ǰ �� ����
			String total_num = productServiceInter.totalProduct();
			m.addAttribute("pro_total", total_num);
			// ��ǰ ����Ʈ
			List<ProductVO> list = productServiceInter.productList();
			m.addAttribute("list", list);
			// �ִ� Ŭ����ǰ �ҷ����� (���̵� ���)
			List<AdminHitVO> theirlist = productServiceInter.theirProduct();
			m.addAttribute("their_list", theirlist);
		}
		return "store/product_list";
	}

	// ī�װ����� Ư�� ī�װ��� Ŭ���� �̵�
	@RequestMapping("/theme")
	public String latest(HttpSession session, Model m, String category) {
		// sessionID ����
		if (session.getAttribute("sessionID") != null) {
			String sid = (String) session.getAttribute("sessionID");
			// ��ǰ �� ����
			String total_num = productServiceInter.totalProduct();
			m.addAttribute("pro_total", total_num);
			// �ֽż����� �ش� ī�װ��� ��ǰ ����Ʈ �޾ƿ���
			List<ProductVO> list = productServiceInter.productList2(category);
			m.addAttribute("list", list);
			// ��ũ�� �� ����
			String total_num2 = productServiceInter.totalScrap(sid);
			m.addAttribute("scrap_total", total_num2);
			// īƮ �� ����
			String total_num3 = productServiceInter.totalCart(sid);
			m.addAttribute("cart_total", total_num3);
			// �ֱ� ��ȸ��ǰ �ҷ����� (���̵� ���)
			List<AdminHitVO> mylist = productServiceInter.myProduct(sid);
			m.addAttribute("my_list", mylist);
			// sessionID ���� x
		} else {
			// ��ǰ �� ����
			String total_num = productServiceInter.totalProduct();
			m.addAttribute("pro_total", total_num);
			// ��ǰ ����Ʈ
			// �ֽż����� �ش� ī�װ��� ��ǰ ����Ʈ �޾ƿ���
			List<ProductVO> list = productServiceInter.productList2(category);
			m.addAttribute("list", list);
			// �ִ� Ŭ����ǰ �ҷ����� (���̵� ���)
			List<AdminHitVO> theirlist = productServiceInter.theirProduct();
			m.addAttribute("their_list", theirlist);
		}
		return "store/product_list";
	}

	// Ư�� ���� ���� Ŭ���� �̵�
	@RequestMapping("/selection")
	public String orderList(HttpSession session, Model m, @RequestParam(value = "way") String way,
			@RequestParam(value = "merit") String merit, @RequestParam(value = "category") String category) {
		// sessionID ����
		if (session.getAttribute("sessionID") != null) {
			String sid = (String) session.getAttribute("sessionID");
			// ��ǰ �� ����
			String total_num = productServiceInter.totalProduct();
			m.addAttribute("pro_total", total_num);
			// �ش� ������ ��ǰ ����Ʈ �޾ƿ���
			List<ProductVO> list = productServiceInter.productOrder(way, merit, category);
			m.addAttribute("list", list);
			// ��ũ�� �� ����
			String total_num2 = productServiceInter.totalScrap(sid);
			m.addAttribute("scrap_total", total_num2);
			// īƮ �� ����
			String total_num3 = productServiceInter.totalCart(sid);
			m.addAttribute("cart_total", total_num3);
			// �ֱ� ��ȸ��ǰ �ҷ����� (���̵� ���)
			List<AdminHitVO> mylist = productServiceInter.myProduct(sid);
			m.addAttribute("my_list", mylist);
			// sessionID ���� x
		} else {
			// ��ǰ �� ����
			String total_num = productServiceInter.totalProduct();
			m.addAttribute("pro_total", total_num);
			// ��ǰ ����Ʈ
			List<ProductVO> list = productServiceInter.productOrder(way, merit, category);
			m.addAttribute("list", list);
			// �ִ� Ŭ����ǰ �ҷ����� (���̵� ���)
			List<AdminHitVO> theirlist = productServiceInter.theirProduct();
			m.addAttribute("their_list", theirlist);
		}
		return "store/product_list";
	}

	// ��ǰ ������ ������ -�����, �ſ���
	@RequestMapping("/detail")
	public String interest(Model m, 
			@RequestParam(value = "pro_num", required = false) int pro_num,
			HttpSession session,
			HttpServletRequest request) {

		// �ش� ��ȣ�� ��ǰ ���� �ҷ�����
		ProductVO provo = productServiceInter.productDetail(pro_num);
		m.addAttribute("provo", provo);
		// ���� ����Ʈ �ҷ�����
		String[] plist = provo.getPro_photo().split(",");
		m.addAttribute("plist", plist);
		// ������ ���� ����Ʈ �ҷ�����
		String[] dlist = provo.getPro_detail().split(",");
		m.addAttribute("dlist", dlist);
		// ���� ���� �ҷ�����
		long st = productServiceInter.productStar(pro_num);
		m.addAttribute("pro_star", st);
		//�翵�߰� 
		String checkJpg=provo.getPro_thumb();
		String checkImageForm;
		if (checkJpg.contains("https")) {
			checkImageForm="1";
		}else {
			checkImageForm="0";
		}
		m.addAttribute("checkImageForm",checkImageForm);
		// �Ǹ��� ����: īī�� ���� API
		// int sel_num = Integer.parseInt(request.getParameter(sel_num));
		SellerVO vo = sellerService.getSellerOne(provo.getSel_num());
		m.addAttribute("selvo", vo);
		
		// ������ 2
		List<ReviewVO> rlist = reviewServiceInter.reviewTab(pro_num);
		m.addAttribute("rList", rlist);

		return "store/product_detail";
	}
	// ----------�󼼺��� - �����, �ſ��� ��----------------

	// ������ ��ǰ��ũ��
	// ��ǰ ��ũ��
	@RequestMapping(value = "/productscrap")
	public String productscrap(int pro_num, HttpSession session) {
		Scrap_ProductVO svo = new Scrap_ProductVO();
		int mem_num = (int) session.getAttribute("sessionNum");
		svo.setMem_num(mem_num);
		svo.setPro_num(pro_num);
		scrap_ProductDaoInter.doscrap(svo);
		return "redirect:/productform";
	}

	// ��ũ�� ���� Ȯ�� (���� ���������� �̵�)
	@RequestMapping(value = "/scrapchk")
	public ModelAndView scrapcheck(int pro_num, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		Scrap_ProductVO svo = new Scrap_ProductVO();
		int mem_num = (int) session.getAttribute("sessionNum");
		svo.setMem_num(mem_num);
		svo.setPro_num(pro_num);
	
		mav.setViewName("redirect:/productform");
		return mav;
	}

	// ��ũ�� ����
	@RequestMapping(value = "/scrapdel")
	public String scrapdel(int pro_num, HttpSession session) {
		int mem_num = (int) session.getAttribute("sessionNum");
		Scrap_ProductVO svo = new Scrap_ProductVO();
		svo.setMem_num(mem_num);
		svo.setPro_num(pro_num);
		scrap_ProductDaoInter.scrapdel(svo);
		return "redirect:/productform";
	}

}
