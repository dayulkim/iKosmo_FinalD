package kr.co.kosmo.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.kosmo.mvc.dao.ReviewDao;
import kr.co.kosmo.mvc.service.ProductService;
import kr.co.kosmo.mvc.service.SellerService;
import kr.co.kosmo.mvc.vo.PageVO;
import kr.co.kosmo.mvc.vo.ProductVO;
import kr.co.kosmo.mvc.vo.ReviewVO;
import kr.co.kosmo.mvc.vo.SellerVO;

@Controller // 컨트롤러 클래스로 설정
public class ProductController { // 김다율
	
	@Autowired // 필요한 오브젝트를 인젝션
	private SellerService sellerService;

	@Autowired
	private ProductService productService;

	@Autowired
	private ReviewDao reviewDao;

	@RequestMapping("/productDetailMap") // 세연님 지도
	public ModelAndView productDetail(HttpServletRequest request) {
		int sel_num = 1;
		// int sel_num = Integer.parseInt(request.getParameter("sel_num")); // null 처리
		// 추가로 해야 함
		ModelAndView mav = new ModelAndView();
		SellerVO vo = sellerService.getSellerOne(sel_num);
		mav.addObject("selvo", vo);
		mav.setViewName("store/product_detail_s"); // jsp의 위치 주소,,.
		return mav;
		// http://localhost/main_project_Dteam/productDetailMap
	}

	@RequestMapping("/productDetail") // 다율 상세페이지
	public ModelAndView productDetailPage(
			@RequestParam(value = "nowPage", required = false, defaultValue = "1") int nowPage,
			@RequestParam(value = "cntPerPage", required = false, defaultValue = "5") int cntPerPage,
			@RequestParam(value = "pro_num", required = false) int pro_num,
			@RequestParam(value = "sortType1", required = false, defaultValue = "0", name = "sortType1") int sortType1,
			PageVO pvo) {

		ModelAndView mav = new ModelAndView();
		ProductVO provo = productService.getProductOne(pro_num);
		pvo.setPro_num(pro_num);
		int total = reviewDao.getTotalReviewCount(pvo);

		pvo = new PageVO(total, nowPage, cntPerPage, pro_num, sortType1);
		System.out.println("소트" + pvo.getSortType1());
		System.out.println("넘버" + pvo.getPro_num());
		System.out.println("nowPage" + pvo.getNowPage());
		System.out.println("cntPerPage" + pvo.getCntPerPage());
		List<ReviewVO> list = reviewDao.getReviewList(pvo);
		mav.addObject("paging", pvo);
		mav.addObject("reviewList", list);
		mav.addObject("provo", provo);
		mav.setViewName("store/product_detail"); // view 이름을 리턴. (jsp 위치)

		return mav;
		// http://localhost/main_project_Dteam/productDetail?pro_num=1
	}
}
