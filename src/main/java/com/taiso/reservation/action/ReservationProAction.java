package com.taiso.reservation.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.car.db.CarDTO;
import com.taiso.reservation.db.PaymentDTO;
import com.taiso.reservation.db.ReservationDAO;
import com.taiso.reservation.db.ReservationDTO;

public class ReservationProAction implements Action {

   @Override
   public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
      
		// 1. carDTO - 차량 상태 업데이트 (관련 컬럼이 없어서 보류)
		
		/* 2-1. rezDTO - 예약 정보 업데이트
		 * [] rez_uqNum			=> pk
		 * [] rez_rentalDate		
		 * [] rez_returnDate		
		 * [] rez_totalDate			
		 * [] rez_site				
		 * [] rez_status			
		 * [] rez_name			
		 * [] car_code				
		 * [] car_insurance			
		 * [] mem_id			=> fk
		 * [] license_num		=> fk
		 * 
		 * 2-2. rezDTO - 면허 정보 업데이트
		 * [] license_num		=> pk
		 * [] mem_id			=> fk
		 * [] license_issueDate		
		 * [] license_type			
		 */
	   HttpSession session = request.getSession();
	   CarDTO carDTO =  (CarDTO) session.getAttribute("carDTO");
		
		ReservationDTO rezDTO = new ReservationDTO();
		rezDTO.setRez_rentalDate(request.getParameter("rez_rentalDate"));
		rezDTO.setRez_returnDate(request.getParameter("rez_returnDate"));
		rezDTO.setRez_totalDate(request.getParameter("rez_totalDate"));
		rezDTO.setRez_site(request.getParameter("rez_site"));
		rezDTO.setCar_code(Integer.parseInt(request.getParameter("car_code")));
		rezDTO.setCar_insurance(request.getParameter("car_insurance"));
		rezDTO.setMem_id(request.getParameter("mem_id"));
		rezDTO.setCar_name(carDTO.getCar_name());
		
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
		System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@2pay_uqNum : "+request.getParameter("pay_uqNum"));
		System.out.println("@@@@@결제정보 저장완료@@@@");
		
		return null;
	   
	   
	   
//            System.out.println(" M : ReservationProAction_execute() 호출");
//            // 한글처리
//            // 전달된 정보 DTO객체에 저장 (예약정보) 
//            
//            ReservationDTO rezDTO = new ReservationDTO();
//            CarDTO carDTO = new CarDTO();
//            
//            
//            // 예약 정보 저장
//            
//            
//            rezDTO.setMem_id(request.getParameter("mem_id"));
//            rezDTO.setRez_rentalDate(request.getParameter("rez_rentalDate"));
//            rezDTO.setRez_returnDate(request.getParameter("rez_returnDate"));
//            rezDTO.setRez_site(request.getParameter("rez_site"));
//            rezDTO.setRez_totalDate(request.getParameter("rez_totalDate"));
//            rezDTO.setCar_code(Integer.parseInt(request.getParameter("car_code")));
//            rezDTO.setCar_insurance(request.getParameter("car_insurance"));
//      
//            
//            
////            // 차 정보 저장            
////            carDTO.setCar_brand(request.getParameter("car_brand"));
////            carDTO.setCar_category(request.getParameter("car_category"));
////            carDTO.setCar_fuel(request.getParameter("car_fuel"));
////            carDTO.setCar_name(request.getParameter("car_name"));
////            carDTO.setCar_op(request.getParameter("car_op"));
////            carDTO.setCar_price(Integer.parseInt(request.getParameter("car_price")));
////            carDTO.setCar_year(Integer.parseInt(request.getParameter("car_year")));
//            
//            
//            
//            // 면허 정보
//            rezDTO.setLicense_num(request.getParameter("license_num"));
//            rezDTO.setLicense_issueDate(request.getParameter("license_issueDate"));
//            rezDTO.setLicense_type(request.getParameter("license_type"));
//            
//            
//            
//            // DAO 객체 생성 - 예약정보저장 메서드 호출
//            ReservationDAO rezDAO = new ReservationDAO();
//            rezDAO.reservationSave(rezDTO,carDTO);
//          
//            
////            // 메일,문자 전송  //------------> 결제완료 뒤로 옮길 예정
////            new Thread(new Runnable() {
////               public void run() {
////                  for(long i=0;i<1000000000000000L;i++);
////                  System.out.println(" M : 메일 전송 완료");
////               }
////            }).start();
//
//            
////            request.setAttribute("rezDTO", rezDTO);
//              
//            
//            System.out.println(" M : 예약 정보 저장 성공");
//            
//            
//      
//            // 페이지 이동(./views/paymentAction.jsp)
//            ActionForward forward = new ActionForward();
////            forward.setPath("./views/paymentAction.jsp");
//            forward.setPath("./views/reservationSaveTest.jsp?rez_uqNum="+rezDTO.getRez_uqNum());
//            forward.setRedirect(false);
//            return forward;
   }

}