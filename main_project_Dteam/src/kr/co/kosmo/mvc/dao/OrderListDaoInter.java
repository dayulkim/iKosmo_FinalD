package kr.co.kosmo.mvc.dao;

import java.util.List;
import kr.co.kosmo.mvc.vo.OrderListVO;
import kr.co.kosmo.mvc.vo.ProductVO;

public interface OrderListDaoInter { // �����
	
	// ������ ��ü �ֹ����� ���
	public List<OrderListVO> orderListii(int mem_num);
	
}
