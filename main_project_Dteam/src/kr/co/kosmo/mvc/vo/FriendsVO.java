package kr.co.kosmo.mvc.vo;

public class FriendsVO {
	
	private int fol_num;
	private int mem_num;
	private int req_mem_num;
	private int req_stat;
	private String req_date;
	private String acc_date;
	private MemberVO memvo;
	
	public MemberVO getMemvo() {
		return memvo;
	}
	public void setMemvo(MemberVO memvo) {
		this.memvo = memvo;
	}
	public int getFol_num() {
		return fol_num;
	}
	public void setFol_num(int fol_num) {
		this.fol_num = fol_num;
	}
	public int getMem_num() {
		return mem_num;
	}
	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}
	public int getReq_mem_num() {
		return req_mem_num;
	}
	public void setReq_mem_num(int req_mem_num) {
		this.req_mem_num = req_mem_num;
	}
	public int getReq_stat() {
		return req_stat;
	}
	public void setReq_stat(int req_stat) {
		this.req_stat = req_stat;
	}
	public String getReq_date() {
		return req_date;
	}
	public void setReq_date(String req_date) {
		this.req_date = req_date;
	}
	public String getAcc_date() {
		return acc_date;
	}
	public void setAcc_date(String acc_date) {
		this.acc_date = acc_date;
	}

}
