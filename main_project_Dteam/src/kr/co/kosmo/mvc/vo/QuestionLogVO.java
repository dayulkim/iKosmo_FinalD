package kr.co.kosmo.mvc.vo;

public class QuestionLogVO {

	private String mem_id;
	private int type;
	private String que_search;
	private String search_time;
	
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getQue_search() {
		return que_search;
	}
	public void setQue_search(String que_search) {
		this.que_search = que_search;
	}
	public String getSearch_time() {
		return search_time;
	}
	public void setSearch_time(String search_time) {
		this.search_time = search_time;
	}
	
}
