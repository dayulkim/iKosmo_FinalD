package kr.co.kosmo.mvc.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.kosmo.mvc.dao.ReviewDao;
import kr.co.kosmo.mvc.vo.PageVO;
import kr.co.kosmo.mvc.vo.ReviewVO;

@Controller
public class ReviewController {

	@Autowired
	private ReviewDao reviewDao;

	@RequestMapping("/reviewList")
	public String reviewList(Model m,
			@RequestParam(value = "nowPage", required = false, defaultValue = "1") int nowPage,
			@RequestParam(value = "cntPerPage", required = false, defaultValue = "5") int cntPerPage,
			@RequestParam(value = "pro_num", required = false) int pro_num, 		
			@RequestParam(value = "sortType1", required = false, defaultValue = "0") int sortType1,
			PageVO pvo) {

		pvo.setPro_num(pro_num);
		int total = reviewDao.getTotalReviewCount(pvo);

		pvo = new PageVO(total, nowPage, cntPerPage,pro_num, sortType1);
		System.out.println("¼ÒÆ®"+pvo.getSortType1());
		System.out.println("³Ñ¹ö"+pvo.getPro_num());
		System.out.println("nowPage"+pvo.getNowPage());
		System.out.println("cntPerPage"+pvo.getCntPerPage());
		List<ReviewVO> list = reviewDao.getReviewList(pvo);
		m.addAttribute("paging", pvo);
		m.addAttribute("reviewList", list);

		return "review/review_list";
	}
	
	@RequestMapping("/reviewForm")
	public String reviewForm(Model m) {
		System.out.println("¸®ºäÆû");
		
		
		return "review/reviewform";
	}

}

