package kr.co.kosmo.mvc.dao;

import java.util.List;
import java.util.Map;

import kr.co.kosmo.mvc.vo.FriendsVO;
import kr.co.kosmo.mvc.vo.MemberVO;

public interface FriendsDaoInter {
	
	public void requestFriend(Map<String, Integer> num_map); // ģ�� ��û
	public void acceptFriend(Map<String, Integer> num_map); // ģ����û ���� �ϸ鼭 �� ȸ���� ��û���� �� ���°� ������Ʈ
	public void deleteRequest(Map<String, Integer> num_map); // ���� ģ����û ��� : �ش� ���� ����
	public void unfollow(Map<String, Integer> num_map); // ģ������ ��ü : ���� ���°� 2�� ������Ʈ
	public List<FriendsVO> friendsList(int mem_num); //ģ�����
	public List<FriendsVO> friendsWtList(int mem_num); //������ ģ����û�� ����Ʈ
	public List<FriendsVO> fri_req_stat(Map<String, Integer> num_map); // �� ȸ���� ���°� ��������

}
