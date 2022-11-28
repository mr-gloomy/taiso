package com.taiso.reservation.action;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.websocket.Transformation;

import com.taiso.car.db.CarDAO;
import com.taiso.car.db.CarDTO;
import com.taiso.reservation.db.PaymentDTO;
import com.taiso.reservation.db.ReservationDAO;
import com.taiso.reservation.db.ReservationDTO;

public class ReservationProAction implements Action {

   @Override
   public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ReservationDTO rezDTO = new ReservationDTO();
		rezDTO.setRez_rentalDate(request.getParameter("rez_rentalDate"));
		rezDTO.setRez_returnDate(request.getParameter("rez_returnDate"));
		rezDTO.setRez_totalDate(request.getParameter("rez_totalDate"));
		rezDTO.setRez_rentTime(request.getParameter("rez_rentTime"));
		rezDTO.setRez_site(request.getParameter("rez_site"));
		rezDTO.setCar_code(Integer.parseInt(request.getParameter("car_code")));
		rezDTO.setCar_insurance(request.getParameter("car_insurance"));
		rezDTO.setMem_id(request.getParameter("mem_id"));
		rezDTO.setCar_name(request.getParameter("car_name"));
		
		rezDTO.setLicense_num(request.getParameter("license_num"));
		rezDTO.setLicense_issueDate(request.getParameter("license_issueDate"));
		rezDTO.setLicense_type(request.getParameter("license_type"));
		  
		PaymentDTO payDTO = new PaymentDTO();
		payDTO.setPay_uqNum(request.getParameter("pay_uqNum"));
		payDTO.setPay_total(Integer.parseInt(request.getParameter("pay_total")));
		payDTO.setPay_method(request.getParameter("pay_method"));
		payDTO.setPay_status(request.getParameter("pay_status"));
		
		ReservationDAO rezDAO = new ReservationDAO();
		rezDAO.reservationSave(rezDTO, payDTO); 
		
		String merchant_uid = request.getParameter("merchant_uid");
		System.out.println(" merchant_uid : "+merchant_uid);
		System.out.println(" M : 결제정보 저장 완료");
		
		return null;
		
   }

}