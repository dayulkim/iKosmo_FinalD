package kr.co.kosmo.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.vo.CartVO;
import kr.co.kosmo.mvc.vo.MemberVO;
import kr.co.kosmo.mvc.vo.OrderListVO;
import kr.co.kosmo.mvc.vo.ProductVO;
import kr.co.kosmo.mvc.vo.PurchaseVO;

@Repository
public class PaymentDao implements PaymentDaoInter {

   @Autowired
   private SqlSessionTemplate ss;

   @Override
   public ProductVO detailConfirm(int pro_num) {
      return ss.selectOne("payment.detailConfirm", pro_num);
   }

   @Override
   public List<ProductVO> cartConfirm(int mem_num) {
      return ss.selectList("payment.cartConfirm", mem_num);
   }

   @Override
   public MemberVO memberInfo(int mem_num) {
      return ss.selectOne("payment.memberInfo", mem_num);
   }

   @Override
   public void deleteCart(int mem_num) {
      ss.delete("payment.deleteCart", mem_num);
   }

   @Override
   public void insertPurchase(PurchaseVO purvo) {
      ss.insert("payment.insertPurchase", purvo);
   }

   @Override
   public void insertOrderList(List<CartVO> carvo_list) {
      ss.insert("payment.insertOrdList", carvo_list);
      
   }

	@Override
	public List<CartVO> selectCart(int mem_num) {
		return ss.selectList("payment.selectCart", mem_num);
	}


}