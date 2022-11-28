package com.taiso.reservation.action;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.reservation.db.ReservationDAO;
import com.taiso.reservation.db.ReservationDTO;




public class ReservationInfo implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		/**
		 * ReservationInfoAction
		 * 
		 */
		
		// DAO - 해당고객에 해당하는 예약정보 다 가져오기
		// 세션제어(id)(로그인 체크)
//		String pay_uqNum = request.getParameter("pay_uqNum");
//		System.out.println(pay_uqNum);
		HttpSession session = request.getSession();
		String mem_id = (String) session.getAttribute("mem_id");
		System.out.println("아이디 : " + mem_id);
		
		
//		String mem_id = request.getParameter("mem_id");
		
		ActionForward forward = new ActionForward();
		if(mem_id == null) {
			forward.setPath("./MemberLogin.me");
			forward.setRedirect(true);
			return forward;			
		}
		
		int rez_uqNum = Integer.parseInt(request.getParameter("rez_uqNum"));
		
		// ReservationDAO - 예약 정보 => 로그인한 사용자의 예약 정보를 가져오기
		// PaymentDAO - 결제 정보 => 로그인한 사용자의 결제 정보를 가져오기
		ReservationDTO rezDTO = new ReservationDTO();
		ReservationDAO rezDAO = new ReservationDAO();
		
		ArrayList totalDTO = rezDAO.getReservationInfo(mem_id, rez_uqNum);
	
		System.out.println(totalDTO);
		
	    // 현재시간 출력
	    // 대여 시간 스트링 -> 데이터타입으로 변환
		// 뒤에서 다시 스트링으로 변환해서 다른이름으로 저장하
		// 세션에넣기
		
		
		LocalDate today = LocalDate.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		
		rezDTO = (ReservationDTO) totalDTO.get(0);
		String rez_rentalDate = rezDTO.getRez_rentalDate();
		
		
		
		System.out.println(rez_rentalDate);

//		LocalDate rez_date = LocalDate.parse(rez_rentalDate, DateTimeFormatter.ISO_DATE);
		LocalDate rez_date = LocalDate.parse(rez_rentalDate, formatter);
		
		
        System.out.println("@#$%@#$%@#%@#%@#$%@#$%@#$%@#$%@%"+today);
        System.out.println("@#$%@#$%@#%@#%@#$%@#$%@#$%@#$%@%"+rez_date);
		
		
        session.setAttribute("today",today);
        session.setAttribute("rez_date",rez_date);
		
		
		
		
		
		// request 영역에 저장
		request.setAttribute("rezDTO", totalDTO.get(0));
		request.setAttribute("payDTO", totalDTO.get(1));
		request.setAttribute("mDTO", totalDTO.get(2));
		
		
		// 페이지 이동(./views/reservationCancel.jsp)
		forward.setPath("./views/reservationInfo.jsp");
		forward.setRedirect(false);
		return forward ;
	}
	
	
    // 현재시간 출력    -> 스트링으로 변환
    // 대여 시간 스트링 -> 데이터타입으로 변환
//    public boolean compareDate (String string) {
//    	LocalDateTime rez_rentalDate2 =LocalDateTime.parse(string, DateTimeFormatter.ISO_DATE);
//    	LocalDateTime today = LocalDateTime.now();
//    	
//    	if(rez_rentalDate2.isAfter(today))
//    	return false;
//    	
//    }
	

}
