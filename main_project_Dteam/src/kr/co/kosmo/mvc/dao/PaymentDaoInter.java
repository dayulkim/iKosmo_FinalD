package kr.co.kosmo.mvc.dao;

import java.util.List;

import kr.co.kosmo.mvc.vo.CartVO;
import kr.co.kosmo.mvc.vo.MemberVO;
import kr.co.kosmo.mvc.vo.OrderListVO;
import kr.co.kosmo.mvc.vo.ProductVO;
import kr.co.kosmo.mvc.vo.PurchaseVO;

public interface PaymentDaoInter {
   
   // 상세보기 페이지에서 구매버튼 눌렀을 때 결제 페이지에서 물품 출력
   public ProductVO detailConfirm(int pro_num);
   // 장바구니 페이지에서 구매버튼 눌렀을 때 결제 페이지에서 물품 리스트 출력
   public List<ProductVO> cartConfirm(int mem_num);
   // 로그인 세션 값으로 회원정보 불러오기
   public MemberVO memberInfo(int mem_num);
   // 상세보기 페이지에서 결제하기 눌렀을 때 장바구니에서 해당 물품 삭제
   public void deleteCart(int mem_num);
   // 상세보기 페이지에서 결제하기 눌렀을 때 Purchase추가
   public void insertPurchase(PurchaseVO purvo);
   // 상세보기 페이지에서 결제하기 눌렀을 때 OrderList추가
   public void insertOrderList(List<CartVO> carvo_list);
   
   // 장바구니에서 결제하기 눌렀을 때 장바구니 상품목록 불러오기
   public List<CartVO> selectCart(int mem_num);

}