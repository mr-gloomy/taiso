package com.taiso.reservation.action;

import java.util.ArrayList;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.payment.db.PaymentDAO;
import com.taiso.reservation.db.ReservationDAO;
import com.taiso.reservation.db.ReservationDTO;

public class ReservationInfo implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		/**
		 * ReservationInfoAction
		 * 
		 * - 예약 취소를 하기위에 특정 id에 해당하는 예약+결제 정보 저장
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
		
		//***************************** 리스트로 불러와야하는지 특정 정보가 와야하는지 !!!!!!!!!!!!
		// ReservationDAO - 예약 정보 => 로그인한 사용자의 예약 정보를 가져오기
		// PaymentDAO - 결제 정보 => 로그인한 사용자의 결제 정보를 가져오기
		ReservationDTO rezDTO = new ReservationDTO();
		ReservationDAO rezDAO = new ReservationDAO();
		
		ArrayList totalDTO = rezDAO.getReservationInfo(mem_id, rez_uqNum);
		
		
//		System.out.println(" M :" + totalDTO); // ***** 잘들어갔는지 확인하는 용도, 나중에 주석처리할 것! 
		
		
		// request 영역에 저장
		request.setAttribute("rezDTO", totalDTO.get(0));
		request.setAttribute("payDTO", totalDTO.get(1));
		request.setAttribute("mDTO", totalDTO.get(2));
		
		
		// 페이지 이동(./views/reservationCancel.jsp)
		forward.setPath("./views/reservationInfo.jsp");
		forward.setRedirect(false);
		return forward ;
	}

}
