package com.taiso.board.action;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.board.db.BoardDAO;
import com.taiso.board.db.BoardDTO;

public class ProposalListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : ProposalListAction_execute 호출 ! ");
	
		// 세션에 아이디 저장 
		HttpSession session = request.getSession();
		String mem_id = (String) session.getAttribute("mem_id");
//		
		ActionForward forward = new ActionForward();
		System.out.println(mem_id);


		//전달정보저장
		BoardDAO bodao = new BoardDAO();
		BoardDTO bodto = new BoardDTO();
		int myqnacnt = bodao.getMyqnacnt(mem_id);
		int myreviewcnt = bodao.getMyreviewcnt(mem_id);
	
		request.setAttribute("myqnacnt", myqnacnt);
		request.setAttribute("myreviewcnt", myreviewcnt);
		
		
		
		
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
		
		
		
		// 게시판 전체 글 개수 확인
		int cnt = bodao.getProposalCount();
		
		System.out.println(" M : 전체 글 개수 : "+cnt+"개");
		
		/////////////////////////////////////////////////////////////////
		// 페이징 처리 (1)

		// 한 페이지에 보여줄 글의 개수
		int pageSize = 5;

		// 현 페이지가 몇페이지 인지 확인
		String pageNum = request.getParameter("pageNum");
		if (pageNum == null) {
			pageNum = "1";
		}

		// 시작행 번호 계산하기 1 11 21 31 41 .....
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1) * pageSize + 1;

		// 끝행 번호 계산하기 10 20 30 40 50.....
		int endRow = currentPage * pageSize;
		/////////////////////////////////////////////////////////////////

		/////////////////////////////////////////////////////////////////
		// 페이징 처리 (2)
		// 글이 있을때

		// 총 페이지 = 글개수(총량) / 페이지당 출력
		// => 만약에 나머지가 있을때 페이지 1개 추가

		// 전체 페이지수
		int pageCount = (cnt / pageSize) + (cnt % pageSize == 0 ? 0 : 1);

		// 한 화면에 보여줄 페이지수
		int pageBlock = 5;

		// 페이지블럭의 시작번호 1~10 => 1, 11~20 => 11 21~30 => 21
		int startPage = ((currentPage - 1) / pageBlock) * pageBlock + 1;
		// 페이지블럭의 끝번호
		int endPage = startPage + pageBlock - 1;

		if (endPage > pageCount) {
			endPage = pageCount;
		}


		/////////////////////////////////////////////////////////////////
		
		// DB에 배열 저장
		ArrayList ProposalList = bodao.getProposalList(mem_id, startRow, pageSize);
		System.out.println(" M : ProposalList 출력"+ProposalList);
		
		// request 객체에 정보 저장
		request.setAttribute("ProposalList", ProposalList);
		request.setAttribute("cnt", cnt);		
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("pageCount", pageCount);
		request.setAttribute("pageBlock", pageBlock);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		
		// 페이지 이동준비(티켓 생성) 
		forward.setPath("./board/proposalList.jsp");
		forward.setRedirect(false);
		
		return forward;
	}
		
}
