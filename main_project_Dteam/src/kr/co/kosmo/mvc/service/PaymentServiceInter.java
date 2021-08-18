package kr.co.kosmo.mvc.service;

import java.util.List;

import kr.co.kosmo.mvc.vo.CartVO;
import kr.co.kosmo.mvc.vo.MemberVO;
import kr.co.kosmo.mvc.vo.OrderListVO;
import kr.co.kosmo.mvc.vo.ProductVO;
import kr.co.kosmo.mvc.vo.PurchaseVO;

public interface PaymentServiceInter {
   
   public ProductVO detailConfirm(int pro_num);
   
   public List<ProductVO> cartConfirm(int mem_num);
   
   public MemberVO memberInfo(int mem_num);
   
   public void payment(int mem_num, List<CartVO> carvo_list, PurchaseVO purvo);

   public List<CartVO> selectCart(int mem_num);
   
   public int totalPrice(int mem_num);

}