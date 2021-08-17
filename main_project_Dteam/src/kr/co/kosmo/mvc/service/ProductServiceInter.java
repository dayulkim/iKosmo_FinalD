package kr.co.kosmo.mvc.service;

import java.util.List;

import kr.co.kosmo.mvc.vo.AdminHitVO;
import kr.co.kosmo.mvc.vo.ProductVO;

public interface ProductServiceInter {
	
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
	public List<AdminHitVO> myProduct(String sid);
// �ִ� Ŭ����ǰ �ҷ����� 
	public List<AdminHitVO> theirProduct();
// ��ǰ �󼼺��� ������	
	public ProductVO productDetail(int pro_num);
// �����Ͽ��� ��ǰ ���� �ҷ�����
	public long productStar(int pro_num);
// Suggest ��ǰ ���� �޾ƿ���	
	public List<ProductVO> suggestProductList();
// ��ǰ ��õ
	public ProductVO recommendPro(int result);

	
}
