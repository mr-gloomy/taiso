package com.taiso.reservation.db;

import java.sql.Date;
import java.sql.Timestamp;

import lombok.Data;

@Data
public class ReservationDTO {
	
	
	// 예약 정보
	private String mem_id;			  // 회원아이디
	private int rez_uqNum; 			  // 예약 고유번호
	
	private String rez_rentalDate;    // 대여 일시
	private String rez_returnDate;    // 반납 일시
	private String rez_site;		  // 대여 반납 장소
	private String rez_totalDate; 	  // 총 대여일 (X 시간)
	private String rez_rentTime;	  // 예약 시간
	
	private int car_code;			  // 차량코드
	private String car_name;		  // 차량이름 
	private String car_insurance;	  // 자동차 보험
	private int rez_status; 		  // 예약 현황
	
	
	
	// 면허 정보
	private String license_num; 	  // 면허증 번호
	private String license_issueDate; // 면허 발급일자
	private String license_type; 	  // 면허 구분
	
	
	
	// 예약 취소 정보
	private String pay_uqNum;
	private Timestamp cancel_date;
	private String cancel_reason;
	private int cancel_commission;
	
	
	

}