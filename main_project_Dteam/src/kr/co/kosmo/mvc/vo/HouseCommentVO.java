package kr.co.kosmo.mvc.vo;

/*
-- 집들이글 댓글 테이블
create table house_comment (
    comm_num number, -- 댓글의 번호 (auto increment)
    hou_num number, -- 집들이 글의 번호
    depth_num number, -- 댓글 / 대댓글 구분 : 0이면 댓글, 1이면 대댓글
    par_comm_numm number, -- 부모 댓글의 번호
    comm_content varchar2(1000), -- 댓글 내용
    reg_date date default sysdate, -- 댓글 등록 시간
    constraint house_comment_comm_num_pk primary key(comm_num),
    constraint house_comment_hou_num_fk foreign key(hou_num) references housewarming(hou_num)
);
 * */

public class HouseCommentVO {
	private int comm_num, hou_num, mem_num, depth_num, par_comm_numm;
	private String comm_content, reg_date, mem_profile, mem_id;
	
	public int getComm_num() {
		return comm_num;
	}
	public void setComm_num(int comm_num) {
		this.comm_num = comm_num;
	}
	public int getHou_num() {
		return hou_num;
	}
	public void setHou_num(int hou_num) {
		this.hou_num = hou_num;
	}
	public int getMem_num() {
		return mem_num;
	}
	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}
	public int getDepth_num() {
		return depth_num;
	}
	public void setDepth_num(int depth_num) {
		this.depth_num = depth_num;
	}
	public int getPar_comm_numm() {
		return par_comm_numm;
	}
	public void setPar_comm_numm(int par_comm_numm) {
		this.par_comm_numm = par_comm_numm;
	}
	public String getComm_content() {
		return comm_content;
	}
	public void setComm_content(String comm_content) {
		this.comm_content = comm_content;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public String getMem_profile() {
		return mem_profile;
	}
	public void setMem_profile(String mem_profile) {
		this.mem_profile = mem_profile;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	
	
	
	

}
