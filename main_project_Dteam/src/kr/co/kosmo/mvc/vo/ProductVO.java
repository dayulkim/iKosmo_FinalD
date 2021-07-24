package kr.co.kosmo.mvc.vo;

public class ProductVO {
//	create table product (
//			pro_num number primary key, -- ��ǰ��ȣ
//			pro_name varchar2(150) constraint product_pro_name_nn not null, -- ��ǰ��
//			pro_category varchar2(150), -- ��ǰ ī�װ�
//			pro_price number constraint product_pro_price_nn not null, -- ��ǰ����
//			pro_discount number default 0, -- ������ -- default : 0 -- mapper���� �ǸŰ� = �Һ��ڰ�(1- ������/100)
//			pro_delivery number default 0, -- ��ۺ�
//			pro_period number default 2, -- ��۱Ⱓ
//			pro_thumb varchar2(300), -- ��ǥ�̹���
//			pro_photo varchar2(300), -- ��ǰ�̹���
//			pro_detail varchar2(1000),-- ��ǰ����
//			pro_rdate date default sysdate, -- ��ǰ�����
//			sel_num number, -- ��ü��ȣ
//			constraint product_sel_num_fk foreign key(sel_num) references seller(sel_num)
//			);-- �ܷ�Ű�� ��ü ���̺� ����
	private int pro_num, pro_price, pro_discount, pro_delivery, pro_period, sel_num;
	private String pro_name, pro_category, pro_thumb, pro_photo, pro_detail, pro_rdate;
	private int pro_sellprice; // mapper���� pro_price * ((100-pro_discount)/100) = pro_sellprice
	private OrderListVO orderListVO;

	public OrderListVO getOrderListVO() {
		return orderListVO;
	}

	public void setOrderListVO(OrderListVO orderListVO) {
		this.orderListVO = orderListVO;
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

	public int getPro_discount() {
		return pro_discount;
	}

	public void setPro_discount(int pro_discount) {
		this.pro_discount = pro_discount;
	}

	public int getPro_sellprice() {
		return pro_sellprice;
	}

	public void setPro_sellprice(int pro_sellprice) {
		this.pro_sellprice = pro_sellprice;
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

	public String getPro_category() {
		return pro_category;
	}

	public void setPro_category(String pro_category) {
		this.pro_category = pro_category;
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

}
