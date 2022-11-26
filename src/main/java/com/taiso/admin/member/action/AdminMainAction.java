package com.taiso.admin.member.action;

import java.util.ArrayList;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.taiso.admin.member.db.AdminMemberDAO;
import com.taiso.board.db.BoardDAO;
import com.taiso.car.db.CarDAO;
import com.taiso.reservation.db.AdminReservationDAO;
import com.taiso.review.db.ReviewDAO;


public class AdminMainAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println(" M : AdminMain_execute 호출 ");

		// 세션제어(admin)
		HttpSession session = request.getSession();
		String mem_id = (String) session.getAttribute("mem_id");
		
		ActionForward forward = new ActionForward();
		if(mem_id == null || !mem_id.equals("admin")) {
			forward.setPath("./MemberLogin.me");
			forward.setRedirect(true);
		}
				
		
		// DAO 객체 생성
		AdminMemberDAO aDAO = new AdminMemberDAO();
		BoardDAO bDAO = new BoardDAO();
		ReviewDAO rvDAO = new ReviewDAO();
		AdminReservationDAO reDAO = new AdminReservationDAO();
		CarDAO cDAO = new CarDAO();

		// // 게시판 전체 글 개수 확인
		int cnt1 = aDAO.getMemberCount();
		int cnt2 = bDAO.getQuestionCount();
		int cnt3 = bDAO.getProposalCount();
		int cnt4 = rvDAO.getReviewCount(null);
		int cnt5 = cDAO.getCarCount();
		int cnt6 = reDAO.getReservationCount();

		System.out.println(" M : " + cnt1 + cnt2 + cnt3 + cnt4 +cnt5  );

		
		// 페이징 처리
		request.setAttribute("totalCnt1", cnt1);
		request.setAttribute("totalCnt2", cnt2);
		request.setAttribute("totalCnt3", cnt3);
		request.setAttribute("totalCnt4", cnt3);
		request.setAttribute("totalCnt4", cnt4);
		request.setAttribute("totalCnt5", cnt5);
		request.setAttribute("totalCnt6", cnt6);
		
		// 페이지 이동
		forward.setPath("./adminMember/adminMain.jsp");
		forward.setRedirect(false);
		
		return forward;

	}

}