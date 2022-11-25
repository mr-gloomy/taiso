package com.taiso.admin.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.taiso.admin.member.db.AdminMemberDAO;
import com.taiso.admin.member.db.MemberDTO;

public class AdminBlacklistUpdateAction implements Action {


	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println(" M : BlacklistUpdateAction_execute 호출 ");
		
		//전달정보(DTO)
		MemberDTO mDTO = new MemberDTO();
		
		mDTO.setMem_blacklist(request.getParameter("mem_blacklist"));
		
		// DAO 
		AdminMemberDAO dao = new AdminMemberDAO();
		dao.updateBlacklist(mDTO);
	
		// 페이지 이동
		ActionForward forward = new ActionForward();
		forward.setPath("./AdminMemberList.mb");
		forward.setRedirect(true);
		
		return forward;
		
	}

}

		
		