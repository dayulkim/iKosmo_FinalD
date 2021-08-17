package kr.co.kosmo.mvc.vo;

// 조회 기록 로그 VO
public class AdminHitVO {
	private int pro_num; 
	private String mem_id, int_time, pro_thumb;
	
	public String getPro_thumb() {
		return pro_thumb;
	}
	public void setPro_thumb(String pro_thumb) {
		this.pro_thumb = pro_thumb;
	}
	public int getPro_num() {
		return pro_num;
	}
	public void setPro_num(int pro_num) {
		this.pro_num = pro_num;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getInt_time() {
		return int_time;
	}
	public void setInt_time(String int_time) {
		this.int_time = int_time;
	}
	
}
