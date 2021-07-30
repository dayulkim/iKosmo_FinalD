package kr.co.kosmo.mvc.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.kosmo.mvc.dao.ReviewDao;
import kr.co.kosmo.mvc.service.ReviewServiceInter;
import kr.co.kosmo.mvc.vo.PageVO;
import kr.co.kosmo.mvc.vo.ReviewVO;

@Controller
public class ReviewController {
	
	@RequestMapping("/reviewForm")
	public String reviewForm(Model m) {
		System.out.println("¸®ºäÆû");
		return "review/reviewform";
	}

}

