package kr.co.kosmo.mvc.vo;

public class CartVO {
	private int car_num;
	private int mem_num;
	private int pro_num;
	private int car_qty;
	private ProductVO productVO;
	
	public ProductVO getProductVO() {
		return productVO;
	}
	public void setProductVO(ProductVO productVO) {
		this.productVO = productVO;
	}
	public int getCar_num() {
		return car_num;
	}
	public void setCar_num(int car_num) {
		this.car_num = car_num;
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
	public int getCar_qty() {
		return car_qty;
	}
	public void setCar_qty(int car_qty) {
		this.car_qty = car_qty;
	}
	
	

}
