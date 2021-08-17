package kr.co.kosmo.mvc.dao;

import java.util.List;
import java.util.Map;

import kr.co.kosmo.mvc.vo.HouseCommentVO;
import kr.co.kosmo.mvc.vo.HousedetailVO;
import kr.co.kosmo.mvc.vo.HousewarmingVO;
import kr.co.kosmo.mvc.vo.ProductVO;

public interface HwarmDaoInter {
	// 홍영의: 집들이글 입력 및 상세보기 ==============================================
	public void insertHwarm(HousewarmingVO houvo);
	public void insertHdetail(List<HousedetailVO> hwdvoList);
	public List<ProductVO> suggestProduct(String pro_name);
	public HousewarmingVO selectHwarm(int hou_num);
	public List<HousedetailVO> selectHousedetail(int hou_num);
	public List<HouseCommentVO> selectHouseComment(int hou_num);
	public String taggedProduct(int pro_num);
	public int hwarmLikeStatus(Map<String,Integer> num_map);
	public void insertHwarmLike(Map<String,Integer> num_map);
	public void delHwarmLike(Map<String,Integer> num_map);
	public int hwarmScrapStatus(Map<String,Integer> num_map);
	public void insertHwarmScrap(Map<String,Integer> num_map);
	public void delHwarmScrap(Map<String,Integer> num_map);
	public void insertHouseComment(HouseCommentVO hcmvo);
	public int commCurrVal();
	
	
	// 신규철: 집들이글 리스트 =====================================================
	public List<HousewarmingVO> list();
	public List<HousewarmingVO> filter(String horder, String htype, String hspace, String hpay, String hhow, String hstyle, String htone);
}
