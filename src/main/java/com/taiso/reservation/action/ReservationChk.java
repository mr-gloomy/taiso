package com.taiso.reservation.action;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.member.db.MemberDTO;
import com.taiso.reservation.db.ReservationDAO;
import com.taiso.reservation.db.ReservationDTO;

public class ReservationChk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : ReservationChkAction_execute()");
		
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
		ArrayList totalDTO = rezDAO.getMemberInfo(mem_id);
		MemberDTO mDTO = (MemberDTO)totalDTO.get(0);
		
		// 2. 예약정보 가져오기
		String pay_uqNum = request.getParameter("pay_uqNum");
		System.out.println(" pay_uqNum : "+pay_uqNum);
		ReservationDTO rezDTO = rezDAO.getReservationMailInfo(pay_uqNum);
		request.setAttribute("mDTO", mDTO);
		request.setAttribute("rezDTO", rezDTO);
		request.setAttribute("pay_uqNum", pay_uqNum);
		System.out.println("@@"+mDTO);
		System.out.println("@@"+rezDTO);
		
		// 카카오 공유하러 가기
		forward.setPath("./views/reservationChk.jsp");
		forward.setRedirect(false);
		return forward;
//		return null;
		
	}

}
