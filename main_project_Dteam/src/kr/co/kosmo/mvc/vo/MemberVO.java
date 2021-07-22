package kr.co.kosmo.mvc.vo;

public class MemberVO {

//	mem_num number primary key, -- 회원번호 -- PK
//	mem_id varchar2(30) constraint member_mem_id_nn not null, -- 아이디
//	mem_pwd varchar2(30) constraint member_mem_pwd_nn not null, -- 패스워드
//	mem_name varchar2(30), -- 이름
//	mem_nickname varchar2(30), -- 닉네임
//	mem_age number, -- 나이
//	mem_gender varchar2(10), -- 성별: M(male) / F(female) -- 숫자로?
//	mem_birth date, -- 생년월일
//	mem_tel varchar2(20), -- 전화번호
//	mem_addr varchar2(100), -- 배송지
//	mem_profile varchar2(300), -- 프로필 이미지
//	mem_rdate date default sysdate); -- 가입일

	private String mem_id, mem_pwd, mem_name, mem_nickname, mem_gender, mem_birth, mem_tel, mem_addr, mem_profile,
			mem_rdate;
	private int mem_num, mem_age;

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getMem_pwd() {
		return mem_pwd;
	}

	public void setMem_pwd(String mem_pwd) {
		this.mem_pwd = mem_pwd;
	}

	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	public String getMem_nickname() {
		return mem_nickname;
	}

	public void setMem_nickname(String mem_nickname) {
		this.mem_nickname = mem_nickname;
	}

	public String getMem_gender() {
		return mem_gender;
	}

	public void setMem_gender(String mem_gender) {
		this.mem_gender = mem_gender;
	}

	public String getMem_birth() {
		return mem_birth;
	}

	public void setMem_birth(String mem_birth) {
		this.mem_birth = mem_birth;
	}

	public String getMem_tel() {
		return mem_tel;
	}

	public void setMem_tel(String mem_tel) {
		this.mem_tel = mem_tel;
	}

	public String getMem_addr() {
		return mem_addr;
	}

	public void setMem_addr(String mem_addr) {
		this.mem_addr = mem_addr;
	}

	public String getMem_profile() {
		return mem_profile;
	}

	public void setMem_profile(String mem_profile) {
		this.mem_profile = mem_profile;
	}

	public String getMem_rdate() {
		return mem_rdate;
	}

	public void setMem_rdate(String mem_rdate) {
		this.mem_rdate = mem_rdate;
	}

	public int getMem_num() {
		return mem_num;
	}

	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}

	public int getMem_age() {
		return mem_age;
	}

	public void setMem_age(int mem_age) {
		this.mem_age = mem_age;
	}

}
