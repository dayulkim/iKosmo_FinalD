package kr.co.kosmo.mvc.vo;

/*
type(������) - 1:����&���ǽ���/ 2:����Ʈ, 3:����&����, 4:�ܵ����� , 5:�繫���� ,6: ������� 7:��Ÿ
size(��ũ��) - 1: 10�� �̸�/2: 10���/ 3 : 20��� 4 : 30���, 5 : 40�� �̻�
with(������) -  1:�̱۶�����,/2: ��ȥ�κ�,/3: �Ʊ�� �Բ�, /4:���� �ڳ�� �Բ�/ 5:���� �ڳ�� �Բ�,/6: �θ�԰� �Բ�,/ 7:�ݷ������� �Բ� ,/8: ��Ÿ
tend(����) - 1:�̴ϸָ��� /2:�ǿ�����/3�ƽøָ���
favour(��ȣ��)- 1:���� , 2:������ , 3: ������ ,4: ���� 
buytend(���ż���)- 1:�귣��/2Ʈ����/3����Ƽ/4������/5:��Ÿ
style(���׸��� ��Ÿ��) -  1:��� / 2:�̴ϸ�&���� / 3:���߷�&������ / 4:��Ƽ��&��Ʈ�� / 5:Ŭ����&��ƽ
         6:����ġ&���ι潺 / 7:����&�θ�ƽ / 8:�δ���Ʈ���� / 9:�ѱ�&�ƽþ� / 10:����ũ&�ͽ���ġ
activity(�� �� Ȱ��) 1:����/ 2:�۾� / /3:�丮/4: � /5: ���� / 6:  ��ȭ��Ȱ(���ø���, ����), .. /7:��Ÿ
purpose(�뵵) /1:�ܼ��ְ�/ 2:Ȩī��/3: ȨŰģ/4: Ȩ�� 



 */

public class HouseInfoVO {





	private String mem_id, hinfo_type, hinfo_size, hinfo_tend, hinfo_style, hinfo_with, hinfo_favour, hinfo_buytend,
			hinfo_activity,hinfo_title;
	private int hinfo_num, hinfo_visible,hinfo_main;
	public int getHinfo_main() {
		return hinfo_main;
	}

	public void setHinfo_main(int hinfo_main) {
		this.hinfo_main = hinfo_main;
	}
	public String getHinfo_title() {
		return hinfo_title;
	}

	public void setHinfo_title(String hinfo_title) {
		this.hinfo_title = hinfo_title;
	}
	public int getHinfo_num() {
		return hinfo_num;
	}

	public void setHinfo_num(int hinfo_num) {
		this.hinfo_num = hinfo_num;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getHinfo_type() {
		return hinfo_type;
	}

	public void setHinfo_type(String hinfo_type) {
		this.hinfo_type = hinfo_type;
	}

	public String getHinfo_size() {
		return hinfo_size;
	}

	public void setHinfo_size(String hinfo_size) {
		this.hinfo_size = hinfo_size;
	}

	public String getHinfo_tend() {
		return hinfo_tend;
	}

	public void setHinfo_tend(String hinfo_tend) {
		this.hinfo_tend = hinfo_tend;
	}

	public String getHinfo_style() {
		return hinfo_style;
	}

	public void setHinfo_style(String hinfo_style) {
		this.hinfo_style = hinfo_style;
	}

	public String getHinfo_with() {
		return hinfo_with;
	}

	public void setHinfo_with(String hinfo_with) {
		this.hinfo_with = hinfo_with;
	}

	public String getHinfo_favour() {
		return hinfo_favour;
	}

	public void setHinfo_favour(String hinfo_favour) {
		this.hinfo_favour = hinfo_favour;
	}

	public String getHinfo_buytend() {
		return hinfo_buytend;
	}

	public void setHinfo_buytend(String hinfo_buytend) {
		this.hinfo_buytend = hinfo_buytend;
	}

	public String getHinfo_activity() {
		return hinfo_activity;
	}

	public void setHinfo_activity(String hinfo_activity) {
		this.hinfo_activity = hinfo_activity;
	}

	public int getHinfo_visible() {
		return hinfo_visible;
	}

	public void setHinfo_visible(int hinfo_visible) {
		this.hinfo_visible = hinfo_visible;
	}

}
