package kr.co.kosmo.mvc.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import kr.co.kosmo.mvc.vo.HousedetailVO;
import kr.co.kosmo.mvc.vo.HousewarmingVO;

public interface HwarmServiceInter {
	
	public void insertHwarm(HousewarmingVO houvo, List<HousedetailVO> hwdvoList);
	public String suggestProduct(String pro_name);
	public Map<String, Object> selectHwarm(int hou_num);
	public List<HousedetailVO> selectHousedetail(int hou_num);
	public List<String> copyandGetFileNames(HttpServletRequest request, MultipartFile[] mfile);
	public String taggedProduct(int pro_num);
	public int hwarmLikeStatus(Map<String,Integer> num_map);
	public void insertHwarmLike(Map<String,Integer> num_map);
	public void delHwarmLike(Map<String,Integer> num_map);
	public int hwarmScrapStatus(Map<String,Integer> num_map);
	public void insertHwarmScrap(Map<String,Integer> num_map);
	public void delHwarmScrap(Map<String,Integer> num_map);
	public List<HousewarmingVO> list();
	public List<HousewarmingVO> filter(String horder, String htype, String hspace, String hpay, String hhow,
			String hstyle, String htone);
	
}
