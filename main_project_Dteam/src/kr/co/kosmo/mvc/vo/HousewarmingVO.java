package kr.co.kosmo.mvc.vo;

import java.util.List;

/* 
type -   1:원룸 / 2:투룸 
how -    1:셀프 / 2:반셀프 / 3:전문가
sector - 1:리모델링 / 2:홈스타일링 / 3:부분공사 / 4:건축
style -  1:모던 / 2:미니멀&심플 / 3:내추럴&북유럽 / 4:빈티지&레트로 / 5:클래식&앤틱
         6:프렌치&프로방스 / 7:러블리&로맨틱 / 8:인더스트리얼 / 9:한국&아시아 / 10:유니크&믹스매치
period - 단위 : 주
pay   -  단위 : 만원
tone  -  1:black  ..? 톤설정 
*/

public class HousewarmingVO {
	private int hou_num; // 집들이 번호
	private String hou_name; // 집들이 제목
	private String hou_thumb; // 대표이미지
	private int hou_type; // 공간유형
	private int hou_space; // 평수
	private int hou_how; // 작업방식
	private int hou_sector; // 분야
	private int hou_style; // 스타일
	private int hou_period; // 기간
	private int hou_pay; // 예산
	private int hou_tone; // 컬러톤
	private String hou_rdate; // 등록일
	private int hou_hit; // 조회수
	private int hou_scrap; // 스크랩 수
	private int hou_like; // 좋아요 수
	private int mem_num; // 회원번호
	private MemberVO memvo; // MemberVO
	private List<HousedetailVO> hwdvoList; // 상세내용 리스트
	private List<HouseCommentVO> hcmvoList; // 집들이 댓글 리스트
	
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
