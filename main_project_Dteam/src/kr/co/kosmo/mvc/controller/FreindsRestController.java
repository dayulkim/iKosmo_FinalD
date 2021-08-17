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
	
	// 관계 상태값
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
			
			// 현재 요청상태 DB에서 불러오기
			List<FriendsVO> volist = service.getReq_stat(num_map);
			// 요청상태에 따라 status값 지정
			if (volist.size() == 0) { // 요청내역이 없는 경우
				status = 1; // 관계 없음
			}else {
				// 내역이 쌍방으로 있는 경우
				if(volist.size() > 1) {
					status = 4; // 친구 관계
				// 요청내역이 한쪽만 있는 경우
				}else {
					// 내 요청내역만 있는 경우
					if (volist.get(0).getReq_mem_num() == req_mem_num) {
						status = 3; // 신청중
					}else { // 상대방 요청내역만 있는 경우						
						status = 2; // 수락대기
					}
				}
			}
		}
		// 로그인상태, 상태값 담을 Map 생성
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("login", login);
		map.put("status", status);
		
		// map을 jsondata 형태로 변환
		ObjectMapper mapper = new ObjectMapper();
		String result = "";
		try {
			result = mapper.writeValueAsString(map);	
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	// 친구 버튼
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
			
			// 현재 요청상태 DB에서 불러오기
			List<FriendsVO> volist = service.getReq_stat(num_map);
			// 요청상태에 따라 친구신청/신청취소/해제 메서드 실행
			// 요청내역이 없는 경우
			if (volist.size() == 0) {
				service.request_friend(num_map);
				status = 1; // 신규신청 상태
			}
			else {
				// 요청내역이 쌍방으로 있는 경우 (이미 친구 상태)
				if(volist.size() > 1) {
					service.unfollow(num_map);
					status = 4; // 친구 해제					
				// 요청내역이 한쪽만 있는 경우
				}else {
					// 내 요청내역만 있는 경우
					if (volist.get(0).getReq_mem_num() == req_mem_num) {
						service.delete_request(num_map);
						status = 3; // 신청취소(요청내용 삭제)
					}else { // 상대방 요청내역만 있는 경우
						service.accept_friend(num_map);
						status = 2; // 신청수락
					}
				}
			}
		}
		// 로그인상태, 처리결과 담을 Map 생성
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("login", login);
		map.put("status", status);
		
		// map을 jsondata 형태로 변환
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
			System.out.println("친구해제 중 에러발생");
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
			System.out.println("친구수락 중 에러발생");
			result = "error";
		}
		return result;
	}

}
