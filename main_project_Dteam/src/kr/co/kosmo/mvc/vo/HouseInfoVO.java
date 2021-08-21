package kr.co.kosmo.mvc.vo;

/*
type(집형태) - 1:원룸&오피스텔/ 2:아파트, 3:빌라&연립, 4:단독주택 , 5:사무공간 ,6: 상업공간 7:기타
size(집크기) - 1: 10평 미만/2: 10평대/ 3 : 20평대 4 : 30평대, 5 : 40평 이상
with(구성원) -  1:싱글라이프,/2: 신혼부부,/3: 아기와 함께, /4:취학 자녀와 함께/ 5:성인 자녀와 함께,/6: 부모님과 함께,/ 7:반려동물과 함께 ,/8: 기타
tend(성향) - 1:미니멀리즘 /2:실용주의/3맥시멀리즘
favour(선호도)- 1:색상 , 2:디자인 , 3: 내구성 ,4: 안전 
buytend(구매성향)- 1:브랜드/2트렌드/3퀄리티/4가성비/5:기타
style(인테리어 스타일) -  1:모던 / 2:미니멀&심플 / 3:내추럴&북유럽 / 4:빈티지&레트로 / 5:클래식&앤틱
         6:프렌치&프로방스 / 7:러블리&로맨틱 / 8:인더스트리얼 / 9:한국&아시아 / 10:유니크&믹스매치
activity(집 주 활동) 1:수면/ 2:작업 / /3:요리/4: 운동 /5: 공부 / 6:  문화생활(넷플릭스, 게임), .. /7:기타
purpose(용도) /1:단순주거/ 2:홈카페/3: 홈키친/4: 홈짐 



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
