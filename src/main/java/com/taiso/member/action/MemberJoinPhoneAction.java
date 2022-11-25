package com.taiso.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemberJoinPhoneAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println(" M : MemberJoinPhoneAction_execute() 호출");
		
		// 정보저장
		String imp_uid = request.getParameter("imp_uid");
		
		return null;
	}

}
