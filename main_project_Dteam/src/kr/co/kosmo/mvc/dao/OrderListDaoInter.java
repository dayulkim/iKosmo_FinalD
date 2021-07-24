package kr.co.kosmo.mvc.dao;

import java.util.List;
import kr.co.kosmo.mvc.vo.OrderListVO;

public interface OrderListDaoInter { // 김다율
	
	// 개인의 전체 주문내역 출력
	// public List<OrderListVO> orderList(int mem_num);
	public List<OrderListVO> orderListii(int mem_num);

	// 주문내역 상세정보 출력
	// public OrderListVO orderDetail(int ord_num);
	
}
