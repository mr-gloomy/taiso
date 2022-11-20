package com.taiso.reservation.action;

import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.payment.db.PaymentDAO;
import com.taiso.reservation.db.ReservationDAO;
import com.taiso.reservation.db.ReservationDTO;

public class ReservationListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		
		// DAO - 해당고객에 해당하는 예약정보 다 가져오기
		// 세션제어(id)(로그인 체크)
		HttpSession session = request.getSession();
		String mem_id = (String) session.getAttribute("mem_id");
		
		ActionForward forward = new ActionForward();
		if(mem_id == null) {
			forward.setPath("./MemberLogin.me");
			forward.setRedirect(true);
			return forward;			
		}
		
		
		
		// ReservationDAO - 예약 정보 => 로그인한 사용자의 예약 정보를 가져오기
		// PaymentDAO - 결제 정보 => 로그인한 사용자의 결제 정보를 가져오기
		ReservationDAO rezDAO = new ReservationDAO();
		Vector totalList = rezDAO.getResevationList(mem_id);
		
		
		System.out.println(" M :" + totalList); // ***** 잘들어갔는지 확인하는 용도, 나중에 주석처리할 것! 
		
		
		
		// request 영역에 저장
		request.setAttribute("reservationList", totalList.get(0));
		request.setAttribute("paymentList", totalList.get(1));
		
		// 페이지 이동(./views/ReservationList.jsp)
		forward.setPath("./views/ReservationList.jsp");
		forward.setRedirect(false);
		return forward ;
	}

}
