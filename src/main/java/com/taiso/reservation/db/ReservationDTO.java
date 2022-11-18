package com.taiso.reservation.db;

import java.sql.Date;
import java.sql.Timestamp;


public class ReservationDTO {
	
	
	// 예약 정보
	private String mem_id;			  // 회원아이디
	private int rez_uqNum; 			  // 예약 고유번호
	
	private String rez_rentalDate;    // 대여 일시
	private String rez_returnDate;    // 반납 일시
	private String rez_site;		  // 대여 반납 장소
	private String rez_totalDate; 	  // 총 대여일 (X 시간)
	
	private int car_code;			  // 차량코드
	private String car_insurance;	  // 자동차 보험
	private String rez_status; 		  // 예약 현황
	
	
	
	// 면허 정보
	private String license_num; 	  // 면허증 번호
	private String license_issueDate;   // 면허 발급일자
	private String license_type; 	  // 면허 구분
	
	
	
	// 예약 취소 정보
	private String pay_uqNum;
	private Timestamp cancel_date;
	private String cancel_reason;
	private int cancel_commission;
	
	
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public int getRez_uqNum() {
		return rez_uqNum;
	}
	public void setRez_uqNum(int rez_uqNum) {
		this.rez_uqNum = rez_uqNum;
	}
	public String getRez_rentalDate() {
		return rez_rentalDate;
	}
	public void setRez_rentalDate(String rez_rentalDate) {
		this.rez_rentalDate = rez_rentalDate;
	}
	public String getRez_returnDate() {
		return rez_returnDate;
	}
	public void setRez_returnDate(String rez_returnDate) {
		this.rez_returnDate = rez_returnDate;
	}
	public String getRez_site() {
		return rez_site;
	}
	public void setRez_site(String rez_site) {
		this.rez_site = rez_site;
	}
	public String getRez_totalDate() {
		return rez_totalDate;
	}
	public void setRez_totalDate(String rez_totalDate) {
		this.rez_totalDate = rez_totalDate;
	}
	public int getCar_code() {
		return car_code;
	}
	public void setCar_code(int car_code) {
		this.car_code = car_code;
	}
	public String getCar_insurance() {
		return car_insurance;
	}
	public void setCar_insurance(String car_insurance) {
		this.car_insurance = car_insurance;
	}
	public String getRez_status() {
		return rez_status;
	}
	public void setRez_status(String rez_status) {
		this.rez_status = rez_status;
	}
	public String getLicense_num() {
		return license_num;
	}
	public void setLicense_num(String license_num) {
		this.license_num = license_num;
	}
	public String getLicense_issueDate() {
		return license_issueDate;
	}
	public void setLicense_issueDate(String license_issueDate) {
		this.license_issueDate = license_issueDate;
	}
	public String getLicense_type() {
		return license_type;
	}
	public void setLicense_type(String license_type) {
		this.license_type = license_type;
	}
	public String getPay_uqNum() {
		return pay_uqNum;
	}
	public void setPay_uqNum(String pay_uqNum) {
		this.pay_uqNum = pay_uqNum;
	}
	public Timestamp getCancel_date() {
		return cancel_date;
	}
	public void setCancel_date(Timestamp cancel_date) {
		this.cancel_date = cancel_date;
	}
	public String getCancel_reason() {
		return cancel_reason;
	}
	public void setCancel_reason(String cancel_reason) {
		this.cancel_reason = cancel_reason;
	}
	public int getCancel_commission() {
		return cancel_commission;
	}
	public void setCancel_commission(int cancel_commission) {
		this.cancel_commission = cancel_commission;
	}
	
	
	
	
	
	// Getter/Setter 생성


	// toString 생성

	
	
	
	
	
	

}