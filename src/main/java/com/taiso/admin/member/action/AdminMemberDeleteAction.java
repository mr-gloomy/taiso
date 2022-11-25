package com.taiso.admin.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.taiso.admin.member.db.AdminMemberDAO;

public class AdminMemberDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println(" M : AdminMemberDeleteAction_execute 호출 ");
		
		// 전달정보 저장(삭제할 사용자)
		int mem_num = Integer.parseInt(request.getParameter("mem_num"));
		
		// DAO - adminMemberDelete
		AdminMemberDAO dao = new AdminMemberDAO();
		dao.adminMemberDelete(mem_num);
		
		// 페이지 이동		
		ActionForward forward = new ActionForward();
		forward.setPath("./AdminMemberList.mb");
		forward.setRedirect(true);
		return forward;

	}

}
