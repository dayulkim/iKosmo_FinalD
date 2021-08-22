package kr.co.kosmo.mvc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.co.kosmo.mvc.service.HwarmServiceInter;
import kr.co.kosmo.mvc.vo.HouseCommentVO;
import kr.co.kosmo.mvc.vo.HousedetailVO;
import kr.co.kosmo.mvc.vo.HousewarmingVO;

@Controller
public class HwarmController {

	@Autowired
	private HwarmServiceInter hwarmServiceInter;

	// 1) �ű�ö �����̱� ����Ʈ =============================================================================================

	@RequestMapping("/community")
	public String filter(Model m,
			@RequestParam(value = "hou_order", required = false, defaultValue = "0") String horder,
			@RequestParam(value = "hou_type", required = false, defaultValue = "0") String htype, 
			@RequestParam(value = "hou_space", required = false, defaultValue = "0") String hspace,
			@RequestParam(value = "hou_pay", required = false, defaultValue = "0") String hpay, 
			@RequestParam(value = "hou_how", required = false, defaultValue = "0") String hhow,
			@RequestParam(value = "hou_style", required = false, defaultValue = "0") String hstyle, 
			@RequestParam(value = "hou_tone", required = false, defaultValue = "0") String htone) {

		List<HousewarmingVO> vo = hwarmServiceInter.filter(horder, htype, hspace, hpay, hhow, hstyle, htone);
		
		m.addAttribute("list", vo);
				
		return "housewarming/hwarm_list";
	}

	// 2) ȫ���� �����̱� �Է� ====================================================================================================
	
	@RequestMapping("/hwarm_write")
	public String housewarming_write(Model m) {
		HousedetailVO vo = new HousedetailVO();
		m.addAttribute("hwd_content", vo.getHwd_content());
		return "housewarming/hwarm_write";
	}

	@RequestMapping("/popupImage")
	public String popupImage() {
		return "housewarming/popup/popupImage";
	}

	@RequestMapping("/insertHwarm")
	public String insertHwarm(HttpSession session, HttpServletRequest request, HousewarmingVO houvo, HousedetailVO hwdvo,
			MultipartFile[] imgfile, String[] hwd_content_list) {

		// HousewarmingVO�� ���� (
		houvo.setMem_num(Integer.parseInt(session.getAttribute("sessionNum").toString()));// ȸ����ȣ
		houvo.setHou_thumb(imgfile[0].getOriginalFilename()); // �����

		// HousedetailVO�� ����
		List<HousedetailVO> hwdvoList = new ArrayList<HousedetailVO>();
		// ���� ���ε� ó��
		List<String> hwd_photo_array = hwarmServiceInter.copyandGetFileNames(request, imgfile);
		// �±׵� ��ǰ ����Ʈ
		String[] hwd_tag_array = new String[] {"none"}; // �±׵� ��ǰ�� ���� ��츦 ����Ͽ� ������ ��Ƶд�.
		if (hwdvo.getHwd_tag() != null) { // �±׵� ��ǰ�� �ִٸ�
			hwd_tag_array = hwdvo.getHwd_tag().split(",");
		}
		// ������ �󼼳��� vo�� ����, ����, �±׵� ��ǰ ����
		for (int i = 0; i < hwd_photo_array.size(); i++) {
			HousedetailVO vo = new HousedetailVO();
			vo.setHwd_photo(hwd_photo_array.get(i));
			vo.setHwd_content(hwd_content_list[i].replace("'", "''")); // ����Ŭ�� ��������ǥ�� insert �� �ǹǷ� �� ������ �ٿ���
			vo.setHwd_tag(hwd_tag_array[i]);
			hwdvoList.add(vo);
		}
		// �����ͺ��̽��� insert
		hwarmServiceInter.insertHwarm(houvo, hwdvoList);
		return "redirect:/community";

	}

	// 3) ȫ���� �����̱� �󼼺��� ====================================================================================================
	
	@RequestMapping("/hwarm_detail")
	public ModelAndView hwarm_detail(int hou_num, HttpSession session) {

		// ModelAndView ����
		ModelAndView mav = new ModelAndView();
		// �����̱� ���� ����
		mav.addObject("hwarm", hwarmServiceInter.selectHwarm(hou_num));
		// �����̱� �� ���� ����
		List<HousedetailVO> hwd_list = hwarmServiceInter.selectHousedetail(hou_num);
		mav.addObject("hdetail", hwd_list);
		// ������ ��� ����Ʈ ����
		List<HouseCommentVO> hcm_list = hwarmServiceInter.selectHouseComment(hou_num);
		mav.addObject("hcomment", hcm_list);
		// �±׵� ��ǰ�� �̹������� ����
		for (HousedetailVO hdvo : hwd_list) {
			String hwd_tag = hdvo.getHwd_tag();
			List<String> pro_thumb = new ArrayList<>();
			if (hwd_tag.equals("none")) { // �±׵� ��ǰ�� ���� ���
				pro_thumb.add("none");
			} else { // �±׵� ��ǰ�� �ִ� ���
				String[] hwd_tag_list = hwd_tag.split("-");
				hdvo.setHwd_tag_pro_num(hwd_tag_list);
				for (String pro_num : hwd_tag_list) {
					String photo = hwarmServiceInter.taggedProduct(Integer.parseInt(pro_num));
					pro_thumb.add(photo);
				}
			}
			hdvo.setHwd_tag_photo(pro_thumb);
		}
		mav.setViewName("housewarming/hwarm_detail");
		return mav;
	}

};
