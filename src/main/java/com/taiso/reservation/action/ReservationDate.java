package com.taiso.reservation.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ReservationDate implements Action {

	@Override
	public com.taiso.reservation.action.ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : ReservationDate_execute() 호출");
		
	    // 예약시간 정보 세션에 저장
        HttpSession session = request.getSession();
      
        session.setAttribute("rez_pick_date",request.getParameter("rez_pick_date"));
        session.setAttribute("rez_off_date",request.getParameter("rez_off_date"));
        session.setAttribute("rez_pick_time",request.getParameter("rez_pick_time"));
        session.setAttribute("rez_off_time",request.getParameter("rez_off_time"));
        session.setAttribute("rez_site",request.getParameter("rez_site"));
        session.setAttribute("rez_totalDate",request.getParameter("totalDate"));
      
		//페이지 이동
		ActionForward forward = new ActionForward();
		forward.setPath("./CarList.ca");
		forward.setRedirect(true);
		return forward;
	}
}