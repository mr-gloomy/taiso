package com.taiso.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.board.db.BoardDAO;
import com.taiso.board.db.BoardDTO;

public class ProposalDetailAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : ProposalDetailAction_execute 호출 ");
				
		// 세션에 아이디 저장 
		HttpSession session = request.getSession();
		String mem_id = (String) session.getAttribute("mem_id");
//		
		ActionForward forward = new ActionForward();
		System.out.println(mem_id);

		//전달정보저장
		BoardDAO bodao = new BoardDAO();
		int myqnacnt = bodao.getMyqnacnt(mem_id);
		int myreviewcnt = bodao.getMyreviewcnt(mem_id);
	
		request.setAttribute("myqnacnt", myqnacnt);
		request.setAttribute("myreviewcnt", myreviewcnt);
		
		
		// 전달정보(파라미터) 저장 
		int bo_num = Integer.parseInt(request.getParameter("bo_num"));
		String pageNum = request.getParameter("pageNum");
		
		// 글번호에 해당 글 정보를 가져오기 
		BoardDTO bodto = bodao.getProposalDetail(bo_num);
		
		
		// DAO 객체 생성 
//		BoardDAO bodao = new BoardDAO();
		
		// 글 조회수 1 증가 -> DAO 1 증가 메서드 호출
//		bodao.updateReadcount(bo_num);
//		System.out.println(" M : 조회수 1 증가 완료! ");
		
	
		
		// request 영역에 글정보를 저장 
		request.setAttribute("bodto", bodto);
		request.setAttribute("pageNum", pageNum);
		
		// 페이지 이동(준비)
		forward.setPath("./board/proposalDetail.jsp");
		forward.setRedirect(false); //request 가져가니까 false 
		
		return forward; //잊지 말고 null에서 바꿔주기 우리는 controller로 간다
	}
		

}