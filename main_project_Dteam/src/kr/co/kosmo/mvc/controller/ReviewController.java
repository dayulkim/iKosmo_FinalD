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
		System.out.println(pvo.getPro_num());
		int total = reviewDao.getTotalReviewCount(pvo);

		pvo = new PageVO(total, nowPage, cntPerPage, pro_num, sortType1);
		System.out.println("소트"+pvo.getSortType1());
		System.out.println("넘버"+pvo.getPro_num());

		List<ReviewVO> list = reviewDao.getReviewList(pvo);
		m.addAttribute("paging", pvo);
		m.addAttribute("reviewList", list);

		return "store/review_list";
	}
	// http://localhost/main_project_Dteam/reviewList?pro_num=1

}

