package kr.co.kosmo.mvc.service;

import java.util.List;

import kr.co.kosmo.mvc.vo.OrderListVO;
import kr.co.kosmo.mvc.vo.PurchaseVO;

public interface OrderListServiceInter {
	public List<OrderListVO> orderList(int mem_num);
	public List<PurchaseVO> purchaseOrderlist();
	public List<Integer> ordRecommend();
}
