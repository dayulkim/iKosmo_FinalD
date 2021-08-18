package kr.co.kosmo.mvc.dao;

import java.util.List;

import kr.co.kosmo.mvc.vo.CartVO;
import kr.co.kosmo.mvc.vo.MemberVO;
import kr.co.kosmo.mvc.vo.OrderListVO;
import kr.co.kosmo.mvc.vo.ProductVO;
import kr.co.kosmo.mvc.vo.PurchaseVO;

public interface PaymentDaoInter {
   
   // �󼼺��� ���������� ���Ź�ư ������ �� ���� ���������� ��ǰ ���
   public ProductVO detailConfirm(int pro_num);
   // ��ٱ��� ���������� ���Ź�ư ������ �� ���� ���������� ��ǰ ����Ʈ ���
   public List<ProductVO> cartConfirm(int mem_num);
   // �α��� ���� ������ ȸ������ �ҷ�����
   public MemberVO memberInfo(int mem_num);
   // �󼼺��� ���������� �����ϱ� ������ �� ��ٱ��Ͽ��� �ش� ��ǰ ����
   public void deleteCart(int mem_num);
   // �󼼺��� ���������� �����ϱ� ������ �� Purchase�߰�
   public void insertPurchase(PurchaseVO purvo);
   // �󼼺��� ���������� �����ϱ� ������ �� OrderList�߰�
   public void insertOrderList(List<CartVO> carvo_list);
   
   // ��ٱ��Ͽ��� �����ϱ� ������ �� ��ٱ��� ��ǰ��� �ҷ�����
   public List<CartVO> selectCart(int mem_num);

}