package com.taiso.reservation.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.member.db.MemberDTO;
import com.taiso.reservation.db.ReservationDAO;
import com.taiso.reservation.db.ReservationDTO;

public class ReservationToKakao implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : ReservationToKakao_execute()");
		
		// 세션제어(id)(로그인 체크)
		HttpSession session = request.getSession();
		String mem_id = (String) session.getAttribute("mem_id");
		
		
		ActionForward forward = new ActionForward();
		if(mem_id == null) {
			forward.setPath("./MemberLogin.me");
			forward.setRedirect(true);
			return forward;			
		}
		
		ReservationDAO rezDAO = new ReservationDAO();
		
		// 1. 회원정보 가져오기
		MemberDTO mDTO = rezDAO.getMemberInfo(mem_id);
//		String mem_name = mDTO.getMem_name();
//		String mem_email = mDTO.getMem_email();
//		String mem_phone = mDTO.getMem_phone();
		
		// 2. 예약정보 가져오기
		String pay_uqNum = request.getParameter("pay_uqNum");
		ReservationDTO rezDTO = rezDAO.getReservationMailInfo(pay_uqNum);
//		String rental_date = rezDTO.getRez_rentalDate();
//		String return_date = rezDTO.getRez_returnDate();
//		String rez_site = rezDTO.getRez_site();
//		String car_name = rezDTO.getCar_name();
		
		request.setAttribute("mDTO", mDTO);
		request.setAttribute("rezDTO", rezDTO);
		
		////////////////////// 카카오 공유	//////////////////////
		
		forward.setPath("./PaymentTest.pay");
		forward.setRedirect(true);
		return forward;
	}

}