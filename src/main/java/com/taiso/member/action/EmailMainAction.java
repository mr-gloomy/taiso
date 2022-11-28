package com.taiso.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class EmailMainAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println(" M : EmailMainAction_execute() 호출 ");
		
		HttpSession session = request.getSession();
		session.removeAttribute("mem_id");
		ActionForward forward = new ActionForward();
		forward.setPath("./ReservationMain.rez");
		forward.setRedirect(true);
		
		
		return forward;
	}

}
