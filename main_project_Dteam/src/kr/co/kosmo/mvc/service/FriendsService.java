package kr.co.kosmo.mvc.service;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import kr.co.kosmo.mvc.dao.FriendsDaoInter;
import kr.co.kosmo.mvc.dao.MemberDaoInter;
import kr.co.kosmo.mvc.vo.FriendsVO;
import kr.co.kosmo.mvc.vo.MemberVO;

@Service
public class FriendsService implements FriendsServiceInter{
	
	@Autowired
	private FriendsDaoInter friendsDaoInter;
	@Autowired
	private MemberDaoInter memberDaoInter;

	@Override
	public List<FriendsVO> getFriednsList(int mem_num) {
		return friendsDaoInter.friendsList(mem_num);
	}
	
	@Override
	public List<FriendsVO> getFriWtList(int mem_num) {
		return friendsDaoInter.friendsWtList(mem_num);
	}

	@Override
	public List<FriendsVO> getReq_stat(Map<String, Integer> num_map) {
		return friendsDaoInter.fri_req_stat(num_map);
	}

	@Override
	public void request_friend(Map<String, Integer> num_map) {
		friendsDaoInter.requestFriend(num_map);
	}

	@Override
	@Transactional
	public void accept_friend(Map<String, Integer> num_map) {
		friendsDaoInter.requestFriend(num_map);
		friendsDaoInter.acceptFriend(num_map);
	}

	@Override
	public void delete_request(Map<String, Integer> num_map) {
		friendsDaoInter.deleteRequest(num_map);
	}

	@Override
	public void unfollow(Map<String, Integer> num_map) {
		friendsDaoInter.unfollow(num_map);
	}

	@Override
	public MemberVO getMemberInfo(int mem_num) {
		return memberDaoInter.getMemberInfo(mem_num);
	}

}
