package kr.co.kosmo.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.vo.OrderListVO;
import kr.co.kosmo.mvc.vo.ProductVO;

@Repository
public class OrderListDao implements OrderListDaoInter { // �����
	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public List<OrderListVO> orderListii(int mem_num) {
		return ss.selectList("orderList.orderListii", mem_num);
	}

}
