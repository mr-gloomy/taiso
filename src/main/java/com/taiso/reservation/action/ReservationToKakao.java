package com.taiso.reservation.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		
		return null;
	}

}
