package com.taiso.admin.member.action;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.admin.member.db.AdminMemberDAO;
import com.taiso.admin.member.db.MemberDTO;

public class AdminMemberDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println(" M : AdminMemberDeleteAction_execute 호출 ");
		
		// 전달정보 저장(삭제할 사용자)
		String mem_id1 = request.getParameter("mem_id");
		
		// DAO - adminMemberDelete
		AdminMemberDAO dao = new AdminMemberDAO();
		dao.adminMemberDelete(mem_id1);
		
		// 페이지 이동		
		ActionForward forward = new ActionForward();
		forward.setPath("./AdminMemberList.mb");
		forward.setRedirect(true);
		return forward;

	}

}
