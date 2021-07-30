package kr.co.kosmo.mvc.vo;

import java.util.List;

public class QuestionVO {
	
	private int que_num;
	private String que_title;
	private String que_content;
	private String que_photo;
	private String que_keyword;
	private String que_rdate;
	private int mem_num;
	private String mem_id;
	private int que_hit;
	private int que_ans;
	
	private List<AnswerVO> answer;
	
	public List<AnswerVO> getAnswer() {
		return answer;
	}
	public void setAnswer(List<AnswerVO> answer) {
		this.answer = answer;
	}
	
	public int getQue_hit() {
		return que_hit;
	}
	public void setQue_hit(int que_hit) {
		this.que_hit = que_hit;
	}
	public int getQue_ans() {
		return que_ans;
	}
	public void setQue_ans(int que_ans) {
		this.que_ans = que_ans;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public int getQue_num() {
		return que_num;
	}
	public void setQue_num(int que_num) {
		this.que_num = que_num;
	}
	public String getQue_title() {
		return que_title;
	}
	public void setQue_title(String que_title) {
		this.que_title = que_title;
	}
	public String getQue_content() {
		return que_content;
	}
	public void setQue_content(String que_content) {
		this.que_content = que_content;
	}
	public String getQue_photo() {
		return que_photo;
	}
	public void setQue_photo(String que_photo) {
		this.que_photo = que_photo;
	}
	public String getQue_keyword() {
		return que_keyword;
	}
	public void setQue_keyword(String que_keyword) {
		this.que_keyword = que_keyword;
	}
	public String getQue_rdate() {
		return que_rdate;
	}
	public void setQue_rdate(String que_rdate) {
		this.que_rdate = que_rdate;
	}
	public int getMem_num() {
		return mem_num;
	}
	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}

	
	
}
