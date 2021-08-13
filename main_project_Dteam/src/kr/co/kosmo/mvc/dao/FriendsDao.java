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
	
	// ģ����û
	@Override
	public void requestFriend(Map<String, Integer> num_map) {
		ss.insert("friends.request", num_map);
	}
	
	// ģ������ �ϸ鼭 ���°� ������Ʈ
	@Override
	public void acceptFriend(Map<String, Integer> num_map) {
		ss.update("friends.accept", num_map);
	}
	// ģ����� ��������
	@Override
	public List<MemberVO> memberlist(int mem_num) {
		return ss.selectList("friends.friends_list", mem_num);
	}
	// �� ȸ���� ���°� ��������
	@Override
	public List<FriendsVO> fri_req_stat(Map<String, Integer> num_map) {
		System.out.println("fri_req_stat dao*********************************");
		System.out.println("mem_num ::"+num_map.get("mem_num"));
		List<FriendsVO> list = ss.selectList("friends.req_stat", num_map);
		for(FriendsVO e : list) {
			System.out.println("1 ȸ����ȣ::"+e.getMem_num());
			System.out.println("2 ����ȣ::"+e.getReq_mem_num());
			System.out.println("3 db���°�::"+e.getReq_stat());
		}
		return list;
	}

	// ģ����û ��� : ���� ���濡�� ģ����û�� ���� ����
	@Override
	public void deleteRequest(Map<String, Integer> num_map) {
		ss.delete("friends.delete", num_map);
	}
	// ģ������ ���� : ������ ���°� 2�� ������Ʈ
	@Override
	public void unfollow(Map<String, Integer> num_map) {
		ss.update("friends.unfollow", num_map);
	}
	
	

	

}
