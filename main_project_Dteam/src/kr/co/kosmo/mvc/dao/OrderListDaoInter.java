package kr.co.kosmo.mvc.dao;

import java.util.List;
import kr.co.kosmo.mvc.vo.OrderListVO;
import kr.co.kosmo.mvc.vo.ProductVO;
import kr.co.kosmo.mvc.vo.PurchaseVO;

public interface OrderListDaoInter {
	
	// �����: ������ ��ü �ֹ����� ���
	public List<OrderListVO> orderList(int mem_num);
	public List<PurchaseVO> purchaseOrderlist();
	// ���翵: �ֹ� ���� ���� ��õ
	public List<Integer> ordRecommend();
	
}
