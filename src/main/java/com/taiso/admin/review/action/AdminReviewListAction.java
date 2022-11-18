package com.taiso.admin.review.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.taiso.admin.review.db.AdminReviewDAO;

public class AdminReviewListAction implements AdminReview {

	@Override
	public AdminReviewForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : AdminReviewListAction_execute() 호출");
		
		// AdminReviewDAO 객체 생성
		AdminReviewDAO arDAO = new AdminReviewDAO();
		
		// 게시판 전체 글 개수 확인
		int cnt = arDAO.getReviewCount();
		
		System.out.println(" M : 전체 글 개수 : " + cnt + "개");
		
		///////////////////////////////////////////////////////////////
		// 페이징 처리(1)
		
		// 한 페이지에 보여줄 글의 개수
		int pageSize = 5;

		// 현 페이지가 몇페이지인지 확인
		String pageNum = request.getParameter("pageNum");
		if(pageNum == null){
			pageNum = "1";
			}
			
			// 시작행 번호 계산하기 1 11 21 31 41 ....
			int currentPage = Integer.parseInt(pageNum);
			int startRow = (currentPage - 1 ) * pageSize+1;
			// 끝행 번호 계산하기 10 20 30 40 50 ....
			int endRow = currentPage * pageSize;
			///////////////////////////////////////////////////////////////////////////
			
			// 디비에 전체 글 리스트 가져오기
//			ArrayList boardListAll = dao.getReviewList();
			ArrayList reviewListAll = arDAO.getReviewList(startRow, pageSize);
////////////////////////////////////////////////////////////////////
			// 페이징 처리 (2)
			
			// 글이 있을 때
			
			// 총 페이지 = 글 개수(총량) / 페이지당 출력
			//		=> 만약에 나머지가 있을때 페이지 1개 추가
			
			// 전체 페이지수
			int pageCount = (cnt/pageSize)+(cnt%pageSize==0? 0:1); // 0이면 0을, 아니면 1을 더한다
			
			// 한 화면에 보여줄 페이지수
			int pageBlock = 2;
			
			// 페이지블럭의 시작번호 1~10 => 1, 11~20 => 11   21~30 => 21
			int startPage = ((currentPage -1)/pageBlock)*pageBlock+1;
			// 페이지블럭의 끝번호
			int endPage = startPage+pageBlock-1;
			
			if(endPage > pageCount){
			endPage = pageCount;
			}
			
			
			
			
			
			
			
			
////////////////////////////////////////////////////////////////////
			
			//System.out.println(" M : " + boardListAll); // 글이 많아질수록 속도가 느려짐 한번확인해보고 주석처리 권장.
			
			// 직접출력 -> 위임(대신 출력) view  .jsp페이지에서 출력(태그가 쉽게만들어지니깐)
			// Action -> jsp 페이지 정보 전달(request 영역객체 저장)
			request.setAttribute("reviewListAll", reviewListAll);
			
			// 페이징처리 정보 저장
			request.setAttribute("pageNum", pageNum);
			request.setAttribute("totalCnt", cnt);
			request.setAttribute("pageCount", pageCount);
			request.setAttribute("pageBlock", pageBlock);
			request.setAttribute("startPage", startPage);
			request.setAttribute("endPage", endPage);
			
			// 페이징 이동준비(티켓 생성)
			AdminReviewForward forward = new AdminReviewForward();
			forward.setPath("./reviewBoard/adminReviewBoard.jsp");
			forward.setRedirect(false);
			
			return forward;
	}

}
