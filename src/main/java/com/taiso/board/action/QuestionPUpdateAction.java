package com.taiso.board.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.taiso.board.db.BoardDAO;
import com.taiso.board.db.BoardDTO;

public class QuestionPUpdateAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : QuestionDeleteAction_execute 호출! ");
		
		// 전달정보 저장
		int bo_num = Integer.parseInt(request.getParameter("bo_num"));
		String bo_pass = request.getParameter("bo_pass");
		
		// bodao 객체 생성
		BoardDAO bodao = new BoardDAO();
		int result = bodao.DeleteQuestion(bo_num, bo_pass);
		String pageNum = request.getParameter("pageNum");
		
		System.out.println(result);
		// 페이지 이동
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		if(result == 1) {
			out.print("<script>");
			out.print(" alert('게시글 삭제 완료!'); ");
			out.print(" location.href='./QuestionList.bo'; ");
			out.print("</script>");
			out.close();
			
			return null;		
		} else if(result == 0) {
			out.print("<script>");
			out.print(" alert(' 비밀번호 오류 '); ");
			out.print(" history.back(); ");
			out.print("</script>");
			out.close();
			
			return null;			
		} else {
			out.print("<script>");
			out.print(" alert(' 글 없음 '); ");
			out.print(" history.back(); ");
			out.print("</script>");
			out.close();
			
			return null;
		}		
		
	}

}
