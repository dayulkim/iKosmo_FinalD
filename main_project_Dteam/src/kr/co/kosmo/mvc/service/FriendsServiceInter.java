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
	
	//�輼�� ģ�� ��� ����
	// ģ����� �ҷ�����
	public List<FriendsVO> getFriednsList(int mem_num);
	// ������ ģ����û�� ����Ʈ ��������
	public List<FriendsVO> getFriWtList(int mem_num);
	// ����ڰ� ��û���°� ��������
	public List<FriendsVO> getReq_stat(Map<String, Integer> num_map);
	// ģ�� ��û �ϱ�
	public void request_friend(Map<String, Integer> num_map);
	// ģ�� �����ϱ�
	public void accept_friend(Map<String, Integer> num_map);
	// ģ�� ��û ���-�����ϱ�
	public void delete_request(Map<String, Integer> num_map);
	// ģ������ ����
	public void unfollow(Map<String, Integer> num_map);
}
