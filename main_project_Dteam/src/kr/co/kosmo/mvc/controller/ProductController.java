package kr.co.kosmo.mvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.kosmo.mvc.service.ProductService;
import kr.co.kosmo.mvc.service.SellerService;
import kr.co.kosmo.mvc.vo.ProductVO;
import kr.co.kosmo.mvc.vo.SellerVO;

@Controller
public class ProductController {
	@Autowired
	private SellerService sel_service;
	
	@Autowired
	private ProductService pro_service;
	
	
	@RequestMapping("/productDetailMap") // 세연님 지도
	public ModelAndView productDetail(HttpServletRequest request) {
		int sel_num = 1;
		// int sel_num = Integer.parseInt(request.getParameter("sel_num")); // null 처리 추가로 해야 함
		ModelAndView mav = new ModelAndView();
		SellerVO vo = sel_service.getSellerOne(sel_num);
		mav.addObject("selvo", vo);
		mav.setViewName("store/product_detail_s"); // jsp의 위치 주소,,.
		return mav;
		// http://localhost/main_project_Dteam/productDetailMap
	}

	@RequestMapping("/productDetail") // 다율 상세페이지
	public ModelAndView productDetailPage(HttpServletRequest request) {
		// int pro_num = 1;
		int pro_num = Integer.parseInt(request.getParameter("pro_num")); // null 처리 추가로 해야 함
		ModelAndView mav = new ModelAndView();
		ProductVO provo = pro_service.getProductOne(pro_num);
		mav.addObject("provo", provo);
		mav.setViewName("store/product_detail_0717"); // jsp의 위치 주소,,.
		// System.out.println(provo.getPro_name());
		return mav;
		// http://localhost/main_project_Dteam/productDetail
		// http://localhost/main_project_Dteam/productDetail?pro_num=1
	}
	

}
