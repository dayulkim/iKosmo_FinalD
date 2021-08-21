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
	private ProductServiceInter productServiceInter;
	@Autowired
	private Scrap_ProductServiceInter scrap_ProductServiceInter;
	@Autowired
	private OrderListServiceInter orderListServiceInter;
	@Autowired
	private ReviewServiceInter reviewServiceInter;
	@RequestMapping("/")
	public String homepage(Model m) {

		List<ProductVO> prolist = prductDao.productList();
		m.addAttribute("prolist", prolist);

		// 카테고리별 추천상품 (재영)
//		for (int cs = 0; 5 > cs; cs++) {
//			List<Integer> orderRecommend = orderListServiceInter.ordRecommend(cs);
//			List<Integer> revRecommend = reviewServiceInter.revRecommend1(cs);
//			List<Integer> revStarRecommend = reviewServiceInter.revRecommend2(cs);
//			List<Integer> scr_proRecommend = scrap_ProductServiceInter.scrap_ProRecommend(cs);
//			List<int[]> result = orderRecommend.stream()
//					.flatMap(i -> revRecommend.stream()
//							.flatMap(j -> revStarRecommend.stream().flatMap(k -> scr_proRecommend.stream()
//									.filter(t -> !i.equals(j) && !i.equals(k) && !i.equals(t) && !j.equals(k)
//											&& !j.equals(t) && !k.equals(t))
//									.map(t -> new int[] { i, j, k, t }))))
//					.limit(1).collect(toList());
//			List<ProductVO> provo = new ArrayList<>();
//			int[] sendResult = result.get(0);
//			int sendResultLength = sendResult.length;
//
//			for (int i = 0; i < sendResultLength; i++) {
//				provo.add(productServiceInter.productDetail(sendResult[i]));
//			}
//			m.addAttribute("recommend" + cs, provo);
//		}

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

			// JSONArray로 변경

			m.addAttribute("list", arr.toJSONString(suggests));
		}
		return "main/suggest/suggest";
	}

	@GetMapping("/test")
	public String testMethod() {
		return "test/test";
	}
}
