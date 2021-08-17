package kr.co.kosmo.mvc.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import kr.co.kosmo.mvc.service.FriendsServiceInter;
import kr.co.kosmo.mvc.vo.FriendsVO;

@RestController
public class FreindsRestController {
	
	@Autowired
	private FriendsServiceInter service;
	
	// ���� ���°�
	@RequestMapping(value="/crrFriStat", produces="application/json; charset=euc-kr")
	public String crrStatus(int req_mem_num, HttpSession session) {
		String login = null;
		int status = 0;
		Object sessionNum = session.getAttribute("sessionNum");
		if(sessionNum == null) {
			login = "no";
		}else {
			login = "yes";
			Map<String, Integer> num_map = new HashMap<String, Integer>();
			num_map.put("mem_num", Integer.parseInt(sessionNum.toString()));
			num_map.put("req_mem_num", req_mem_num);
			
			// ���� ��û���� DB���� �ҷ�����
			List<FriendsVO> volist = service.getReq_stat(num_map);
			// ��û���¿� ���� status�� ����
			if (volist.size() == 0) { // ��û������ ���� ���
				status = 1; // ���� ����
			}else {
				// ������ �ֹ����� �ִ� ���
				if(volist.size() > 1) {
					status = 4; // ģ�� ����
				// ��û������ ���ʸ� �ִ� ���
				}else {
					// �� ��û������ �ִ� ���
					if (volist.get(0).getReq_mem_num() == req_mem_num) {
						status = 3; // ��û��
					}else { // ���� ��û������ �ִ� ���						
						status = 2; // �������
					}
				}
			}
		}
		// �α��λ���, ���°� ���� Map ����
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("login", login);
		map.put("status", status);
		
		// map�� jsondata ���·� ��ȯ
		ObjectMapper mapper = new ObjectMapper();
		String result = "";
		try {
			result = mapper.writeValueAsString(map);	
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	// ģ�� ��ư
	@RequestMapping(value="/clickFriend", produces="application/json; charset=euc-kr")
	public String clickFriend(int req_mem_num, HttpSession session) {
		String login = null;
		int status = 0;
		if(session.getAttribute("sessionNum")==null) {
			login = "no";
		}else {
			login = "yes";
			Map<String, Integer> num_map = new HashMap<String, Integer>();
			num_map.put("mem_num", (int)session.getAttribute("sessionNum"));
			num_map.put("req_mem_num", req_mem_num);
			
			// ���� ��û���� DB���� �ҷ�����
			List<FriendsVO> volist = service.getReq_stat(num_map);
			// ��û���¿� ���� ģ����û/��û���/���� �޼��� ����
			// ��û������ ���� ���
			if (volist.size() == 0) {
				service.request_friend(num_map);
				status = 1; // �űԽ�û ����
			}
			else {
				// ��û������ �ֹ����� �ִ� ��� (�̹� ģ�� ����)
				if(volist.size() > 1) {
					service.unfollow(num_map);
					status = 4; // ģ�� ����					
				// ��û������ ���ʸ� �ִ� ���
				}else {
					// �� ��û������ �ִ� ���
					if (volist.get(0).getReq_mem_num() == req_mem_num) {
						service.delete_request(num_map);
						status = 3; // ��û���(��û���� ����)
					}else { // ���� ��û������ �ִ� ���
						service.accept_friend(num_map);
						status = 2; // ��û����
					}
				}
			}
		}
		// �α��λ���, ó����� ���� Map ����
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("login", login);
		map.put("status", status);
		
		// map�� jsondata ���·� ��ȯ
		ObjectMapper mapper = new ObjectMapper();
		String result = "";
		try {
			result = mapper.writeValueAsString(map);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
	@RequestMapping(value="/unfollow")
	public String unfollow(int req_mem_num, HttpSession session) {
		String result = null;
		int sessionNum = Integer.parseInt(session.getAttribute("sessionNum").toString());
		Map<String, Integer> num_map = new HashMap<String, Integer>();
		num_map.put("mem_num", sessionNum);
		num_map.put("req_mem_num", req_mem_num);
		try {
			service.unfollow(num_map);
			result = "success";
		}catch (Exception e) {
			System.out.println("ģ������ �� �����߻�");
			result = "error";
		}
		return result;
	}
	@RequestMapping(value="/accFriend")
	public String accFriend(int req_mem_num, HttpSession session) {
		String result = null;
		int sessionNum = Integer.parseInt(session.getAttribute("sessionNum").toString());
		Map<String, Integer> num_map = new HashMap<String, Integer>();
		num_map.put("mem_num", sessionNum);
		num_map.put("req_mem_num", req_mem_num);
		try {
			service.accept_friend(num_map);
			result = "success";
		}catch (Exception e) {
			System.out.println("ģ������ �� �����߻�");
			result = "error";
		}
		return result;
	}

}
