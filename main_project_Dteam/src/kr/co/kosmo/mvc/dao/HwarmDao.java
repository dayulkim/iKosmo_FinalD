package kr.co.kosmo.mvc.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.vo.HouseCommentVO;
import kr.co.kosmo.mvc.vo.HousedetailVO;
import kr.co.kosmo.mvc.vo.HousewarmingVO;
import kr.co.kosmo.mvc.vo.ProductVO;

@Repository
public class HwarmDao implements HwarmDaoInter {

	@Autowired
	private SqlSessionTemplate ss;

	// 홍영의 : 집들이글 작성 및 상세보기 =================================================
	@Override
	public void insertHwarm(HousewarmingVO houvo) {
		ss.insert("housewarming.insertHwarm", houvo);
	}

	@Override
	public void insertHdetail(List<HousedetailVO> hwdvoList) {
		ss.insert("housewarming.insertHousedetail", hwdvoList);
	}

	@Override
	public List<ProductVO> suggestProduct(String pro_name) {
		return ss.selectList("housewarming.suggestProduct", pro_name);
	}

	@Override
	public HousewarmingVO selectHwarm(int hou_num) {
		return ss.selectOne("housewarming.selectHwarm", hou_num);
	}

	@Override
	public List<HousedetailVO> selectHousedetail(int hou_num) {
		return ss.selectList("housewarming.selectHousedetail", hou_num);
	}
	
	@Override
	public List<HouseCommentVO> selectHouseComment(int hou_num) {
		return ss.selectList("housewarming.selectHouseComment", hou_num);
	}

	@Override
	public String taggedProduct(int pro_num) {
		return ss.selectOne("housewarming.taggedProduct", pro_num);
	}

	@Override
	public int hwarmLikeStatus(Map<String, Integer> num_map) {
		return ss.selectOne("housewarming.hwarmLikeStatus", num_map);
	}

	@Override
	public void insertHwarmLike(Map<String, Integer> num_map) {
		ss.insert("housewarming.insertHwarmLike", num_map);
	}

	@Override
	public void delHwarmLike(Map<String, Integer> num_map) {
		ss.delete("housewarming.delHwarmLike", num_map);
	}

	@Override
	public int hwarmScrapStatus(Map<String, Integer> num_map) {
		return ss.selectOne("housewarming.hwarmScrapStatus", num_map);
	}

	@Override
	public void insertHwarmScrap(Map<String, Integer> num_map) {
		ss.insert("housewarming.insertHwarmScrap", num_map);
	}

	@Override
	public void delHwarmScrap(Map<String, Integer> num_map) {
		ss.delete("housewarming.delHwarmScrap", num_map);
	}
	
	@Override
	public void insertHouseComment(HouseCommentVO hcmvo) {
		ss.insert("housewarming.insertHouseComment", hcmvo);
	}
	
	@Override
	public int commCurrVal() {
		return ss.selectOne("housewarming.commCurrVal");
	}

	// 신규철: 집들이 리스트 =========================================================================
	@Override
	public List<HousewarmingVO> list() {
		return ss.selectList("housewarming.list");
	}

	@Override
	public List<HousewarmingVO> filter(String horder, String htype, String hspace, String hpay, String hhow,
			String hstyle, String htone) {
		System.out.println("Dao \n" + horder + "\n" + htype + "\n" + hspace + "\n" + hpay + "\n" + hhow + "\n" + hstyle
				+ "\n" + htone);
		Map<String, String> map = new HashMap<>();
		map.put("hou_order", horder);
		map.put("hou_type", htype);
		map.put("hou_space", hspace);
		map.put("hou_pay", hpay);
		map.put("hou_how", hhow);
		map.put("hou_style", hstyle);
		map.put("hou_tone", htone);
		/*
		 * Iterator<String> keys = map.keySet().iterator(); while(keys.hasNext()){
		 * String key = keys.next(); String value = map.get(key);
		 * System.out.println("키 : "+key+" /// 값 : "+value); }
		 */
		return ss.selectList("housewarming.filter", map);
	}







}
