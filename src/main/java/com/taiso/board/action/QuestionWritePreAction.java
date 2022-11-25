package com.taiso.board.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.board.db.BoardDAO;
import com.taiso.board.db.BoardDTO;

public class QuestionWritePreAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : QuestionWritePreAction_execute 호출 ");
		
		// 세션에 아이디 저장 
		HttpSession session = request.getSession();
		String mem_id = (String) session.getAttribute("mem_id");
//		
		ActionForward forward = new ActionForward();
		System.out.println(mem_id);
		
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		// 로그인제어(로그인화면으로)
		if(mem_id==null) {
			out.print("<script>");
			out.print("alert('로그인이 필요합니다!');");
//			out.print("swal(\"Good job!\", \"You clicked the button!\", \"success\")");
			out.print(" location.href='./MemberLogin.me'; ");
			out.print("</script>");
			out.close();
			return null;
		}	
		
		request.setAttribute("mem_id",mem_id);

		
		// 페이지이동
		forward.setPath("./board/questionWrite.jsp");
		forward.setRedirect(false);
		
		return forward;
		
	}

}
