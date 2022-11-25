package com.taiso.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.board.db.BoardDAO;
import com.taiso.board.db.BoardDTO;

public class AdminQuestionReWriteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : QuestionReWriteAction_execute 호출");
		
		
		// 세션에 아이디 저장 
		HttpSession session = request.getSession();
		String mem_id = (String) session.getAttribute("mem_id");
//		
		ActionForward forward = new ActionForward();
		System.out.println(mem_id);
		
		
		// 페이지 전달정보 저장 
		int bo_num = Integer.parseInt(request.getParameter("bo_num"));
		String pageNum = request.getParameter("pageNum");
		
		// BoardDAO 객체 생성
		BoardDAO bodao = new BoardDAO();
		
		// DB에 저장된 답글을 달 글번호를 가져와서 
		BoardDTO bodto = bodao.getQuestionDetail(bo_num);
		
		// request 영역에 저장
		request.setAttribute("bodto", bodto);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("mem_id", mem_id);
		
		// view 출력 (./board/UpdateForm.jsp) 
		// 페이지 이동(티켓)
		forward.setPath("./board/adminQuestionReWrite.jsp");
		forward.setRedirect(false);
		
		return forward;
	
	
	
	}
}
