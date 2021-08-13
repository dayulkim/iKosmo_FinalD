package kr.co.kosmo.mvc.vo;

public class ProductVO {

	private int pro_num, pro_price, pro_delivery, pro_period, sel_num, pro_discount, pro_dprice, pro_total, pro_age, pro_review, pro_category;
	private String pro_name, pro_thumb, pro_photo, pro_detail, sel_name, sel_grade, pro_rdate;
	private SellerVO seller;
	
	private OrderListVO orderListVO; // provo 1개의 상품에 orderListVO N개의 주문 내역이 있으므로 1:N의 관계인 resultMap
	
	public OrderListVO getOrderListVO() {
		return orderListVO;
	}
	public void setOrderListVO(OrderListVO orderListVO) {
		this.orderListVO = orderListVO;
	}
	public int getPro_category() {
		return pro_category;
	}
	public void setPro_category(int pro_category) {
		this.pro_category = pro_category;
	}
	public SellerVO getSeller() {
		return seller;
	}
	public void setSeller(SellerVO seller) {
		this.seller = seller;
	}
	public int getPro_total() {
		return pro_total;
	}
	public int getPro_age() {
		return pro_age;
	}
	public void setPro_age(int pro_age) {
		this.pro_age = pro_age;
	}
	public void setPro_total(int pro_total) {
		this.pro_total = pro_total;
	}
	public int getPro_review() {
		return pro_review;
	}
	public void setPro_review(int pro_review) {
		this.pro_review = pro_review;
	}
	public String getPro_rdate() {
		return pro_rdate;
	}
	public void setPro_rdate(String pro_rdate) {
		this.pro_rdate = pro_rdate;
	}
	public int getPro_dprice() {
		return pro_dprice;
	}
	public void setPro_dprice(int pro_dprice) {
		this.pro_dprice = pro_dprice;
	}
	public String getSel_grade() {
		return sel_grade;
	}
	public void setSel_grade(String sel_grade) {
		this.sel_grade = sel_grade;
	}
	public String getSel_name() {
		return sel_name;
	}
	public void setSel_name(String sel_name) {
		this.sel_name = sel_name;
	}
	public int getPro_discount() {
		return pro_discount;
	}
	public void setPro_discount(int pro_discount) {
		this.pro_discount = pro_discount;
	}
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
	
	
	
	
	
}
