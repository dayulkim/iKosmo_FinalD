package kr.co.kosmo.mvc.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.vo.InterestVO;
import kr.co.kosmo.mvc.vo.ProductVO;

@Repository
public class ProductDao implements ProductDaoInter { // 김다율
	@Autowired
	private SqlSessionTemplate ss;

//	스토어  버튼
	@Override
	public List<ProductVO> productList() {
		return ss.selectList("product.bestlist");
	}

//	특정 카테고리 클릭시
	@Override
	public List<ProductVO> productList2(String category) {
		System.out.println("Dao 에서 카테고리 : " + category);
		return ss.selectList("product.themelist", category);
	}

//	특정 순서로 정렬 클릭시
	@Override
	public List<ProductVO> productOrder(String way, String merit, String category) {
		System.out.println("Dao 에서 정렬기준 : " + way);
		Map<String, String> map = new HashMap<>();
		map.put("way", way);
		map.put("merit", merit);
		map.put("category", category);
		return ss.selectList("product.orderlist", map);
	}

// 상품 총 갯수	
	@Override
	public String totalProduct() {
		return ss.selectOne("product.totalProduct");
	}
	
// 스크랩 총 갯수	
	@Override
	public String totalScrap(String sid) {
		System.out.println("아이디 : " + sid);
		return ss.selectOne("product.totalScrap",sid);
	}	
		
// 카트 총 갯수	
	@Override
	public String totalCart(String sid) {
		System.out.println("아이디 : " + sid);
		return ss.selectOne("product.totalCart",sid);
	}	
	
	
// 가격 범위로 불러오기
	@Override
	public List<ProductVO> priceList(String range) {
		System.out.println("Dao 에서 가격범주 : " + range);
		return ss.selectList("product.pricerange", range);
	}
	
// 최근 조회상품 불러오기 
	@Override
	public List<InterestVO> myProduct(String sid) {
		System.out.println("아이디 : " + sid);
		return ss.selectList("product.myclick",sid);
	}
	
// 최다 클릭상품 불러오기 
	@Override
	public List<InterestVO> theirProduct() {
		return ss.selectList("product.theirclick");
	}
	
// 상품 상세보기 페이지
	@Override
	public ProductVO productDetail(int pro_num) {
		System.out.println("Dao 에서 상품번호 : " + pro_num);
		return ss.selectOne("product.productdetail", pro_num);
	}
	
// 디테일에서 상품 별점 불러오기
	@Override
	public String productStar(int pro_num) {
		System.out.println("Dao 에서 상품번호 : " + pro_num);
		return ss.selectOne("product.productstar", pro_num);
	}
	

}
