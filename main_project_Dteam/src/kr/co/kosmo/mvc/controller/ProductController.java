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
	
	
	@RequestMapping("/productDetailMap") // ������ ����
	public ModelAndView productDetail(HttpServletRequest request) {
		int sel_num = 1;
		// int sel_num = Integer.parseInt(request.getParameter("sel_num")); // null ó�� �߰��� �ؾ� ��
		ModelAndView mav = new ModelAndView();
		SellerVO vo = sel_service.getSellerOne(sel_num);
		mav.addObject("selvo", vo);
		mav.setViewName("store/product_detail_s"); // jsp�� ��ġ �ּ�,,.
		return mav;
		// http://localhost/main_project_Dteam/productDetailMap
	}

	@RequestMapping("/productDetail") // ���� ��������
	public ModelAndView productDetailPage(HttpServletRequest request) {
		// int pro_num = 1;
		int pro_num = Integer.parseInt(request.getParameter("pro_num")); // null ó�� �߰��� �ؾ� ��
		ModelAndView mav = new ModelAndView();
		ProductVO provo = pro_service.getProductOne(pro_num);
		mav.addObject("provo", provo);
		mav.setViewName("store/product_detail_0717"); // jsp�� ��ġ �ּ�,,.
		// System.out.println(provo.getPro_name());
		return mav;
		// http://localhost/main_project_Dteam/productDetail
		// http://localhost/main_project_Dteam/productDetail?pro_num=1
	}
	

}
