package kr.co.kosmo.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.kosmo.mvc.dao.OrderListDaoInter;
import kr.co.kosmo.mvc.vo.OrderListVO;
import kr.co.kosmo.mvc.vo.ProductVO;

@Service
public class OrderListService {
	
	@Autowired
	private OrderListDaoInter orderListDaoInter;
	
//	public List<OrderListVO> orderList(int mem_num) {
//		return orderListDaoInter.orderList(mem_num);
//	}
	
	public List<OrderListVO> orderListii(int mem_num) {
		return orderListDaoInter.orderListii(mem_num);
	}

//	public OrderListVO getOrderOne(int ord_num) {
//		return orderListDaoInter.orderDetail(ord_num);
//	}
	
	
	

}
