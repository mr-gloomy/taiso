package com.taiso.board.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.taiso.board.db.BoardDAO;

public class QuestionListAction implements Board {

	@Override
	public BoardForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : QuestionListAction_execute 호출 ! ");
		
		// BoardDAO 객체 생성 
		BoardDAO bodao = new BoardDAO();
		
		// 게시판 전체 글 개수 확인
		int cnt = bodao.getQuestionCount();
		
		System.out.println(" M : 전체 글 개수 : "+cnt+"개");
		
		/////////////////////////////////////////////////////////////////
		// 페이징 처리 (1)

		// 한 페이지에 보여줄 글의 개수
		int pageSize = 10;

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
		ArrayList QuestionList = bodao.getQuestionList(startRow, pageSize);
		System.out.println(" M : QuestionList 출력"+QuestionList);
		
		// request 객체에 정보 저장
		request.setAttribute("QuestionList", QuestionList);
		request.setAttribute("cnt", cnt);		
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("pageCount", pageCount);
		request.setAttribute("pageBlock", pageBlock);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		
		// 페이지 이동준비(티켓 생성) 
		BoardForward forward = new BoardForward();
		forward.setPath("./board/questionList.jsp");
		forward.setRedirect(false);
		
		return forward;
	}
		
}
