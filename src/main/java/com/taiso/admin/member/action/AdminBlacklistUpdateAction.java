package com.taiso.admin.member.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.admin.member.db.AdminMemberDAO;
import com.taiso.admin.member.db.MemberDTO;

public class AdminBlacklistUpdateAction implements Action {


	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println(" M : BlacklistUpdateAction_execute 호출 ");
		
		//전달정보(DTO)
		MemberDTO mDTO = new MemberDTO();
		int mem_num =Integer.parseInt(request.getParameter("mem_num"));
		String pageNum = request.getParameter("pageNum");
		
		mDTO.setMem_num(mem_num);
		mDTO.setMem_blacklist(request.getParameter("mem_blacklist"));
		
		System.out.println("mDTO"+mDTO);
		
		// DAO 
		AdminMemberDAO dao = new AdminMemberDAO();
		dao.updateBlacklist(mDTO);
		
		// request
		request.setAttribute("mem_num", mem_num);
		request.setAttribute("mDTO", dao.getMemberInfo(mem_num, pageNum));
		
		// 페이지 이동
		ActionForward forward = new ActionForward();
		forward.setPath("./adminMember/adminMemberInfo.jsp");
		forward.setRedirect(false);
		
		return forward;
		
	}

}

		
		