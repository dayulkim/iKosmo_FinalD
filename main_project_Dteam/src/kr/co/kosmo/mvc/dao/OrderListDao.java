package kr.co.kosmo.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.vo.OrderListVO;
import kr.co.kosmo.mvc.vo.ProductVO;

@Repository
public class OrderListDao implements OrderListDaoInter { // ±Ë¥Ÿ¿≤
	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public List<OrderListVO> orderList(int mem_num) {
		return ss.selectList("orderList.orderList", mem_num);
	}
	@Override
	public List<Integer> ordRecommend() {
				return ss.selectList("orderList.ordRecommend");
	}

}
