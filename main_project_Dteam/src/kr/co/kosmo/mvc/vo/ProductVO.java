package kr.co.kosmo.mvc.vo;

public class ProductVO { // Alt Shift S
	private int pro_num, pro_price, pro_discount, pro_delivery, pro_period, sel_num;
	private String pro_name, pro_thumb, pro_photo, pro_detail, pro_rdate; // pro_detail(clob) => mapper에서 형변환 요하므로, varchar2로 변경
	// private Date pro_rdate; // 자바식과 오라클식 date의 데이터 형식이 달라서 (=년월일 따로붙여줘야) String으로  받았습니다.
	private int pro_sellprice; // mapper에서 pro_price * pro_discount 할인율을 계산한 할인 소비자 최종가격
	// pro_discount (할인율) 컬럼 추가, 매퍼에서 판매가 = 소비자가(1- 할인율/100)



	public int getPro_num() {
		return pro_num;
	}

	public void setPro_num(int pro_num) {
		this.pro_num = pro_num;
	}

	public int getPro_price() {
		return pro_price;
	}

	public void setPro_price(int pro_price) {
		this.pro_price = pro_price;
	}

	public int getPro_discount() {
		return pro_discount;
	}

	public void setPro_discount(int pro_discount) {
		this.pro_discount = pro_discount;
	}

	public int getPro_delivery() {
		return pro_delivery;
	}

	public void setPro_delivery(int pro_delivery) {
		this.pro_delivery = pro_delivery;
	}

	public int getPro_period() {
		return pro_period;
	}

	public void setPro_period(int pro_period) {
		this.pro_period = pro_period;
	}

	public int getSel_num() {
		return sel_num;
	}

	public void setSel_num(int sel_num) {
		this.sel_num = sel_num;
	}

	public String getPro_name() {
		return pro_name;
	}

	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}

	public String getPro_thumb() {
		return pro_thumb;
	}

	public void setPro_thumb(String pro_thumb) {
		this.pro_thumb = pro_thumb;
	}

	public String getPro_photo() {
		return pro_photo;
	}

	public void setPro_photo(String pro_photo) {
		this.pro_photo = pro_photo;
	}

	public String getPro_detail() {
		return pro_detail;
	}

	public void setPro_detail(String pro_detail) {
		this.pro_detail = pro_detail;
	}

	public String getPro_rdate() {
		return pro_rdate;
	}

	public void setPro_rdate(String pro_rdate) {
		this.pro_rdate = pro_rdate;
	}
	
	public int getPro_sellprice() {
		return pro_sellprice;
	}

	public void setPro_sellprice(int pro_sellprice) {
		this.pro_sellprice = pro_sellprice;
	}

}
