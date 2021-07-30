package kr.co.kosmo.mvc.dao;

import java.util.List;
import kr.co.kosmo.mvc.vo.OrderListVO;
import kr.co.kosmo.mvc.vo.ProductVO;

public interface OrderListDaoInter {
	
	// 김다율: 개인의 전체 주문내역 출력
	public List<OrderListVO> orderListii(int mem_num);
	// 이재영: 주문 수에 의한 추천
	public List<Integer> ordRecommend();
	
}
