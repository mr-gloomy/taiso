package com.taiso.admin.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AdminMemberLogoutAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println(" M : AdminMemberLogoutAction_execute() 호출 ");
		
		// 로그아웃 ( 세션정보 초기화 )
		HttpSession session = request.getSession();
		session.removeAttribute("mem_id");
		
		
		// 전 페이지로 이동
//		response.sendRedirect(request.getHeader("referer"));
		
		
		// 메인으로 이동
		ActionForward forward = new ActionForward();
		forward.setPath("./ReservationMain.rez");
		forward.setRedirect(true);
		
		return forward;
	}

}
