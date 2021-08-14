package kr.co.kosmo.mvc.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.vo.FriendsVO;
import kr.co.kosmo.mvc.vo.MemberVO;

@Repository
public class FriendsDao implements FriendsDaoInter{
	@Autowired
	private SqlSessionTemplate ss;
	
	// 친구신청
	@Override
	public void requestFriend(Map<String, Integer> num_map) {
		ss.insert("friends.request", num_map);
	}
	
	// 친구수락 하면서 상태값 업데이트
	@Override
	public void acceptFriend(Map<String, Integer> num_map) {
		ss.update("friends.accept", num_map);
	}
	// 내친구목록 가져오기 (stat=1)
	@Override
	public List<FriendsVO> friendsList(int mem_num) {
		return ss.selectList("friends.friList", mem_num);
	}
	// 나에게 친구요청한 리스트 가져오기
	@Override
	public List<FriendsVO> friendsWtList(int mem_num){
		return ss.selectList("friends.friWtList", mem_num);
	}
	
	// 두 회원간 상태값 가져오기
	@Override
	public List<FriendsVO> fri_req_stat(Map<String, Integer> num_map) {
		System.out.println("fri_req_stat dao*********************************");
		System.out.println("mem_num ::"+num_map.get("mem_num"));
		List<FriendsVO> list = ss.selectList("friends.req_stat", num_map);
		for(FriendsVO e : list) {
			System.out.println("1 회원번호::"+e.getMem_num());
			System.out.println("2 상대번호::"+e.getReq_mem_num());
			System.out.println("3 db상태값::"+e.getReq_stat());
		}
		return list;
	}

	// 친구신청 취소 : 내가 상대방에게 친구요청한 내역 삭제
	@Override
	public void deleteRequest(Map<String, Integer> num_map) {
		ss.delete("friends.delete", num_map);
	}
	// 친구관계 해제 : 양쪽의 상태값 2로 업데이트
	@Override
	public void unfollow(Map<String, Integer> num_map) {
		ss.update("friends.unfollow", num_map);
	}
	
	

	

}
