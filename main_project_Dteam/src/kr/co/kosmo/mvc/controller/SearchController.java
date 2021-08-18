package kr.co.kosmo.mvc.controller;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.kosmo.mvc.service.SearchServiceInter;
import kr.co.kosmo.mvc.vo.HousewarmingVO;
import kr.co.kosmo.mvc.vo.ProductVO;
import kr.co.kosmo.mvc.vo.QuestionVO;

@Controller
public class SearchController {
	@Autowired
	private SearchServiceInter service;
	
	@RequestMapping("/srchRes")
	public ModelAndView getSrchList(String key, HttpSession session, HttpServletRequest request) throws UnsupportedEncodingException {
		ModelAndView mav = new ModelAndView();
		//각각의 검색결과를 vo객체에 담는다.
		List<ProductVO> proList = service.srchResProList(key);
		List<QuestionVO> queList = service.srchResQueList(key);
		List<HousewarmingVO> houList = service.srchResHouList(key);
		//검색결과수를 3개 리스트의 사이즈의 합으로 계산한다.
		int total = proList.size() + queList.size() + houList.size();
		//검색어 와 검색결과수 를 map에 담아준다.
		Map<String, String> map = new HashMap<>();
		map.put("key", key);
		map.put("total", String.valueOf(total));
		// jsp로 전달할 객체를 각각 ModelAndView에 담아준다.
		mav.addObject("proList", proList);
		mav.addObject("queList", queList);
		mav.addObject("houList", houList);
		mav.addObject("map", map);
		mav.setViewName("search/srchRes");
		return mav;
	}

}
