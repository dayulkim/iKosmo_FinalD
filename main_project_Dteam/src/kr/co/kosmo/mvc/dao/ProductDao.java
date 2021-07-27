package kr.co.kosmo.mvc.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.vo.InterestVO;
import kr.co.kosmo.mvc.vo.ProductVO;

@Repository
public class ProductDao implements ProductDaoInter { // �����
	@Autowired
	private SqlSessionTemplate ss;

//	�����  ��ư
	@Override
	public List<ProductVO> productList() {
		return ss.selectList("product.bestlist");
	}

//	Ư�� ī�װ� Ŭ����
	@Override
	public List<ProductVO> productList2(String category) {
		System.out.println("Dao ���� ī�װ� : " + category);
		return ss.selectList("product.themelist", category);
	}

//	Ư�� ������ ���� Ŭ����
	@Override
	public List<ProductVO> productOrder(String way, String merit, String category) {
		System.out.println("Dao ���� ���ı��� : " + way);
		Map<String, String> map = new HashMap<>();
		map.put("way", way);
		map.put("merit", merit);
		map.put("category", category);
		return ss.selectList("product.orderlist", map);
	}

// ��ǰ �� ����	
	@Override
	public String totalProduct() {
		return ss.selectOne("product.totalProduct");
	}
	
// ��ũ�� �� ����	
	@Override
	public String totalScrap(String sid) {
		System.out.println("���̵� : " + sid);
		return ss.selectOne("product.totalScrap",sid);
	}	
		
// īƮ �� ����	
	@Override
	public String totalCart(String sid) {
		System.out.println("���̵� : " + sid);
		return ss.selectOne("product.totalCart",sid);
	}	
	
	
// ���� ������ �ҷ�����
	@Override
	public List<ProductVO> priceList(String range) {
		System.out.println("Dao ���� ���ݹ��� : " + range);
		return ss.selectList("product.pricerange", range);
	}
	
// �ֱ� ��ȸ��ǰ �ҷ����� 
	@Override
	public List<InterestVO> myProduct(String sid) {
		System.out.println("���̵� : " + sid);
		return ss.selectList("product.myclick",sid);
	}
	
// �ִ� Ŭ����ǰ �ҷ����� 
	@Override
	public List<InterestVO> theirProduct() {
		return ss.selectList("product.theirclick");
	}
	
// ��ǰ �󼼺��� ������
	@Override
	public ProductVO productDetail(int pro_num) {
		System.out.println("Dao ���� ��ǰ��ȣ : " + pro_num);
		return ss.selectOne("product.productdetail", pro_num);
	}
	
// �����Ͽ��� ��ǰ ���� �ҷ�����
	@Override
	public String productStar(int pro_num) {
		System.out.println("Dao ���� ��ǰ��ȣ : " + pro_num);
		return ss.selectOne("product.productstar", pro_num);
	}
	

}
