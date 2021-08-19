package kr.co.kosmo.mvc.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.kosmo.mvc.dao.PaymentDaoInter;
import kr.co.kosmo.mvc.vo.CartVO;
import kr.co.kosmo.mvc.vo.MemberVO;
import kr.co.kosmo.mvc.vo.OrderListVO;
import kr.co.kosmo.mvc.vo.ProductVO;
import kr.co.kosmo.mvc.vo.PurchaseVO;

@Service
public class PaymentService implements PaymentServiceInter{
   
   @Autowired
   PaymentDaoInter paymentDaoInter;

   @Override
   public ProductVO detailConfirm(int pro_num) {
      return paymentDaoInter.detailConfirm(pro_num);
   }

   @Override
   public List<ProductVO> cartConfirm(int mem_num) {
      return paymentDaoInter.cartConfirm(mem_num);
   }

   @Override
   public MemberVO memberInfo(int mem_num) {
      return paymentDaoInter.memberInfo(mem_num);
   }

   @Override
   @Transactional
   public void payment(int mem_num, List<CartVO> carvo_list, PurchaseVO purvo) {
      paymentDaoInter.deleteCart(mem_num);
      paymentDaoInter.insertPurchase(purvo);
      paymentDaoInter.insertOrderList(carvo_list);
   }

	@Override
	public List<CartVO> selectCart(int mem_num) {
		return paymentDaoInter.selectCart(mem_num);
	}

	@Override
	public int totalPrice(int mem_num) {
		int totalPrice = 0;
		List<CartVO> cvo_list = paymentDaoInter.selectCart(mem_num);
		for (CartVO cvo:cvo_list) {
			totalPrice += cvo.getProductVO().getPro_price() * cvo.getCar_qty();
		}
		return totalPrice;
	}

}