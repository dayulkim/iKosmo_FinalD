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
import kr.co.kosmo.mvc.vo.ProductVO;

@Controller
public class DefaultController {
	
	@Autowired
	private ProductDao  prductDao;
	@Autowired
	private Suggest suggest;
	
	@RequestMapping("/")
	public String homepage(Model m) {
		
		List<ProductVO> prolist=prductDao.productList();
		m.addAttribute("prolist", prolist);
		for(ProductVO vo : prolist) {
			System.out.println(vo.getPro_name());
		}
		
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
			// JSONArray·Î º¯°æ
			System.out.println(arr.toJSONString(suggests));
			m.addAttribute("list", arr.toJSONString(suggests));
		}
		return "main/suggest/suggest";
	}
}
