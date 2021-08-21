package kr.co.kosmo.mvc.service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import kr.co.kosmo.mvc.dao.HwarmDaoInter;
import kr.co.kosmo.mvc.dao.MemberDaoInter;
import kr.co.kosmo.mvc.vo.HouseCommentVO;
import kr.co.kosmo.mvc.vo.HousedetailVO;
import kr.co.kosmo.mvc.vo.HousewarmingVO;
import kr.co.kosmo.mvc.vo.ProductVO;

@Service
public class HwarmService implements HwarmServiceInter {

	@Autowired
	private HwarmDaoInter hwarmDaoInter;
	@Autowired
	private MemberDaoInter memberDaoInter;
	
	// 집들이글 입력 관련 ====================================================================

	// 집들이글 제품 태그 팝업창에서 검색을 하면 검색어에 해당되는 제품을 보여주는 메서드
	@Override
	public String suggestProduct(String pro_name) {
		List<ProductVO> pro_list = hwarmDaoInter.suggestProduct(pro_name);
		JSONArray arr = new JSONArray();
		for (ProductVO product : pro_list) {
			HashMap<String, Object> hashMap = new HashMap<>();
			hashMap.put("pro_num", product.getPro_num());
			hashMap.put("pro_name", product.getPro_name());
			hashMap.put("pro_thumb", product.getPro_thumb());
			JSONObject pro_jsonObj = new JSONObject(hashMap);
			arr.add(pro_jsonObj);
		}
		return arr.toJSONString();
	}
	
