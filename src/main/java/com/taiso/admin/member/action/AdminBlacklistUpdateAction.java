package com.taiso.admin.member.action;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.admin.member.db.AdminMemberDAO;
import com.taiso.admin.member.db.MemberDTO;

public class AdminBlacklistUpdateAction implements Action {


	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println(" M : BlacklistUpdateAction_execute 호출 ");
		
		// 세션제어(admin)
		HttpSession session = request.getSession();
		String mem_id = (String) session.getAttribute("mem_id");
		
		ActionForward forward = new ActionForward();
		if(mem_id == null || !mem_id.equals("admin")) {
			forward.setPath("./MemberLogin.me");
			forward.setRedirect(true);
		}
		
		
		//전달정보(DTO)
		MemberDTO mDTO = new MemberDTO();
		
		mDTO.setMem_blacklist(request.getParameter("mem_blacklist"));
		
		// DAO 
		AdminMemberDAO dao = new AdminMemberDAO();
		dao.updateBlacklist(mDTO);
	
		// 페이지 이동
		forward.setPath("./AdminMemberList.mb");
		forward.setRedirect(true);
		
		return forward;
		
	}

}

		
		