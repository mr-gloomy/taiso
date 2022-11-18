package com.taiso.reservation.action;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.websocket.Transformation;

import com.taiso.car.db.CarDAO;
import com.taiso.car.db.CarDTO;
import com.taiso.reservation.db.ReservationDAO;
import com.taiso.reservation.db.ReservationDTO;

public class ReservationProAction implements Action {

   @Override
   public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
      
            System.out.println(" M : ReservationProAction_execute() 호출");
            // 한글처리
            // 전달된 정보 DTO객체에 저장 (예약정보) 
            
            ReservationDTO rezDTO = new ReservationDTO();
            CarDTO carDTO = new CarDTO();
            
            
            // 예약 정보 저장
            
            
            rezDTO.setMem_id(request.getParameter("mem_id"));
            rezDTO.setRez_rentalDate(request.getParameter("rez_rentalDate"));
            rezDTO.setRez_returnDate(request.getParameter("rez_returnDate"));
            rezDTO.setRez_site(request.getParameter("rez_site"));
            rezDTO.setRez_totalDate(request.getParameter("rez_totalDate"));
            rezDTO.setCar_code(Integer.parseInt(request.getParameter("car_code")));
            rezDTO.setCar_insurance(request.getParameter("car_insurance"));
      
            
            
//            // 차 정보 저장            
//            carDTO.setCar_brand(request.getParameter("car_brand"));
//            carDTO.setCar_category(request.getParameter("car_category"));
//            carDTO.setCar_fuel(request.getParameter("car_fuel"));
//            carDTO.setCar_name(request.getParameter("car_name"));
//            carDTO.setCar_op(request.getParameter("car_op"));
//            carDTO.setCar_price(Integer.parseInt(request.getParameter("car_price")));
//            carDTO.setCar_year(Integer.parseInt(request.getParameter("car_year")));
            
            
            
            // 면허 정보
            rezDTO.setLicense_num(request.getParameter("license_num"));
            rezDTO.setLicense_issueDate(request.getParameter("license_issueDate"));
            rezDTO.setLicense_type(request.getParameter("license_type"));
            
            
            
            // DAO 객체 생성 - 예약정보저장 메서드 호출
            ReservationDAO rezDAO = new ReservationDAO();
            rezDAO.resevationSave(rezDTO,carDTO);
            
            
//            // 메일,문자 전송  //------------> 결제완료 뒤로 옮길 예정
//            new Thread(new Runnable() {
//               public void run() {
//                  for(long i=0;i<1000000000000000L;i++);
//                  System.out.println(" M : 메일 전송 완료");
//               }
//            }).start();

            
            
            System.out.println(" M : 예약 정보 저장 성공");
            
            
      
            // 페이지 이동(./views/paymentAction.jsp)
            ActionForward forward = new ActionForward();
//            forward.setPath("./views/paymentAction.jsp");
            forward.setPath("./ReservationListAction.rez");
            forward.setRedirect(false);
            return forward;
   }

}