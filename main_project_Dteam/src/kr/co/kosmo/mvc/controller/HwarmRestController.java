package kr.co.kosmo.mvc.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import kr.co.kosmo.mvc.service.HwarmServiceInter;

@RestController
public class HwarmRestController {
	
	@Autowired
	private HwarmServiceInter hwarmServiceInter;
	
	@RequestMapping(value="/suggestProduct", produces="application/json; charset=euc-kr")
	public String suggestProduct(HttpServletRequest request) throws UnsupportedEncodingException {
		String pro_name = request.getParameter("pro_name");
		String decode_res = URLDecoder.decode(pro_name, "UTF-8");
		System.out.println(decode_res);
		return hwarmServiceInter.suggestProduct(decode_res);
	}
	
	@RequestMapping(value="/currHwarmStatus", produces="application/json; charset=euc-kr")
	public String currHwarmStatus(int hou_num, HttpSession session) {
		System.out.println("currHwarmStatus ����");
		String login = null; // �α��� ���� Ȯ��
		int like = 0; // �α����� �Ǿ� �ִٸ� �� ��ȸ���� ���ƿ�, ��ũ�� ���� Ȯ��
		int scrap = 0;
		if(session.getAttribute("sessionNum")==null) {
			// �α����� �� �� ������ ���
			login = "unlogin";
			System.out.println("�α��� �� �� ����");
		} else {
			System.out.println("�α��� �� ����");
			// �α����� ������ ���
			login = "login";
			// ���ƿ並 ���� ����� ȸ����ȣ�� ���ƿ䰡 ���� ���� ��ȣ�� Map�� ����
			Map<String,Integer> num_map = new HashMap<String, Integer>();
			num_map.put("mem_num", (int) session.getAttribute("sessionNum"));
			num_map.put("hou_num", hou_num);
			// ������ ���ƿ� ���¸� �޾ƿ��� �޼��� ����
			like = hwarmServiceInter.hwarmLikeStatus(num_map);
			scrap = hwarmServiceInter.hwarmScrapStatus(num_map);
		}
		// �α��� ���¿� ��ȸ���� ���ƿ� ���¸� ���� Map ����
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("login", login);
		map.put("like", like);
		map.put("scrap", scrap);
		// map�� jsondata ���·� ��ȯ
		ObjectMapper mapper = new ObjectMapper();
		String result = null;
		try {
			result = mapper.writeValueAsString(map);
			System.out.println(result);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		// jsondata�� return
		return result;
	}
	

	@RequestMapping(value="/clickHwarmLike", produces="application/json; charset=euc-kr")
	public String clickLike(int hou_num, HttpSession session) {
		System.out.println("clickLike ����");
		String login = null;
		int status = 0;
		if(session.getAttribute("sessionNum")==null) { // �α��� �� �� ������ ���
			login = "unlogin";
			System.out.println("�α��� �� �� ����");
		} else { // �α��ε� ������ ���
			login = "login";
			System.out.println("�α��� �� ����");
			// ���ƿ並 ���� ����� ȸ����ȣ�� ���ƿ䰡 ���� ���� ��ȣ�� Map�� ����
			Map<String,Integer> num_map = new HashMap<String, Integer>();
			num_map.put("mem_num", (int) session.getAttribute("sessionNum"));
			num_map.put("hou_num", hou_num);
			// ���� ���ƿ� ���� �ľ�
			status = hwarmServiceInter.hwarmLikeStatus(num_map);
			// ���� ���ƿ� ���¿� ���� ���ƿ� �߰�/���� �޼��� ����
			if (status==0) { // ���ƿ䰡 �� ���� ������ ��� => ���ƿ� �߰�
				hwarmServiceInter.insertHwarmLike(num_map);
				status=1; // ���ƿ� ���� ����
			} else { // ���ƿ䰡 ���� ������ ��� => ���ƿ� ����
				hwarmServiceInter.delHwarmLike(num_map);
				status=0; // ���ƿ� ���� ����
			}
		}
		// �α��� ���¿� ��ȸ���� ���ƿ� ���¸� ���� Map ����
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("login", login);
		map.put("status", status);
		// Map�� jsondata ���·� ��ȯ
		ObjectMapper mapper = new ObjectMapper();
		String result = "";
		try {
			result = mapper.writeValueAsString(map);
			System.out.println(result);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		// jsondata�� return
		return result;
	}
	
	@RequestMapping(value="/clickHwarmScrap", produces="application/json; charset=euc-kr")
	public String clickHwarmScrap(int hou_num, HttpSession session) {
		System.out.println("clickHwarmScrap ����");
		String login = null;
		int status = 0;
		if(session.getAttribute("sessionNum")==null) { // �α��� �� �� ������ ���
			login = "unlogin";
			System.out.println("�α��� �� �� ����");
		} else { // �α��ε� ������ ���
			login = "login";
			System.out.println("�α��� �� ����");
			// ��ũ�� ���� ����� ȸ����ȣ�� ��ũ�� ���� ���� ��ȣ�� Map�� ����
			Map<String,Integer> num_map = new HashMap<String, Integer>();
			num_map.put("mem_num", (int) session.getAttribute("sessionNum"));
			num_map.put("hou_num", hou_num);
			// ���� ��ũ�� ���� �ľ�
			status = hwarmServiceInter.hwarmScrapStatus(num_map);
			// ���� ��ũ�� ���¿� ���� ��ũ�� �߰�/���� �޼��� ����
			if (status==0) { // ��ũ�� �� ���� ������ ��� => ��ũ�� �߰�
				hwarmServiceInter.insertHwarmScrap(num_map);
				status=1; // ��ũ�� ���� ����
			} else { // ��ũ�� ���� ������ ��� => ��ũ�� ����
				hwarmServiceInter.delHwarmScrap(num_map);
				status=0; // ��ũ�� ���� ����
			}
		}
		// �α��� ���¿� ��ȸ���� ��ũ�� ���¸� ���� Map ����
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("login", login);
		map.put("status", status);
		// Map�� jsondata ���·� ��ȯ
		ObjectMapper mapper = new ObjectMapper();
		String result = null;
		try {
			result = mapper.writeValueAsString(map);
			System.out.println(result);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		// jsondata�� return
		return result;
	}
	
	@RequestMapping(value="/insertHouseComment", produces="application/json; charset=euc-kr")
	public String insertHouseComment(int hou_num, String comment, int depth_num, HttpSession session,
			@RequestParam(value = "par_comm_numm", required = false, defaultValue = "-1") int par_comm_numm) throws UnsupportedEncodingException {
		int mem_num = Integer.parseInt(session.getAttribute("sessionNum").toString()); // ���� �ּ� ���� �ʿ�
		String comment_decode = URLDecoder.decode(comment, "UTF-8");
		// ����� �Է��ϰ� ��� �ۼ����� ���̵�� ������ �̹��� ������ ��� Map�� ��ȯ ����
		Map<String, String> mem_info = hwarmServiceInter.insertHouseComment(hou_num, mem_num, depth_num, par_comm_numm, comment_decode);
		// Map�� jsondata ���·� ��ȯ
		ObjectMapper mapper = new ObjectMapper();
		String result = null;
		try {
			result = mapper.writeValueAsString(mem_info);
			System.out.println(result);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		// jsondata�� return
		return result;
	}

	

}
