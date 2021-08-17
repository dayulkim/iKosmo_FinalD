package kr.co.kosmo.mvc.dao;

import java.util.List;

import kr.co.kosmo.mvc.vo.InterestVO;
import kr.co.kosmo.mvc.vo.ProductVO;
import kr.co.kosmo.mvc.vo.SellerVO;

public interface ProductDaoInter { // �����

//	�����  ��ư
	public List<ProductVO> productList();
//	Ư�� ī�װ� Ŭ����
	public List<ProductVO> productList2(String category);
//	Ư�� ������ ���� Ŭ����
	public List<ProductVO> productOrder(String way, String merit, String category);
// ��ǰ �� ����	
	public String totalProduct();
// ���� ������ �ҷ�����
	public List<ProductVO> priceList(String range);
// ��ũ�� �� ����	
	public String totalScrap(String sid);
// īƮ �� ����	
	public String totalCart(String sid);	
// �ֱ� ��ȸ��ǰ �ҷ����� 
	public List<InterestVO> myProduct(String sid);
// �ִ� Ŭ����ǰ �ҷ����� 
	public List<InterestVO> theirProduct();
// ��ǰ �󼼺��� ������	
	public ProductVO productDetail(int pro_num);
// �����Ͽ��� ��ǰ ���� �ҷ�����
	public long productStar(int pro_num);
// suggest ����Ʈ�� ���� ���
	public List<ProductVO> suggestProductList();
// ��ǰ ��õ
	public ProductVO recommendPro(int result);

}
