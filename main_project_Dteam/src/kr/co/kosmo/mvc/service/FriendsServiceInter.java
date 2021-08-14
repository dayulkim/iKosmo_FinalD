package kr.co.kosmo.mvc.service;

import java.util.List;
import java.util.Map;

import kr.co.kosmo.mvc.vo.FriendsVO;
import kr.co.kosmo.mvc.vo.HousewarmingVO;
import kr.co.kosmo.mvc.vo.MemberVO;
import kr.co.kosmo.mvc.vo.ProductVO;
import kr.co.kosmo.mvc.vo.QuestionVO;
import kr.co.kosmo.mvc.vo.SearchLogVO;

public interface FriendsServiceInter {
	
	//김세연 친구 기능 관련
	// 친구목록 불러오기
	public List<FriendsVO> getFriednsList(int mem_num);
	// 나에게 친구요청한 리스트 가져오기
	public List<FriendsVO> getFriWtList(int mem_num);
	// 대상자간 요청상태값 가져오기
	public List<FriendsVO> getReq_stat(Map<String, Integer> num_map);
	// 친구 요청 하기
	public void request_friend(Map<String, Integer> num_map);
	// 친구 수락하기
	public void accept_friend(Map<String, Integer> num_map);
	// 친구 요청 취소-삭제하기
	public void delete_request(Map<String, Integer> num_map);
	// 친구상태 해제
	public void unfollow(Map<String, Integer> num_map);
}
