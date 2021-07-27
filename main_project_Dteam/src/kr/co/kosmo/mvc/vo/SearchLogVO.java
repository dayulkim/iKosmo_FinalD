package kr.co.kosmo.mvc.vo;

public class SearchLogVO {

	private int slog_num;
	private String slog_idn, slog_reip, slog_agent, slog_word, slog_time;
	private int search_cnt;
	
	public int getSlog_num() {
		return slog_num;
	}
	public void setSlog_num(int slog_num) {
		this.slog_num = slog_num;
	}
	public String getSlog_idn() {
		return slog_idn;
	}
	public void setSlog_idn(String slog_idn) {
		this.slog_idn = slog_idn;
	}
	public String getSlog_reip() {
		return slog_reip;
	}
	public void setSlog_reip(String slog_reip) {
		this.slog_reip = slog_reip;
	}
	public String getSlog_agent() {
		return slog_agent;
	}
	public void setSlog_agent(String slog_agent) {
		this.slog_agent = slog_agent;
	}
	public String getSlog_word() {
		return slog_word;
	}
	public void setSlog_word(String slog_word) {
		this.slog_word = slog_word;
	}
	public String getSlog_time() {
		return slog_time;
	}
	public void setSlog_time(String slog_time) {
		this.slog_time = slog_time;
	}
	public int getSearch_cnt() {
		return search_cnt;
	}
	public void setSearch_cnt(int search_cnt) {
		this.search_cnt = search_cnt;
	}
	
	
	
}
