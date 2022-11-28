package com.taiso.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.board.db.BoardDAO;
import com.taiso.board.db.BoardDTO;

public class QuestionUpdateAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : QuestioinUpdateAction_execute 호출! ");
		
		// 페이지 전달정보 저장 
		int bo_num = Integer.parseInt(request.getParameter("bo_num"));
		String pageNum = request.getParameter("pageNum");
		
		// BoardDAO 객체 생성
		BoardDAO bodao = new BoardDAO();
		
		// DB에 저장된 수정할 글번호를 가져와서 
		BoardDTO bodto = bodao.getQuestionDetail(bo_num);
		
		// request 영역에 저장
		request.setAttribute("bodto", bodto);
		request.setAttribute("pageNum", pageNum);
		
		// 세션에 아이디 저장 
		HttpSession session = request.getSession();
		String mem_id = (String) session.getAttribute("mem_id");
		int myqnacnt = bodao.getMyqnacnt(mem_id);
		int myreviewcnt = bodao.getMyreviewcnt(mem_id);
	
		request.setAttribute("myqnacnt", myqnacnt);
		request.setAttribute("myreviewcnt", myreviewcnt);
		
		// view 출력 (./board/UpdateForm.jsp) 
		// 페이지 이동(티켓)
		ActionForward forward = new ActionForward();
		forward.setPath("./board/questionUpdate.jsp");
		forward.setRedirect(false);
		
		return forward;
	
	
	}

}
