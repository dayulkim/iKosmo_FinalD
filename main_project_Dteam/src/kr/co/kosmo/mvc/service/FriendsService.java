package kr.co.kosmo.mvc.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.kosmo.mvc.dao.FriendsDaoInter;
import kr.co.kosmo.mvc.dao.SearchDaoInter;
import kr.co.kosmo.mvc.vo.FriendsVO;
import kr.co.kosmo.mvc.vo.HousewarmingVO;
import kr.co.kosmo.mvc.vo.MemberVO;
import kr.co.kosmo.mvc.vo.ProductVO;
import kr.co.kosmo.mvc.vo.QuestionVO;
import kr.co.kosmo.mvc.vo.SearchLogVO;

@Service
public class FriendsService implements FriendsServiceInter{
	
	@Autowired
	private FriendsDaoInter friendsDaoInter;

	@Override
	public List<MemberVO> getFriednsList(int mem_num) {
		return friendsDaoInter.memberlist(mem_num);
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
	

	
}
