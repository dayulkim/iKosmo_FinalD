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

@Controller // 컨트롤러 클래스로 설정
public class ProductController { // 김다율

	@Autowired // 필요한 오브젝트를 인젝션
	private SellerService sellerService;

	@Autowired
	private ProductServiceInter productServiceInter;

	@Autowired
	private ReviewDao reviewDao;
	
	@Autowired
	private Scrap_ProductDaoInter scrap_ProductDaoInter;
	
	@Autowired
	private FriendsServiceInter friendsServiceInter;

	// ----신연아 시작--------
	// 메인화면의 스토어 버튼 클릭시 이동
	@RequestMapping("/store")
	public String highSold(HttpSession session, Model m) {
		// sessionID 존재
		if (session.getAttribute("sessionID") != null) {
			String sid = (String) session.getAttribute("sessionID");
			System.out.println("내 ID: " + sid);
			// 상품 총 갯수
			String total_num = productServiceInter.totalProduct();
			m.addAttribute("pro_total", total_num);
			System.out.println(total_num);
			// 상품 리스트
			List<ProductVO> list = productServiceInter.productList();
			m.addAttribute("list", list);
			// 스크랩 총 갯수
			String total_num2 = productServiceInter.totalScrap(sid);
			m.addAttribute("scrap_total", total_num2);
			// 카트 총 갯수
			String total_num3 = productServiceInter.totalCart(sid);
			m.addAttribute("cart_total", total_num3);
			// 최근 조회상품 불러오기 (사이드 배너)
			List<InterestVO> mylist = productServiceInter.myProduct(sid);
			m.addAttribute("my_list", mylist);
			// sessionID 존재 x
		} else {
			// 상품 총 갯수
			String total_num = productServiceInter.totalProduct();
			System.out.println(total_num);
			m.addAttribute("pro_total", total_num);
			// 상품 리스트
			List<ProductVO> list = productServiceInter.productList();
			System.out.println("상품 목록 :" + list);
			for (int i = 0; i < list.size(); i++) {
				System.out.println(list.get(i).getSel_name());
			}
			m.addAttribute("list", list);
			// 최다 클릭상품 불러오기 (사이드 배너)
			List<InterestVO> theirlist = productServiceInter.theirProduct();
			m.addAttribute("their_list", theirlist);
			System.out.println("최다클릭 리스트: " + theirlist);
		}
		return "store/product_list";
	}

	// 카테고리에서 특정 카테고리명 클릭시 이동
	@RequestMapping("/theme")
	public String latest(HttpSession session, Model m, String category) {
		System.out.println("카테고리: " + category);
		// sessionID 존재
		if (session.getAttribute("sessionID") != null) {
			String sid = (String) session.getAttribute("sessionID");
			System.out.println("내 ID: " + sid);
			// 상품 총 갯수
			String total_num = productServiceInter.totalProduct();
			m.addAttribute("pro_total", total_num);
			System.out.println(total_num);
			// 최신순으로 해당 카테고리의 상품 리스트 받아오기
			List<ProductVO> list = productServiceInter.productList2(category);
			System.out.println("상품 목록 :" + list);
			m.addAttribute("list", list);
			// 스크랩 총 갯수
			String total_num2 = productServiceInter.totalScrap(sid);
			m.addAttribute("scrap_total", total_num2);
			// 카트 총 갯수
			String total_num3 = productServiceInter.totalCart(sid);
			m.addAttribute("cart_total", total_num3);
			// 최근 조회상품 불러오기 (사이드 배너)
			List<InterestVO> mylist = productServiceInter.myProduct(sid);
			m.addAttribute("my_list", mylist);
			// sessionID 존재 x
		} else {
			// 상품 총 갯수
			String total_num = productServiceInter.totalProduct();
			System.out.println("총 상품 수" + total_num);
			m.addAttribute("pro_total", total_num);
			// 상품 리스트
			// 최신순으로 해당 카테고리의 상품 리스트 받아오기
			List<ProductVO> list = productServiceInter.productList2(category);
			System.out.println("상품 목록 :" + list);
			m.addAttribute("list", list);
			for (int i = 0; i < list.size(); i++) {
				System.out.println(list.get(i).getSel_name());
			}
			// 최다 클릭상품 불러오기 (사이드 배너)
			List<InterestVO> theirlist = productServiceInter.theirProduct();
			m.addAttribute("their_list", theirlist);
			System.out.println("최다클릭 리스트: " + theirlist);
		}
		return "store/product_list";
	}

