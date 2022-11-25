package com.taiso.notice.action;

import java.io.PrintWriter;

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
		String bo_pass = request.getParameter("bo_pass");
		
		// DAO 객체 
		noticeDAO dao = new noticeDAO();
		int result = dao.deleteNotice(bo_num, bo_pass);
		
		// 결과에 따른 페이지 이동(JS)
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		if(result == 1) {
			out.print("<script>");
			out.print(" alert('게시판 글 삭제 완료!'); ");
			out.print(" location.href='./AdminNoticeList.nb?pageNum="+pageNum+"';");
			out.print("</script>");
			out.close();
			
			return null;		
		}else if(result == 0) {
			out.print("<script>");
			out.print(" alert(' 비밀번호 오류! '); ");
			out.print(" history.back(); ");
			out.print("</script>");
			out.close();
			
			return null;			
		}else {
			out.print("<script>");
			out.print(" alert(' 글 없음! '); ");
			out.print(" history.back(); ");
			out.print("</script>");
			out.close();
			
			return null;
		}		

		
	}

}
