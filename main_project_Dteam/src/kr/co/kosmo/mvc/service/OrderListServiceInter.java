package kr.co.kosmo.mvc.service;

import java.util.List;

import kr.co.kosmo.mvc.vo.OrderListVO;

public interface OrderListServiceInter {
	public List<OrderListVO> orderListii(int mem_num);
	public List<Integer> ordRecommend();
}