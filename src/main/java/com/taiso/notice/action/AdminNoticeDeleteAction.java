package com.taiso.notice.action;

import java.io.PrintWriter;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.notice.db.noticeDAO;

public class AdminNoticeDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		System.out.println(" M : AdminNoticeDeleteAction_execute 호출 ");
		
		// 세션제어(admin)
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		
		ActionForward forward = new ActionForward();
		if(id == null || !id.equals("admin")) {
			forward.setPath("./MemberLogin.me");
			forward.setRedirect(true);
		}
		
		// 전달된 파라미터
		int bo_num = Integer.parseInt(request.getParameter("bo_num"));
		String pageNum = request.getParameter("pageNum");
		
		// DAO 객체 
		noticeDAO dao = new noticeDAO();
		dao.deleteNotice(bo_num);
		
		// 페이지 이동
		forward.setPath("./notice/adminNoticeList.jsp");
		forward.setRedirect(false);
		 
		return forward;
		
		
	}

}
