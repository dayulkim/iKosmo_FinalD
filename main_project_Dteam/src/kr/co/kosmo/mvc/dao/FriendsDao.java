package kr.co.kosmo.mvc.dao;

import java.util.List;
import java.util.Map;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import kr.co.kosmo.mvc.vo.FriendsVO;

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
	// ��ģ����� �������� (stat=1)
	@Override
	public List<FriendsVO> friendsList(int mem_num) {
		return ss.selectList("friends.friList", mem_num);
	}
	// ������ ģ����û�� ����Ʈ ��������
	@Override
	public List<FriendsVO> friendsWtList(int mem_num){
		return ss.selectList("friends.friWtList", mem_num);
	}
	
	// �� ȸ���� ���°� ��������
	@Override
	public List<FriendsVO> fri_req_stat(Map<String, Integer> num_map) {
		List<FriendsVO> list = ss.selectList("friends.req_stat", num_map);
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
