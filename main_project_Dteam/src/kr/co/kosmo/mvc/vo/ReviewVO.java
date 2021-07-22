package kr.co.kosmo.mvc.vo;

public class ReviewVO {
//	REV_NUM	NUMBER
//	REV_CONTENT	VARCHAR2(1000 BYTE)
//	REV_PHOTO	VARCHAR2(500 BYTE)
//	REV_PERIOD	NUMBER
//	REV_COLOR	NUMBER
//	REV_STAR	NUMBER
//	REV_RDATE	DATE
//	MEM_NUM	NUMBER
//	pro_NUM	NUMBER

	private int rev_num;
	private String rev_content;
	private String rev_photo;
	private int rev_period;
	private int rev_color;
	private int rev_star;
	private String rev_rdate;
	private int mem_num;
	private int pro_num;

	public int getRev_num() {
		return rev_num;
	}

	public void setRev_num(int rev_num) {
		this.rev_num = rev_num;
	}

	public String getRev_content() {
		return rev_content;
	}

	public void setRev_content(String rev_content) {
		this.rev_content = rev_content;
	}

	public String getRev_photo() {
		return rev_photo;
	}

	public void setRev_photo(String rev_photo) {
		this.rev_photo = rev_photo;
	}

	public int getRev_period() {
		return rev_period;
	}

	public void setRev_period(int rev_period) {
		this.rev_period = rev_period;
	}

	public int getRev_color() {
		return rev_color;
	}

	public void setRev_color(int rev_color) {
		this.rev_color = rev_color;
	}

	public int getRev_star() {
		return rev_star;
	}

	public void setRev_star(int rev_star) {
		this.rev_star = rev_star;
	}

	public String getRev_rdate() {
		return rev_rdate;
	}

	public void setRev_rdate(String rev_rdate) {
		this.rev_rdate = rev_rdate;
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

}
