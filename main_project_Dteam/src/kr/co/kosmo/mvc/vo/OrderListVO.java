package kr.co.kosmo.mvc.vo;

public class OrderListVO {

//	ord_num number primary key, -- 구매내역 번호 -- PK
//	mem_num number, -- 회원번호
//	pro_num number, -- 상품번호
//	ord_qty number, -- 수량
//	ord_date date default sysdate, -- 구매일  -- default : sysdate

	private int ord_num, mem_num, pro_num, ord_qty;
	private String ord_date;
	
	private ProductVO productVO;

	public ProductVO getProductVO() {
		return productVO;
	}

	public void setProductVO(ProductVO productVO) {
		this.productVO = productVO;
	}

	public int getOrd_num() {
		return ord_num;
	}

	public void setOrd_num(int ord_num) {
		this.ord_num = ord_num;
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

	public int getOrd_qty() {
		return ord_qty;
	}

	public void setOrd_qty(int ord_qty) {
		this.ord_qty = ord_qty;
	}

	public String getOrd_date() {
		return ord_date;
	}

	public void setOrd_date(String ord_date) {
		this.ord_date = ord_date;
	}

}