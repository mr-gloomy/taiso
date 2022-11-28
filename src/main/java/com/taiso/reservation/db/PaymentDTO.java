package com.taiso.reservation.db;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class PaymentDTO {
	
	// 결제 정보
	private String pay_uqNum;		 // 결제 고유번호 
	private int rez_uqNum;		 // 예약 고유번호
	private String pay_method;	 // 결제 방법
	private Timestamp pay_date;	 // 결제 일시
	private String pay_status; 	 // 결제 현황
	private int pay_total;		 // 최종 결제 금액
	private String cpon; 		 // 고객 쿠폰
	
	
	
	
}
