package kr.co.kosmo.mvc.controller;

import static java.util.stream.Collectors.toList;

import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.kosmo.mvc.dao.ProductDao;
import kr.co.kosmo.mvc.domain.Suggest;
import kr.co.kosmo.mvc.service.OrderListServiceInter;
import kr.co.kosmo.mvc.service.ProductServiceInter;
import kr.co.kosmo.mvc.service.ReviewServiceInter;
import kr.co.kosmo.mvc.service.Scrap_ProductServiceInter;
import kr.co.kosmo.mvc.service.SearchServiceInter;
import kr.co.kosmo.mvc.vo.ProductVO;
import kr.co.kosmo.mvc.vo.SearchLogVO;

@Controller
public class DefaultController {

	@Autowired
	private ProductDao prductDao;
	@Autowired
	private Suggest suggest;
	@Autowired
	private SearchServiceInter searchServiceInter;
	@Autowired
	private OrderListServiceInter orderListServiceInter;
	@Autowired
	private ReviewServiceInter reviewServiceInter;
	@Autowired
	private ProductServiceInter productServiceInter;
	@Autowired
	private Scrap_ProductServiceInter scrap_ProductServiceInter;

	@RequestMapping("/")
	public String homepage(Model m) {

		List<ProductVO> prolist = prductDao.productList();
		m.addAttribute("prolist", prolist);
		for (ProductVO vo : prolist) {
			System.out.println(vo.getPro_name());
		}
		// 추천상품 (재영)
//		List<Integer> oderRecommend = orderListServiceInter.ordRecommend();
//		List<Integer> revRecommend = reviewServiceInter.revRecommend(0);
//		List<Integer> revStarRecommend = reviewServiceInter.revRecommend(1);
//		List<Integer> scr_proRecommend = scrap_ProductServiceInter.scrap_ProRecommend();
//
//		List<int[]> result = oderRecommend.stream()
//				.flatMap(i -> revRecommend.stream()
//						.flatMap(j -> revStarRecommend.stream()
//								.flatMap(k -> scr_proRecommend.stream()
//										.filter(t -> i != j && j != k && k != t && t != j && t != i && i != k)
//										.map(t -> new int[] { i, j, k, t }))))
//				.limit(1).collect(toList());
//		List<ProductVO> provo = new ArrayList<>();
//		int[] sendResult = result.get(0);
//
//		int sendResultLength = sendResult.length;
//
//		for (int i = 0; i < sendResultLength; i++) {
//			provo.add(productServiceInter.recommendPro(sendResult[i]));
//		}
//		
//		m.addAttribute("recommend", provo);

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
		for (String e : suggests) {
			System.out.println("컨트롤러" + e);
		}
		if (suggests != null) {
			JSONArray arr = new JSONArray();

			// JSONArray로 변경
			System.out.println(arr.toJSONString(suggests));
			m.addAttribute("list", arr.toJSONString(suggests));
		}
		return "main/suggest/suggest";
	}
}