	// 특정 정렬 기준 클릭시 이동
	@RequestMapping("/selection")
	public String orderList(HttpSession session, Model m, @RequestParam(value = "way") String way,
			@RequestParam(value = "merit") String merit, @RequestParam(value = "category") String category) {
		System.out.println("정렬기준: " + way);
		System.out.println("선택사항: " + merit);
		System.out.println("카테고리: " + category);

		// sessionID 존재
		if (session.getAttribute("sessionID") != null) {
			String sid = (String) session.getAttribute("sessionID");
			System.out.println("내 ID: " + sid);
			// 상품 총 갯수
			String total_num = productServiceInter.totalProduct();
			m.addAttribute("pro_total", total_num);
			System.out.println(total_num);
			// 해당 조건의 상품 리스트 받아오기
			List<ProductVO> list = productServiceInter.productOrder(way, merit, category);
			System.out.println("상품 목록 :" + list);
			m.addAttribute("list", list);
			// 스크랩 총 갯수
			String total_num2 = productServiceInter.totalScrap(sid);
			m.addAttribute("scrap_total", total_num2);
			// 카트 총 갯수
			String total_num3 = productServiceInter.totalCart(sid);
			m.addAttribute("cart_total", total_num3);
			// 최근 조회상품 불러오기 (사이드 배너)
			List<InterestVO> mylist = productServiceInter.myProduct(sid);
			m.addAttribute("my_list", mylist);
			// sessionID 존재 x
		} else {
			// 상품 총 갯수
			String total_num = productServiceInter.totalProduct();
			System.out.println("총 상품 수" + total_num);
			m.addAttribute("pro_total", total_num);
			// 상품 리스트
			List<ProductVO> list = productServiceInter.productOrder(way, merit, category);
			for (int i = 0; i < list.size(); i++) {
				System.out.println("옵션 선택 리스트" + list.get(i).getPro_name());
			}
			m.addAttribute("list", list);
			// 최다 클릭상품 불러오기 (사이드 배너)
			List<InterestVO> theirlist = productServiceInter.theirProduct();
			m.addAttribute("their_list", theirlist);
			System.out.println("최다클릭 리스트: " + theirlist);
		}
		return "store/product_list";
	}




	@RequestMapping("/scraplist")
	public String scrapList() {
		return "store/scraplist";
	}

	// 상품 디테일 페이지 -김다율, 신연아
	@RequestMapping("/detail")
	public String interest(Model m,
			@RequestParam(value = "nowPage", required = false, defaultValue = "1") int nowPage,
			@RequestParam(value = "cntPerPage", required = false, defaultValue = "5") int cntPerPage,
			@RequestParam(value = "pro_num", required = false) int pro_num,
			@RequestParam(value = "sortType1", required = false, defaultValue = "0", name = "sortType1") int sortType1,
			PageVO pvo, HttpServletRequest request) {

		// 해당 번호의 상품 정보 불러오기
		ProductVO provo = productServiceInter.productDetail(pro_num);
		m.addAttribute("provo", provo);
		System.out.println("상품명 :" + provo.getPro_name());
		System.out.println("상품명 :" + provo.getPro_photo());
		// 사진 리스트 불러오기
		String[] plist = provo.getPro_photo().split(",");
		m.addAttribute("plist", plist);
		// 상세정보 사진 리스트 불러오기
		String[] dlist = provo.getPro_detail().split(",");
		m.addAttribute("dlist", dlist);
		// 리뷰 평점 불러오기
		String st = productServiceInter.productStar(pro_num);
		m.addAttribute("pro_star", st);

		pvo.setPro_num(pro_num);
		int total = reviewDao.getTotalReviewCount(pvo);

		// 페이징처리
		pvo = new PageVO(total, nowPage, cntPerPage, pro_num, sortType1);
		System.out.println("소트" + pvo.getSortType1());
		System.out.println("넘버" + pvo.getPro_num());
		System.out.println("nowPage" + pvo.getNowPage());
		System.out.println("cntPerPage" + pvo.getCntPerPage());
		List<ReviewVO> list = reviewDao.getReviewList(pvo);

		// 판매자 정보: 카카오 지도 API
		//int sel_num = Integer.parseInt(request.getParameter(sel_num));
		SellerVO vo = sellerService.getSellerOne(provo.getSel_num());
		m.addAttribute("selvo", vo);

		m.addAttribute("provo", provo);
		m.addAttribute("paging", pvo);
		m.addAttribute("reviewList", list);

		return "store/product_detail";

	}
	// ----------상세보기 - 김다율, 신연아 끝----------------
	
	// 오원석 상품스크랩
	// 상품 스크랩
	@RequestMapping(value="/productscrap")
	public String productscrap(int pro_num, HttpSession session) {
		Scrap_ProductVO svo = new Scrap_ProductVO();
		int mem_num = (int) session.getAttribute("sessionNum");
		svo.setMem_num(mem_num);
		svo.setPro_num(pro_num);
		scrap_ProductDaoInter.doscrap(svo);
		return "redirect:/productform";
	}
	
	// 스크랩 여부 확인 (추후 상세페이지로 이동)
	@RequestMapping(value="/scrapchk")
	public ModelAndView scrapcheck(int pro_num, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		Scrap_ProductVO svo = new Scrap_ProductVO();
		int mem_num = (int) session.getAttribute("sessionNum");
		svo.setMem_num(mem_num);
		svo.setPro_num(pro_num);
		int num = scrap_ProductDaoInter.countscrap(svo);
		if (num == 1) {
			System.out.println("이미 스크랩이 되어있다! 삭제버튼이 보이게 설정해야함");
		} else {
			System.out.println("스크랩이 되어있지 않다! 스크랩버튼이 보이게 설정해야함");
		}
		mav.setViewName("redirect:/productform");
		return mav;
	}
	
	// 스크랩 삭제
	@RequestMapping(value="/scrapdel")
	public String scrapdel(int pro_num, HttpSession session) {
		int mem_num = (int) session.getAttribute("sessionNum");
		Scrap_ProductVO svo = new Scrap_ProductVO();
		svo.setMem_num(mem_num);
		svo.setPro_num(pro_num);
		scrap_ProductDaoInter.scrapdel(svo);
		return "redirect:/productform";
	}
	// 오원석 상품 스크랩 끝

}
