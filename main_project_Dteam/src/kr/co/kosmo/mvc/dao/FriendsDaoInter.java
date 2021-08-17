package kr.co.kosmo.mvc.dao;

import java.util.List;
import java.util.Map;

import kr.co.kosmo.mvc.vo.FriendsVO;
import kr.co.kosmo.mvc.vo.MemberVO;

public interface FriendsDaoInter {
	
	public void requestFriend(Map<String, Integer> num_map); // 친구 신청
	public void acceptFriend(Map<String, Integer> num_map); // 친구신청 수락 하면서 두 회원의 요청내역 중 상태값 업데이트
	public void deleteRequest(Map<String, Integer> num_map); // 나의 친구요청 취소 : 해당 내역 삭제
	public void unfollow(Map<String, Integer> num_map); // 친구상태 해체 : 양쪽 상태값 2로 업데이트
	public List<FriendsVO> friendsList(int mem_num); //친구목록
	public List<FriendsVO> friendsWtList(int mem_num); //나에게 친구요청한 리스트
	public List<FriendsVO> fri_req_stat(Map<String, Integer> num_map); // 두 회원간 상태값 가져오기

}
