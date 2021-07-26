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

@Controller // ��Ʈ�ѷ� Ŭ������ ����
public class ProductController { // �����
	
	@Autowired // �ʿ��� ������Ʈ�� ������
	private SellerService sellerService;

	@Autowired
	private ProductService productService;

	@Autowired
	private ReviewDao reviewDao;

	@RequestMapping("/productDetailMap") // ������ ����
	public ModelAndView productDetail(HttpServletRequest request) {
		int sel_num = 1;
		// int sel_num = Integer.parseInt(request.getParameter("sel_num")); // null ó��
		// �߰��� �ؾ� ��
		ModelAndView mav = new ModelAndView();
		SellerVO vo = sellerService.getSellerOne(sel_num);
		mav.addObject("selvo", vo);
		mav.setViewName("store/product_detail_s"); // jsp�� ��ġ �ּ�,,.
		return mav;
		// http://localhost/main_project_Dteam/productDetailMap
	}

	@RequestMapping("/productDetail") // ���� ��������
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
		System.out.println("��Ʈ" + pvo.getSortType1());
		System.out.println("�ѹ�" + pvo.getPro_num());
		System.out.println("nowPage" + pvo.getNowPage());
		System.out.println("cntPerPage" + pvo.getCntPerPage());
		List<ReviewVO> list = reviewDao.getReviewList(pvo);
		mav.addObject("paging", pvo);
		mav.addObject("reviewList", list);
		mav.addObject("provo", provo);
		mav.setViewName("store/product_detail"); // view �̸��� ����. (jsp ��ġ)

		return mav;
		// http://localhost/main_project_Dteam/productDetail?pro_num=1
	}
}
