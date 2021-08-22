package kr.co.kosmo.mvc.vo;

import java.util.List;

public class HousedetailVO {
	private int idx; // 집들이 내용 순서
	private int hou_num; // 집들이 번호
	private String hwd_content; // 집들이 내용
	private String hwd_photo; // 집들이 이미지
	private String hwd_tag; // 태그된 상품의 번호
	private String[] hwd_tag_pro_num; // 태그된 상품의 상품번호 리스트
	private List<String> hwd_tag_photo; // 태그된 상품의 사진 리스트

	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getHou_num() {
		return hou_num;
	}
	public void setHou_num(int hou_num) {
		this.hou_num = hou_num;
	}
	public String getHwd_content() {
		return hwd_content;
	}
	public void setHwd_content(String hwd_content) {
		this.hwd_content = hwd_content;
	}
	public String getHwd_photo() {
		return hwd_photo;
	}
	public void setHwd_photo(String hwd_photo) {
		this.hwd_photo = hwd_photo;
	}
	public String getHwd_tag() {
		return hwd_tag;
	}
	public void setHwd_tag(String hwd_tag) {
		this.hwd_tag = hwd_tag;
	}
	public List<String> getHwd_tag_photo() {
		return hwd_tag_photo;
	}
	public void setHwd_tag_photo(List<String> hwd_tag_photo) {
		this.hwd_tag_photo = hwd_tag_photo;
	}
	public String[] getHwd_tag_pro_num() {
		return hwd_tag_pro_num;
	}
	public void setHwd_tag_pro_num(String[] hwd_tag_pro_num) {
		this.hwd_tag_pro_num = hwd_tag_pro_num;
	}
	
	

}
