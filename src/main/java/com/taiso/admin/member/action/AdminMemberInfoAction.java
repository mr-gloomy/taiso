package com.taiso.admin.member.action;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.admin.member.db.AdminMemberDAO;
import com.taiso.admin.member.db.MemberDTO;

public class AdminMemberInfoAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println(" M : AdminMemberInfoAction_execute 호출");
		
		// 세션제어(admin)
		HttpSession session = request.getSession();
		String mem_id = (String) session.getAttribute("mem_id");
		
		ActionForward forward = new ActionForward();
		if(mem_id == null || !mem_id.equals("admin")) {
			forward.setPath("./MemberLogin.me");
			forward.setRedirect(true);
			
		}
		
		// 전달정보 저장
		
		int mem_num = Integer.parseInt(request.getParameter("mem_num"));
		String mem_blacklist = request.getParameter("mem_blacklist");
		String pageNum =  request.getParameter("pageNum");
		
		// DAO
		AdminMemberDAO dao = new AdminMemberDAO();
		
		// DTO 정보 가져오기
		MemberDTO mDTO = dao.getMemberInfo(mem_num,mem_blacklist);
		
		// 정보를 request 영역에 저장(view 전달)
		request.setAttribute("mDTO", mDTO);
		
		// 페이지 이동
		forward.setPath("./adminMember/adminMemberInfo.jsp");
		forward.setRedirect(false);
		
		return forward;
		
	}

}

