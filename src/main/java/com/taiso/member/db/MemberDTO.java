package com.taiso.member.db;

import java.sql.Timestamp;

public class MemberDTO {
	private int mem_num;				// 회원번호
	
	private String mem_id;				// 회원 아이디
	private String mem_pw;				// 회원 비밀번호
	private String mem_email;			// 회원 이메일
	private String mem_name;			// 회원 실명
	private String mem_nickName;		// 회원 닉네임
	private String mem_phone;			// 회원 전화번호
	private Timestamp mem_registDate;	// 회원 등록일
	
	private String mem_birthday;		// 회원 생년월일
	private int mem_accept_sns;			// 회원 SNS 수신 여부
	private String mem_image;			// 회원 프로필 이미지
	private String mem_blacklist;		// 회원 블랙리스트
	private String license_num;			// 회원 면허증 번호
	
	
	
	public int getMem_num() {
		return mem_num;
	}
	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}
	
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_pw() {
		return mem_pw;
	}
	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}
	public String getMem_email() {
		return mem_email;
	}
	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getMem_nickName() {
		return mem_nickName;
	}
	public void setMem_nickName(String mem_nickName) {
		this.mem_nickName = mem_nickName;
	}
	public String getMem_phone() {
		return mem_phone;
	}
	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}
	public Timestamp getMem_registDate() {
		return mem_registDate;
	}
	public void setMem_registDate(Timestamp mem_registDate) {
		this.mem_registDate = mem_registDate;
	}
	
	public String getMem_birthday() {
		return mem_birthday;
	}
	public void setMem_birthday(String mem_birthday) {
		this.mem_birthday = mem_birthday;
	}
	public int getMem_accept_sns() {
		return mem_accept_sns;
	}
	public void setMem_accept_sns(int mem_accept_sns) {
		this.mem_accept_sns = mem_accept_sns;
	}
	public String getMem_image() {
		return mem_image;
	}
	public void setMem_image(String mem_image) {
		this.mem_image = mem_image;
	}
	public String getMem_blacklist() {
		return mem_blacklist;
	}
	public void setMem_blacklist(String mem_blacklist) {
		this.mem_blacklist = mem_blacklist;
	}
	public String getLicense_num() {
		return license_num;
	}
	public void setLicense_num(String license_num) {
		this.license_num = license_num;
	}
	
	
	
	@Override
	public String toString() {
		return "MemberDTO [mem_num=" + mem_num + ", mem_id=" + mem_id + ", mem_pw=" + mem_pw + ", mem_email="
				+ mem_email + ", mem_name=" + mem_name + ", mem_nickName=" + mem_nickName + ", mem_phone=" + mem_phone
				+ ", mem_birthday=" + mem_birthday + ", mem_registDate=" + mem_registDate + ", mem_accept_sns="
				+ mem_accept_sns + ", mem_image=" + mem_image + ", mem_blacklist=" + mem_blacklist + ", license_num="
				+ license_num + "]";
	}
	
	
	
}
