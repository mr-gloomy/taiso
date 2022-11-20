package com.taiso.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.taiso.board.db.BoardDAO;
import com.taiso.board.db.BoardDTO;

public class QuestionUpdateAction implements Board {

	@Override
	public BoardForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : QuestioinUpdateAction_execute 호출! ");
		
		// 페이지 전달정보 저장 
		int bo_num = Integer.parseInt(request.getParameter("bo_num"));
		String pageNum = request.getParameter("pageNum");
		
		// BoardDAO 객체 생성
		BoardDAO bodao = new BoardDAO();
		
		// DB에 저장된 수정할 글번호를 가져와서 
		BoardDTO bodto = bodao.getQuestionContent(bo_num);
		
		// request 영역에 저장
		request.setAttribute("bodto", bodto);
		request.setAttribute("pageNum", pageNum);
		
		// view 출력 (./board/UpdateForm.jsp) 
		// 페이지 이동(티켓)
		BoardForward forward = new BoardForward();
		forward.setPath("./board/questionUpdate.jsp");
		forward.setRedirect(false);
		
		return forward;
	
	
	}

}
