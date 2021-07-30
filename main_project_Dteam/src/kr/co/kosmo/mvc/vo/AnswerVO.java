package kr.co.kosmo.mvc.vo;

public class AnswerVO {

	private int ans_num;
	private String ans_content;
	private String ans_photo;
	private String ans_rdate;
	private int que_num;
	private String ans_id;
	
	
	public String getAns_id() {
		return ans_id;
	}
	public void setAns_id(String ans_id) {
		this.ans_id = ans_id;
	}
	public int getAns_num() {
		return ans_num;
	}
	public void setAns_num(int ans_num) {
		this.ans_num = ans_num;
	}
	public String getAns_content() {
		return ans_content;
	}
	public void setAns_content(String ans_content) {
		this.ans_content = ans_content;
	}
	public String getAns_photo() {
		return ans_photo;
	}
	public void setAns_photo(String ans_photo) {
		this.ans_photo = ans_photo;
	}
	public String getAns_rdate() {
		return ans_rdate;
	}
	public void setAns_rdate(String ans_rdate) {
		this.ans_rdate = ans_rdate;
	}
	public int getQue_num() {
		return que_num;
	}
	public void setQue_num(int que_num) {
		this.que_num = que_num;
	}

}
