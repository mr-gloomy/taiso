package com.taiso.payment.db;

import java.sql.Timestamp;

public class PaymentDTO {
	
	// 결제 정보
	private String pay_uqNum;		 // 결제 고유번호 
	private int rez_uqNum;		 // 예약 고유번호
	private String pay_method;	 // 결제 방법
	private Timestamp pay_date;	 // 결제 일시
	private String pay_status; 	 // 결제 현황
	private int pay_total;		 // 최종 결제 금액
	private String cpon; 		 // 고객 쿠폰
	
	
	
	
	// Getter/Setter 생성
	public String getPay_uqNum() {
		return pay_uqNum;
	}
	public void setPay_uqNum(String pay_uqNum) {
		this.pay_uqNum = pay_uqNum;
	}
	public int getRez_uqNum() {
		return rez_uqNum;
	}
	public void setRez_uqNum(int rez_uqNum) {
		this.rez_uqNum = rez_uqNum;
	}
	public String getPay_method() {
		return pay_method;
	}
	public void setPay_method(String pay_method) {
		this.pay_method = pay_method;
	}
	public Timestamp getPay_date() {
		return pay_date;
	}
	public void setPay_date(Timestamp pay_date) {
		this.pay_date = pay_date;
	}
	public String getPay_status() {
		return pay_status;
	}
	public void setPay_status(String pay_status) {
		this.pay_status = pay_status;
	}
	public int getPay_total() {
		return pay_total;
	}
	public void setPay_total(int pay_total) {
		this.pay_total = pay_total;
	}
	public String getCpon() {
		return cpon;
	}
	public void setCpon(String cpon) {
		this.cpon = cpon;
	}
	
	
	
	
	// toString 생성
	@Override
	public String toString() {
		return "PaymentDTO [pay_uqNum=" + pay_uqNum + ", rez_uqNum=" + rez_uqNum + ", pay_method=" + pay_method
				+ ", pay_date=" + pay_date + ", pay_status=" + pay_status + ", pay_total=" + pay_total + ", cpon="
				+ cpon + "]";
	}
	
	
	
	
	
	
	
}
