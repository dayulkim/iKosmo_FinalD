package kr.co.kosmo.mvc.vo;



public class InterestVO {

	private int mem_num, pro_num;
	private String int_time, pro_thumb;
	
	
	public String getPro_thumb() {
		return pro_thumb;
	}
	public void setPro_thumb(String pro_thumb) {
		this.pro_thumb = pro_thumb;
	}
	public int getMem_num() {
		return mem_num;
	}
	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}
	public int getPro_num() {
		return pro_num;
	}
	public void setPro_num(int pro_num) {
		this.pro_num = pro_num;
	}
	public String getInt_time() {
		return int_time;
	}
	public void setInt_time(String int_time) {
		this.int_time = int_time;
	}

}