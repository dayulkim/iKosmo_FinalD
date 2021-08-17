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
		System.out.println("currHwarmStatus 실행");
		String login = null; // 로그인 상태 확인
		int like = 0; // 로그인이 되어 있다면 그 조회자의 좋아요, 스크랩 상태 확인
		int scrap = 0;
		if(session.getAttribute("sessionNum")==null) {
			// 로그인을 안 한 상태일 경우
			login = "unlogin";
			System.out.println("로그인 안 된 상태");
		} else {
			System.out.println("로그인 된 상태");
			// 로그인한 상태일 경우
			login = "login";
			// 좋아요를 누른 사람의 회원번호와 좋아요가 눌린 글의 번호를 Map에 셋팅
			Map<String,Integer> num_map = new HashMap<String, Integer>();
			num_map.put("mem_num", (int) session.getAttribute("sessionNum"));
			num_map.put("hou_num", hou_num);
			// 현재의 좋아요 상태를 받아오는 메서드 수행
			like = hwarmServiceInter.hwarmLikeStatus(num_map);
			scrap = hwarmServiceInter.hwarmScrapStatus(num_map);
		}
		// 로그인 상태와 조회자의 좋아요 상태를 담을 Map 생성
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("login", login);
		map.put("like", like);
		map.put("scrap", scrap);
		// map을 jsondata 형태로 변환
		ObjectMapper mapper = new ObjectMapper();
		String result = null;
		try {
			result = mapper.writeValueAsString(map);
			System.out.println(result);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		// jsondata를 return
		return result;
	}
	

	@RequestMapping(value="/clickHwarmLike", produces="application/json; charset=euc-kr")
	public String clickLike(int hou_num, HttpSession session) {
		System.out.println("clickLike 실행");
		String login = null;
		int status = 0;
		if(session.getAttribute("sessionNum")==null) { // 로그인 안 된 상태인 경우
			login = "unlogin";
			System.out.println("로그인 안 된 상태");
		} else { // 로그인된 상태인 경우
			login = "login";
			System.out.println("로그인 된 상태");
			// 좋아요를 누른 사람의 회원번호와 좋아요가 눌린 글의 번호를 Map에 셋팅
			Map<String,Integer> num_map = new HashMap<String, Integer>();
			num_map.put("mem_num", (int) session.getAttribute("sessionNum"));
			num_map.put("hou_num", hou_num);
			// 현재 좋아요 상태 파악
			status = hwarmServiceInter.hwarmLikeStatus(num_map);
			// 현재 좋아요 상태에 따라 좋아요 추가/삭제 메서드 실행
			if (status==0) { // 좋아요가 안 눌린 상태인 경우 => 좋아요 추가
				hwarmServiceInter.insertHwarmLike(num_map);
				status=1; // 좋아요 상태 변경
			} else { // 좋아요가 눌린 상태인 경우 => 좋아요 삭제
				hwarmServiceInter.delHwarmLike(num_map);
				status=0; // 좋아요 상태 변경
			}
		}
		// 로그인 상태와 조회자의 좋아요 상태를 담을 Map 생성
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("login", login);
		map.put("status", status);
		// Map을 jsondata 형태로 변환
		ObjectMapper mapper = new ObjectMapper();
		String result = "";
		try {
			result = mapper.writeValueAsString(map);
			System.out.println(result);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		// jsondata를 return
		return result;
	}
	
	@RequestMapping(value="/clickHwarmScrap", produces="application/json; charset=euc-kr")
	public String clickHwarmScrap(int hou_num, HttpSession session) {
		System.out.println("clickHwarmScrap 실행");
		String login = null;
		int status = 0;
		if(session.getAttribute("sessionNum")==null) { // 로그인 안 된 상태인 경우
			login = "unlogin";
			System.out.println("로그인 안 된 상태");
		} else { // 로그인된 상태인 경우
			login = "login";
			System.out.println("로그인 된 상태");
			// 스크랩 누른 사람의 회원번호와 스크랩 눌린 글의 번호를 Map에 셋팅
			Map<String,Integer> num_map = new HashMap<String, Integer>();
			num_map.put("mem_num", (int) session.getAttribute("sessionNum"));
			num_map.put("hou_num", hou_num);
			// 현재 스크랩 상태 파악
			status = hwarmServiceInter.hwarmScrapStatus(num_map);
			// 현재 스크랩 상태에 따라 스크랩 추가/삭제 메서드 실행
			if (status==0) { // 스크랩 안 눌린 상태인 경우 => 스크랩 추가
				hwarmServiceInter.insertHwarmScrap(num_map);
				status=1; // 스크랩 상태 변경
			} else { // 스크랩 눌린 상태인 경우 => 스크랩 삭제
				hwarmServiceInter.delHwarmScrap(num_map);
				status=0; // 스크랩 상태 변경
			}
		}
		// 로그인 상태와 조회자의 스크랩 상태를 담을 Map 생성
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("login", login);
		map.put("status", status);
		// Map을 jsondata 형태로 변환
		ObjectMapper mapper = new ObjectMapper();
		String result = null;
		try {
			result = mapper.writeValueAsString(map);
			System.out.println(result);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		// jsondata를 return
		return result;
	}
	
	@RequestMapping(value="/insertHouseComment", produces="application/json; charset=euc-kr")
	public String insertHouseComment(int hou_num, String comment, int depth_num, HttpSession session,
			@RequestParam(value = "par_comm_numm", required = false, defaultValue = "-1") int par_comm_numm) throws UnsupportedEncodingException {
		int mem_num = Integer.parseInt(session.getAttribute("sessionNum").toString()); // 추후 주석 해제 필요
		String comment_decode = URLDecoder.decode(comment, "UTF-8");
		// 댓글을 입력하고 댓글 작성자의 아이디와 프로필 이미지 정보가 담긴 Map을 반환 받음
		Map<String, String> mem_info = hwarmServiceInter.insertHouseComment(hou_num, mem_num, depth_num, par_comm_numm, comment_decode);
		// Map을 jsondata 형태로 변환
		ObjectMapper mapper = new ObjectMapper();
		String result = null;
		try {
			result = mapper.writeValueAsString(mem_info);
			System.out.println(result);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		// jsondata를 return
		return result;
	}

	

}
