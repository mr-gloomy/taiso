package com.taiso.payment.action;

import java.io.FileReader;
import java.io.Reader;
import java.sql.Timestamp;
import java.time.Clock;
import java.time.Instant;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.taiso.payment.db.PaymentDAO;
import com.taiso.payment.db.PaymentDTO;
import com.taiso.reservation.db.ReservationDAO;
import com.taiso.reservation.db.ReservationDTO;

public class PaymentAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" m : Payment_execute() 호출");

		// 1. carDTO - 차량 상태 업데이트 (관련 컬럼이 없어서 보류)
		
		/* 2-1. rezDTO - 예약 정보 업데이트
		 * [] rez_uqNum			=> pk
		 * [] rez_rentalDate		
		 * [] rez_returnDate		
		 * [] rez_totalDate			
		 * [] rez_site				
		 * [] rez_status			
		 * [] car_code				
		 * [] car_insurance			
		 * [] car_name		
		 * [] mem_id			=> fk
		 * [] license_num		=> fk
		 * 
		 * 2-2. rezDTO - 면허 정보 업데이트
		 * [] license_num		=> pk
		 * [] mem_id			=> fk
		 * [] license_issueDate		
		 * [] license_type			
		 */
		
		ReservationDTO rezDTO = new ReservationDTO();
		rezDTO.setRez_rentalDate(request.getParameter("rez_rentalDate"));
		rezDTO.setRez_returnDate(request.getParameter("rez_returnDate"));
		rezDTO.setRez_totalDate(request.getParameter("rez_totalDate"));
		rezDTO.setRez_site(request.getParameter("rez_site"));
		rezDTO.setCar_code(Integer.parseInt(request.getParameter("car_code")));
		rezDTO.setCar_name(request.getParameter("car_name"));
		rezDTO.setCar_insurance(request.getParameter("car_insurance"));
		rezDTO.setMem_id(request.getParameter("mem_id"));
		
		// 2-2. driverliscenseDTO에서 면허 정보 업데이트
		rezDTO.setLicense_num(request.getParameter("license_num"));
		rezDTO.setLicense_issueDate(request.getParameter("license_issueDate"));
		rezDTO.setLicense_type(request.getParameter("license_type"));
		
        /* 3. payDTO - 결제 정보 업데이트
         * [] pay_uqNum			=> pk
         * [] rez_uqNum			=> fk
         * [] pay_method
         * [] pay_date
         * [] pay_status
         * [] pay_total
         */
		  
		PaymentDTO payDTO = new PaymentDTO();
		payDTO.setPay_uqNum(request.getParameter("pay_uqNum"));
		payDTO.setPay_total(Integer.parseInt(request.getParameter("pay_total")));
		payDTO.setPay_method(request.getParameter("pay_method"));
		payDTO.setPay_status(request.getParameter("pay_status"));
		
		ReservationDAO rezDAO = new ReservationDAO();
		rezDAO.reservationSave(rezDTO, payDTO); 
		
		String merchant_uid = request.getParameter("merchant_uid");
		System.out.println("merchant_uid : "+merchant_uid);
		System.out.println("@@@@@결제정보 저장완료@@@@");
		
		return null;
	}

}
