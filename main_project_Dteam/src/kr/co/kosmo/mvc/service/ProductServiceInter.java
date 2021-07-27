package kr.co.kosmo.mvc.service;

import java.util.List;

import kr.co.kosmo.mvc.vo.InterestVO;
import kr.co.kosmo.mvc.vo.ProductVO;

public interface ProductServiceInter {
	
//	스토어  버튼
	public List<ProductVO> productList();
//	특정 카테고리 클릭시
	public List<ProductVO> productList2(String category);
//	특정 순서로 정렬 클릭시
	public List<ProductVO> productOrder(String way, String merit, String category);
// 상품 총 갯수	
	public String totalProduct();
// 가격 범위로 불러오기
	public List<ProductVO> priceList(String range);
// 스크랩 총 갯수	
	public String totalScrap(String sid);
// 카트 총 갯수	
	public String totalCart(String sid);	
// 최근 조회상품 불러오기 
	public List<InterestVO> myProduct(String sid);
// 최다 클릭상품 불러오기 
	public List<InterestVO> theirProduct();
// 상품 상세보기 페이지	
	public ProductVO productDetail(int pro_num);
// 디테일에서 상품 별점 불러오기
	public String productStar(int pro_num);
	
}
