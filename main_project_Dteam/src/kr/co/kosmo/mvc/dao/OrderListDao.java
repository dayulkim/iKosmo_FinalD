package kr.co.kosmo.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.vo.OrderListVO;

@Repository
public class OrderListDao implements OrderListDaoInter { // ±Ë¥Ÿ¿≤
	@Autowired
	private SqlSessionTemplate ss;
	
//	@Override
//	public List<OrderListVO> orderList(int mem_num) {
//		System.out.println(mem_num);
//		return ss.selectList("orderList.orderList",mem_num);
//	}
	
	@Override
	public List<OrderListVO> orderListii(int mem_num) {
		return ss.selectList("orderList.orderListii", mem_num);
	}

//	@Override
//	public OrderListVO orderDetail(int ord_num) {
//		// TODO Auto-generated method stub
//		return ss.selectOne("orderList.orderDetail", ord_num);
//	}



}
