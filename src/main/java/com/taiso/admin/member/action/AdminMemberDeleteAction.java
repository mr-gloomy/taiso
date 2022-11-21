package com.taiso.admin.member.action;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.admin.member.db.AdminMemberDAO;
import com.taiso.admin.member.db.MemberDTO;

public class AdminMemberDeleteAction implements Member {

	@Override
	public MemberForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println(" M : AdminMemberDeleteAction_execute 호출 ");
		
		// 전달정보 저장(삭제할 사용자)
		int mem_num = Integer.parseInt(request.getParameter("mem_num"));
		
		// DAO - adminMemberDelete
		AdminMemberDAO dao = new AdminMemberDAO();
		dao.adminMemberDelete(mem_num);
		
		// 페이지 이동		
		MemberForward forward = new MemberForward();
		forward.setPath("./AdminMemberList.mb");
		forward.setRedirect(true);
		return forward;

	}

}
