package kr.co.kosmo.mvc.vo;

import java.util.List;

/* 
type -   1:���� / 2:���� 
how -    1:���� / 2:�ݼ��� / 3:������
sector - 1:���𵨸� / 2:Ȩ��Ÿ�ϸ� / 3:�κа��� / 4:����
style -  1:��� / 2:�̴ϸ�&���� / 3:���߷�&������ / 4:��Ƽ��&��Ʈ�� / 5:Ŭ����&��ƽ
         6:����ġ&���ι潺 / 7:����&�θ�ƽ / 8:�δ���Ʈ���� / 9:�ѱ�&�ƽþ� / 10:����ũ&�ͽ���ġ
period - ���� : ��
pay   -  ���� : ����
tone  -  1:black  ..? �漳�� 
*/

public class HousewarmingVO {
	private int hou_num; // ������ ��ȣ
	private String hou_name; // ������ ����
	private String hou_thumb; // ��ǥ�̹���
	private int hou_type; // ��������
	private int hou_space; // ���
	private int hou_how; // �۾����
	private int hou_sector; // �о�
	private int hou_style; // ��Ÿ��
	private int hou_period; // �Ⱓ
	private int hou_pay; // ����
	private int hou_tone; // �÷���
	private String hou_rdate; // �����
	private int hou_hit; // ��ȸ��
	private int hou_scrap; // ��ũ�� ��
	private int hou_like; // ���ƿ� ��
	private int mem_num; // ȸ����ȣ
	private MemberVO memvo; // MemberVO
	private List<HousedetailVO> hwdvoList; // �󼼳��� ����Ʈ
	private List<HouseCommentVO> hcmvoList; // ������ ��� ����Ʈ
	
	public int getHou_num() {
		return hou_num;
	}
	public void setHou_num(int hou_num) {
		this.hou_num = hou_num;
	}
	public String getHou_name() {
		return hou_name;
	}
	public void setHou_name(String hou_name) {
		this.hou_name = hou_name;
	}
	public String getHou_thumb() {
		return hou_thumb;
	}
	public void setHou_thumb(String hou_thumb) {
		this.hou_thumb = hou_thumb;
	}
	public int getHou_type() {
		return hou_type;
	}
	public void setHou_type(int hou_type) {
		this.hou_type = hou_type;
	}
	public int getHou_space() {
		return hou_space;
	}
	public void setHou_space(int hou_space) {
		this.hou_space = hou_space;
	}
	public int getHou_how() {
		return hou_how;
	}
	public void setHou_how(int hou_how) {
		this.hou_how = hou_how;
	}
	public int getHou_sector() {
		return hou_sector;
	}
	public void setHou_sector(int hou_sector) {
		this.hou_sector = hou_sector;
	}
	public int getHou_style() {
		return hou_style;
	}
	public void setHou_style(int hou_style) {
		this.hou_style = hou_style;
	}
	public int getHou_period() {
		return hou_period;
	}
	public void setHou_period(int hou_period) {
		this.hou_period = hou_period;
	}
	public int getHou_pay() {
		return hou_pay;
	}
	public void setHou_pay(int hou_pay) {
		this.hou_pay = hou_pay;
	}
	public int getHou_tone() {
		return hou_tone;
	}
	public void setHou_tone(int hou_tone) {
		this.hou_tone = hou_tone;
	}
	public String getHou_rdate() {
		return hou_rdate;
	}
	public void setHou_rdate(String hou_rdate) {
		this.hou_rdate = hou_rdate;
	}
	public int getHou_hit() {
		return hou_hit;
	}
	public void setHou_hit(int hou_hit) {
		this.hou_hit = hou_hit;
	}
	public int getHou_scrap() {
		return hou_scrap;
	}
	public void setHou_scrap(int hou_scrap) {
		this.hou_scrap = hou_scrap;
	}
	public int getHou_like() {
		return hou_like;
	}
	public void setHou_like(int hou_like) {
		this.hou_like = hou_like;
	}
	public int getMem_num() {
		return mem_num;
	}
	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}
	public MemberVO getMemvo() {
		return memvo;
	}
	public void setMemvo(MemberVO memvo) {
		this.memvo = memvo;
	}
	public List<HousedetailVO> getHwdvoList() {
		return hwdvoList;
	}
	public void setHwdvoList(List<HousedetailVO> hwdvoList) {
		this.hwdvoList = hwdvoList;
	}
	public List<HouseCommentVO> getHcmvoList() {
		return hcmvoList;
	}
	public void setHcmvoList(List<HouseCommentVO> hcmvoList) {
		this.hcmvoList = hcmvoList;
	}
	
	
}
