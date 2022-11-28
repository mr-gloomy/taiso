package com.taiso.review.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.review.db.ReviewDAO;
import com.taiso.review.db.ReviewDTO;

public class ReviewCommentAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		System.err.println("ReviewCommentAction_execute() 호출");
		
		// 세션 제어 (id)
		HttpSession session = request.getSession();
		
		String mem_id = (String) session.getAttribute("mem_id");
		
		System.out.println("회원 아이디: " + mem_id);
		
		ActionForward forward = new ActionForward();
		if(mem_id == null) {
			forward.setPath("./MemberLogin.me");
			forward.setRedirect(true);
			return forward;
		}
		
		// DTO 생성
		ReviewDTO rDTO = new ReviewDTO();
		
		rDTO.setMem_id(mem_id);
		rDTO.setRev_subject(request.getParameter("rev_subject"));
		rDTO.setRev_content(request.getParameter("rev_content"));
		rDTO.setRev_image(request.getParameter("rev_image"));
		rDTO.setRev_ref(Integer.parseInt(request.getParameter("rev_num")));
		
		System.out.println(rDTO);
		
		ReviewDAO rDAO = new ReviewDAO();
		rDAO.insertReviewReply(rDTO);
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print("<script>");
		out.print("history.back();");
		out.print("</script>");
		out.close();
		
		return null;
	}

}
