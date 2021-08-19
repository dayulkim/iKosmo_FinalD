package kr.co.kosmo.mvc.vo;

import java.util.List;

public class PurchaseVO {

	private int pur_num, mem_num;
	private String pur_date, rec_name, rec_tel, rec_addr, rec_card, rec_cardnum;
	private List<OrderListVO> ordvo_list;
	public int getPur_num() {
		return pur_num;
	}
	public void setPur_num(int pur_num) {
		this.pur_num = pur_num;
	}
	public int getMem_num() {
		return mem_num;
	}
	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}
	public String getPur_date() {
		return pur_date;
	}
	public void setPur_date(String pur_date) {
		this.pur_date = pur_date;
	}
	public String getRec_name() {
		return rec_name;
	}
	public void setRec_name(String rec_name) {
		this.rec_name = rec_name;
	}
	public String getRec_tel() {
		return rec_tel;
	}
	public void setRec_tel(String rec_tel) {
		this.rec_tel = rec_tel;
	}
	public String getRec_addr() {
		return rec_addr;
	}
	public void setRec_addr(String rec_addr) {
		this.rec_addr = rec_addr;
	}
	public String getRec_card() {
		return rec_card;
	}
	public void setRec_card(String rec_card) {
		this.rec_card = rec_card;
	}
	public String getRec_cardnum() {
		return rec_cardnum;
	}
	public void setRec_cardnum(String rec_cardnum) {
		this.rec_cardnum = rec_cardnum;
	}
	public List<OrderListVO> getOrdvo_list() {
		return ordvo_list;
	}
	public void setOrdvo_list(List<OrderListVO> ordvo_list) {
		this.ordvo_list = ordvo_list;
	}
	
	
	
}
