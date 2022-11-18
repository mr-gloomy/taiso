package com.taiso.admin.member.action;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.admin.member.db.AdminMemberDAO;
import com.taiso.admin.member.db.MemberDTO;

public class AdminMemberDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println(" M : AdminMemberRemoveAction.mb");
		
		// 세션제어(admin)
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		
		ActionForward forward = new ActionForward();
		if(id == null || !id.equals("admin")) {
			forward.setPath("./MemberLogin.me");
			forward.setRedirect(true);
			return forward;
		}
		
		// 전달정보 저장(삭제할 사용자)
		String delNum = request.getParameter("mem_num");
		
		// DAO - adminMemberDelete(ID)
		AdminMemberDAO dao = new AdminMemberDAO();
		dao.adminMemberDelete(delNum);
		
		// 페이지 이동		
		forward.setPath("./AdminMemberList.mb");
		forward.setRedirect(true);
		return forward;

	}

}
