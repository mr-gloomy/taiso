package com.taiso.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MemberLogoutAction implements Member {

	@Override
	public MemberForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println(" M : MemberLogoutAction_execute() 호출 ");
		
		// 로그아웃 ( 세션정보 초기화 )
		HttpSession session = request.getSession();
		session.invalidate();
		
		
		// 메인으로 이동
		MemberForward forward = new MemberForward();
		forward.setPath("./ReservationMain.rez");
		forward.setRedirect(true);
		
		return forward;
	}

}
