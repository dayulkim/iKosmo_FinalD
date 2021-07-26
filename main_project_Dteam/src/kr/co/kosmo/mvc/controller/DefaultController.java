package kr.co.kosmo.mvc.controller;

import java.util.List;

import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.kosmo.mvc.dao.ProductDao;
import kr.co.kosmo.mvc.domain.Suggest;
import kr.co.kosmo.mvc.service.SearchServiceInter;
import kr.co.kosmo.mvc.vo.ProductVO;
import kr.co.kosmo.mvc.vo.SearchLogVO;

@Controller
public class DefaultController {
	
	@Autowired
	private ProductDao  prductDao;
	@Autowired
	private Suggest suggest;
	@Autowired
	private SearchServiceInter searchServiceInter;
	
	@RequestMapping("/")
	public String homepage(Model m) {
		
		List<ProductVO> prolist=prductDao.productList();
		m.addAttribute("prolist", prolist);
		for(ProductVO vo : prolist) {
			System.out.println(vo.getPro_name());
		}
		
		// 인기검색어 관련 (영의)
		List<SearchLogVO> top10Search = searchServiceInter.top10Search();
		m.addAttribute("top10Search", top10Search);
		
		return "main/index";
	}
	
//	@RequestMapping("/login")
//	public String login() {
//		return "member/login/login";
//	}
	

	
	@GetMapping("/suggest")
	public String suggestAction(Model m, String key) {
	

		List<String> suggests = suggest.getSuggest(key);

		if (suggests != null) {
			JSONArray arr = new JSONArray();
			System.out.println(arr);
			// JSONArray로 변경
			System.out.println(arr.toJSONString(suggests));
			m.addAttribute("list", arr.toJSONString(suggests));
		}
		return "main/suggest/suggest";
	}
}