	// 업로드된 파일을 복사하고 파일 이름의 리스트를 반환하는 메서드
	@Override
	public List<String> copyandGetFileNames(HttpServletRequest request, MultipartFile[] mfile) {
		String r_path = request.getSession().getServletContext().getRealPath("/"); // 웹 상 절대경로
		String img_path = "resources\\uploadFile\\hwarm";
		List<String> imglist = new ArrayList<>();
		for (MultipartFile mf : mfile) {
			String oriFn = mf.getOriginalFilename(); // 업로드할 때의 파일명을 가져옴
			StringBuffer path = new StringBuffer();
			path.append(r_path).append(img_path).append("\\").append(oriFn);
			// -- 파일 복사
			File f = new File(path.toString());
			try {
				mf.transferTo(f); // 임시저장소에 있는 파일을 File 객체로 옮기기
				imglist.add(oriFn);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}
		// 파일 이름의 리스트를 반환
		return imglist;
	}
	
	// 집들이글을 데이터베이스에 입력하는 메서드
	@Override
	@Transactional
	public void insertHwarm(HousewarmingVO houvo, List<HousedetailVO> hwdvoList) {
		hwarmDaoInter.insertHwarm(houvo);
		hwarmDaoInter.insertHdetail(hwdvoList);
	}


	// 집들이글 상세보기 관련 ===================================================================

	// 집들이글 상세보기를 위해 집들이글 내용을 불러오는 메서드
	@Override
	public Map<String, Object> selectHwarm(int hou_num) {
		// 집들이글 번호를 기준으로 집들이글 정보 받아오기
		HousewarmingVO hwvo = hwarmDaoInter.selectHwarm(hou_num);
		// 숫자로 되어 있는 정보를 jsp에서 볼 수 있는 한글 형태로 변경
		// 변경된 내용을 담을 Map 생성
		Map<String, Object> hwarm_map = new HashMap<>();
		// 변경하지 않아도 되는 정보부터 Map에 담기
		hwarm_map.put("hou_num",hwvo.getHou_num());
		hwarm_map.put("hou_name",hwvo.getHou_name());
		hwarm_map.put("hou_space",hwvo.getHou_space());
		hwarm_map.put("hou_period",hwvo.getHou_period());
		hwarm_map.put("hou_pay",hwvo.getHou_pay());
		hwarm_map.put("hou_rdate",hwvo.getHou_rdate());
		hwarm_map.put("hou_hit",hwvo.getHou_hit());
		// type - 1:원룸 / 2:투룸
		switch (hwvo.getHou_type()) {
		case 1:
			hwarm_map.put("hou_type", "아파트");
			break;
		case 2:
			hwarm_map.put("hou_type", "원룸&오피스텔");
			break;
		case 3:
			hwarm_map.put("hou_type", "빌라&연립");
			break;
		case 4:
			hwarm_map.put("hou_type", "단독주택");
			break;
		case 5:
			hwarm_map.put("hou_type", "사무공간");
			break;
		case 6:
			hwarm_map.put("hou_type", "상업공간");
			break;
		case 7:
			hwarm_map.put("hou_type", "기타");
			break;
		}
		// how -    1:셀프 / 2:반셀프 / 3:전문가
		switch (hwvo.getHou_how()) {
		case 1:
			hwarm_map.put("hou_how", "셀프");
			break;
		case 2:
			hwarm_map.put("hou_how", "반셀프");
			break;
		case 3:
			hwarm_map.put("hou_how", "전문가");
			break;
		}
		// sector - 1:리모델링 / 2:홈스타일링 / 3:부분공사 / 4:건축
		switch (hwvo.getHou_sector()) {
		case 1:
			hwarm_map.put("hou_sector", "리모델링");
			break;
		case 2:
			hwarm_map.put("hou_sector", "홈스타일링");
			break;
		case 3:
			hwarm_map.put("hou_sector", "부분공사");
			break;
		case 4:
			hwarm_map.put("hou_sector", "건축");
			break;
		}
		// style -  1:모던 / 2:미니멀&심플 / 3:내추럴&북유럽 / 4:빈티지&레트로 / 5:클래식&앤틱
		switch (hwvo.getHou_style()) {
		case 1:
			hwarm_map.put("hou_style", "내추럴");
			break;
		case 2:
			hwarm_map.put("hou_style", "모던");
			break;
		case 3:
			hwarm_map.put("hou_style", "미니멀&심플");
			break;
		case 4:
			hwarm_map.put("hou_style", "빈티지&레트로");
			break;
		case 5:
			hwarm_map.put("hou_style", "북유럽");
			break;
		case 6:
			hwarm_map.put("hou_style", "유니크&믹스매치");
			break;
		case 7:
			hwarm_map.put("hou_style", "러블리&로맨틱");
			break;
		case 8:
			hwarm_map.put("hou_style", "클래식&앤틱");
			break;
		case 9:
			hwarm_map.put("hou_style", "프렌치&프로방스");
			break;
		case 10:
			hwarm_map.put("hou_style", "한국&아시아");
			break;
		case 11:
			hwarm_map.put("hou_style", "인더스트리얼");
			break;
		}
		// 컬러톤
		switch (hwvo.getHou_tone()) {
		case 1:
			hwarm_map.put("hou_tone", "#fff4e6");
			break;
		case 2:
			hwarm_map.put("hou_tone", "#ffd3b6");
			break;
		case 3:
			hwarm_map.put("hou_tone", "#e0a899");
			break;
		case 4:
			hwarm_map.put("hou_tone", "#604439");
			break;
		case 5:
			hwarm_map.put("hou_tone", "#e74c3c");
			break;
		case 6:
			hwarm_map.put("hou_tone", "#f0c75e");
			break;
		case 7:
			hwarm_map.put("hou_tone", "#a0d6b4");
			break;
		case 8:
			hwarm_map.put("hou_tone", "#4b86b4");
			break;
		case 9:
			hwarm_map.put("hou_tone", "#505050");
			break;
		case 10:
			hwarm_map.put("hou_tone", "#000000");
			break;
		}
		// 김세연 : 친구추가 기능 위해  추가함  :: 회원 번호 담기
		hwarm_map.put("mem_num", hwvo.getMem_num());
		// 회원 아이디 담기
		hwarm_map.put("mem_id", memberDaoInter.getMemberID(hwvo.getMem_num()));
		// 회원 프로필 담기
		hwarm_map.put("mem_profile", memberDaoInter.getMemberProfile(hwvo.getMem_num()));
		
		return hwarm_map;
	}

	// 집들이글 사진, 내용 등 상세 내용을 불러오는 메서드
	@Override
	public List<HousedetailVO> selectHousedetail(int hou_num) {
		return hwarmDaoInter.selectHousedetail(hou_num);
	}
	
	@Override
	public List<HouseCommentVO> selectHouseComment(int hou_num) {
		List<HouseCommentVO> hcm_list = hwarmDaoInter.selectHouseComment(hou_num); 
		for (HouseCommentVO vo:hcm_list) {
			String profile = memberDaoInter.getMemberProfile(vo.getMem_num());
			vo.setMem_profile(profile);
			String mem_id = memberDaoInter.getMemberID(vo.getMem_num());
			vo.setMem_id(mem_id);
		}
		return hcm_list;
	}

	// 집들이글에 태그된 상품의 사진명을 불러오는 메서드
	@Override
	public String taggedProduct(int pro_num) {
		return hwarmDaoInter.taggedProduct(pro_num);
	}

	@Override
	public int hwarmLikeStatus(Map<String, Integer> num_map) {
		return hwarmDaoInter.hwarmLikeStatus(num_map);
	}

	@Override
	public void insertHwarmLike(Map<String, Integer> num_map) {
		hwarmDaoInter.insertHwarmLike(num_map);
	}

	@Override
	public void delHwarmLike(Map<String, Integer> num_map) {
		hwarmDaoInter.delHwarmLike(num_map);
	}

	@Override
	public int hwarmScrapStatus(Map<String, Integer> num_map) {
		return hwarmDaoInter.hwarmScrapStatus(num_map);
	}

	@Override
	public void insertHwarmScrap(Map<String, Integer> num_map) {
		hwarmDaoInter.insertHwarmScrap(num_map);
	}

	@Override
	public void delHwarmScrap(Map<String, Integer> num_map) {
		hwarmDaoInter.delHwarmScrap(num_map);
	}
	
	@Override
	public Map<String, String> insertHouseComment(int hou_num, int mem_num, int depth_num, int par_comm_numm, String comment) {
		HouseCommentVO hcmvo = new HouseCommentVO();
		hcmvo.setHou_num(hou_num);
		hcmvo.setMem_num(mem_num);
		hcmvo.setDepth_num(depth_num);
		hcmvo.setPar_comm_numm(par_comm_numm);
		hcmvo.setComm_content(comment);
		hwarmDaoInter.insertHouseComment(hcmvo);
		
		String profile = memberDaoInter.getMemberProfile(mem_num);
		String mem_id = memberDaoInter.getMemberID(mem_num);
		int comm_num = hwarmDaoInter.commCurrVal();
		
		Map<String, String> mem_info = new HashMap<>();
		mem_info.put("profile", profile);
		mem_info.put("mem_id", mem_id);
		mem_info.put("comm_num", String.valueOf(comm_num));
		
		return mem_info;
	}
	
	@Override
	public int commCurrVal() {
		return hwarmDaoInter.commCurrVal();
	}

	// 신규철: 집들이글 리스트 ================================================
	
	@Override
	public List<HousewarmingVO> list() {
		return hwarmDaoInter.list();
	}

	@Override
	public List<HousewarmingVO> filter(String horder, String htype, String hspace, String hpay, String hhow,
			String hstyle, String htone) {
		return hwarmDaoInter.filter(horder, htype, hspace, hpay, hhow, hstyle, htone);
	}







	

}
