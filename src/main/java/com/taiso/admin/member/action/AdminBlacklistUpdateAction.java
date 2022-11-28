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
		
		//전달정보(DTO)
		MemberDTO mDTO = new MemberDTO();
		mDTO.setMem_num(Integer.parseInt(request.getParameter("mem_num")));
		mDTO.setMem_blacklist(request.getParameter("mem_blacklist"));
		
		// DAO 
		AdminMemberDAO dao = new AdminMemberDAO();
		dao.updateBlacklist(mDTO);
	
		// 페이지 이동
		ActionForward forward = new ActionForward();
		forward.setPath("./AdminMemberInfo.mb?mem_nem=${mDTO.mem_num}&pageNum=${pageNum}&mem_blacklist=${mDTO.mem_blacklist}");
		forward.setRedirect(true);
		
		return forward;
		
	}

}

		
		