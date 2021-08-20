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
	
	// �����̱� �Է� ���� ====================================================================

	// �����̱� ��ǰ �±� �˾�â���� �˻��� �ϸ� �˻�� �ش�Ǵ� ��ǰ�� �����ִ� �޼���
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
	
	// ���ε�� ������ �����ϰ� ���� �̸��� ����Ʈ�� ��ȯ�ϴ� �޼���
	@Override
	public List<String> copyandGetFileNames(HttpServletRequest request, MultipartFile[] mfile) {
		String r_path = request.getSession().getServletContext().getRealPath("/"); // �� �� ������
		String img_path = "resources\\uploadFile\\hwarm";
		List<String> imglist = new ArrayList<>();
		for (MultipartFile mf : mfile) {
			String oriFn = mf.getOriginalFilename(); // ���ε��� ���� ���ϸ��� ������
			StringBuffer path = new StringBuffer();
			path.append(r_path).append(img_path).append("\\").append(oriFn);
			// -- ���� ����
			File f = new File(path.toString());
			try {
				mf.transferTo(f); // �ӽ�����ҿ� �ִ� ������ File ��ü�� �ű��
				imglist.add(oriFn);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}
		// ���� �̸��� ����Ʈ�� ��ȯ
		return imglist;
	}
	
	// �����̱��� �����ͺ��̽��� �Է��ϴ� �޼���
	@Override
	@Transactional
	public void insertHwarm(HousewarmingVO houvo, List<HousedetailVO> hwdvoList) {
		hwarmDaoInter.insertHwarm(houvo);
		hwarmDaoInter.insertHdetail(hwdvoList);
	}


	// �����̱� �󼼺��� ���� ===================================================================

	// �����̱� �󼼺��⸦ ���� �����̱� ������ �ҷ����� �޼���
	@Override
	public Map<String, Object> selectHwarm(int hou_num) {
		// �����̱� ��ȣ�� �������� �����̱� ���� �޾ƿ���
		HousewarmingVO hwvo = hwarmDaoInter.selectHwarm(hou_num);
		// ���ڷ� �Ǿ� �ִ� ������ jsp���� �� �� �ִ� �ѱ� ���·� ����
		// ����� ������ ���� Map ����
		Map<String, Object> hwarm_map = new HashMap<>();
		// �������� �ʾƵ� �Ǵ� �������� Map�� ���
		hwarm_map.put("hou_num",hwvo.getHou_num());
		hwarm_map.put("hou_name",hwvo.getHou_name());
		hwarm_map.put("hou_space",hwvo.getHou_space());
		hwarm_map.put("hou_period",hwvo.getHou_period());
		hwarm_map.put("hou_pay",hwvo.getHou_pay());
		hwarm_map.put("hou_rdate",hwvo.getHou_rdate());
		hwarm_map.put("hou_hit",hwvo.getHou_hit());
		// type - 1:���� / 2:����
		switch (hwvo.getHou_type()) {
		case 1:
			hwarm_map.put("hou_type", "����Ʈ");
			break;
		case 2:
			hwarm_map.put("hou_type", "����&���ǽ���");
			break;
		case 3:
			hwarm_map.put("hou_type", "����&����");
			break;
		case 4:
			hwarm_map.put("hou_type", "�ܵ�����");
			break;
		case 5:
			hwarm_map.put("hou_type", "�繫����");
			break;
		case 6:
			hwarm_map.put("hou_type", "�������");
			break;
		case 7:
			hwarm_map.put("hou_type", "��Ÿ");
			break;
		}
		// how -    1:���� / 2:�ݼ��� / 3:������
		switch (hwvo.getHou_how()) {
		case 1:
			hwarm_map.put("hou_how", "����");
			break;
		case 2:
			hwarm_map.put("hou_how", "�ݼ���");
			break;
		case 3:
			hwarm_map.put("hou_how", "������");
			break;
		}
		// sector - 1:���𵨸� / 2:Ȩ��Ÿ�ϸ� / 3:�κа��� / 4:����
		switch (hwvo.getHou_sector()) {
		case 1:
			hwarm_map.put("hou_sector", "���𵨸�");
			break;
		case 2:
			hwarm_map.put("hou_sector", "Ȩ��Ÿ�ϸ�");
			break;
		case 3:
			hwarm_map.put("hou_sector", "�κа���");
			break;
		case 4:
			hwarm_map.put("hou_sector", "����");
			break;
		}
		// style -  1:��� / 2:�̴ϸ�&���� / 3:���߷�&������ / 4:��Ƽ��&��Ʈ�� / 5:Ŭ����&��ƽ
		switch (hwvo.getHou_style()) {
		case 1:
			hwarm_map.put("hou_style", "���߷�");
			break;
		case 2:
			hwarm_map.put("hou_style", "���");
			break;
		case 3:
			hwarm_map.put("hou_style", "�̴ϸ�&����");
			break;
		case 4:
			hwarm_map.put("hou_style", "��Ƽ��&��Ʈ��");
			break;
		case 5:
			hwarm_map.put("hou_style", "������");
			break;
		case 6:
			hwarm_map.put("hou_style", "����ũ&�ͽ���ġ");
			break;
		case 7:
			hwarm_map.put("hou_style", "����&�θ�ƽ");
			break;
		case 8:
			hwarm_map.put("hou_style", "Ŭ����&��ƽ");
			break;
		case 9:
			hwarm_map.put("hou_style", "����ġ&���ι潺");
			break;
		case 10:
			hwarm_map.put("hou_style", "�ѱ�&�ƽþ�");
			break;
		case 11:
			hwarm_map.put("hou_style", "�δ���Ʈ����");
			break;
		}
		// �÷���
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
		// �輼�� : ģ���߰� ��� ����  �߰���  :: ȸ�� ��ȣ ���
		hwarm_map.put("mem_num", hwvo.getMem_num());
		// ȸ�� ���̵� ���
		hwarm_map.put("mem_id", memberDaoInter.getMemberID(hwvo.getMem_num()));
		// ȸ�� ������ ���
		hwarm_map.put("mem_profile", memberDaoInter.getMemberProfile(hwvo.getMem_num()));
		
		return hwarm_map;
	}

	// �����̱� ����, ���� �� �� ������ �ҷ����� �޼���
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

	// �����̱ۿ� �±׵� ��ǰ�� �������� �ҷ����� �޼���
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

	// �ű�ö: �����̱� ����Ʈ ================================================
	
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
