package com.taiso.admin.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.taiso.admin.member.action.Member;
import com.taiso.admin.member.action.MemberForward;
import com.taiso.admin.member.db.MemberDTO;

public class AdminMainAction implements Member {

	@Override
	public MemberForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println(" M : AdminMain_execute 호출 ");

		// 세션제어(관리자여부)
		HttpSession session = request.getSession();
		String mem_id = (String) session.getAttribute("mem_id");
		
		MemberForward forward = new MemberForward();
		if(mem_id==null || !mem_id.equals("admin")) {
			forward.setPath("./ReservationMain.rez");
			forward.setRedirect(true);
			
			return forward;
		}
		
		// 전달정보저장
		MemberDTO mDTO = new MemberDTO();
		
		// 페이지이동
		forward.setPath("./adminMember/adminMain.jsp");
		forward.setRedirect(false);
		
		return forward;
	}

}