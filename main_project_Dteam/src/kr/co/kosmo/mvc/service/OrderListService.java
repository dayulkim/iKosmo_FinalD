package kr.co.kosmo.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.kosmo.mvc.dao.OrderListDaoInter;
import kr.co.kosmo.mvc.vo.OrderListVO;
import kr.co.kosmo.mvc.vo.ProductVO;

@Service
public class OrderListService implements OrderListServiceInter {
	
	@Autowired
	private OrderListDaoInter orderListDaoInter;
	
	@Override
	public List<OrderListVO> orderList(int mem_num) {
		return orderListDaoInter.orderList(mem_num);
	}
	
	@Override
	public List<Integer> ordRecommend(){
		return orderListDaoInter.ordRecommend();
	}
}
