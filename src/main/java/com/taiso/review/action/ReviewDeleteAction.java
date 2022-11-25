package com.taiso.review.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.review.db.ReviewDAO;

public class ReviewDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		System.out.println("ReviewDeleteAction_exectue() 호출");
		
//		// 세션 제어 (id)
		HttpSession session = request.getSession();
		String mem_id = (String) session.getAttribute("mem_id");
	
		ActionForward forward = new ActionForward();
		if(mem_id == null) {
			forward.setPath("./MemberLogin.me");
			forward.setRedirect(true);
			return forward;
		}
		
		// 글번호 저장
		int rez_uqNum = Integer.parseInt(request.getParameter("rez_uqNum"));
		
		// DAO 객체 생성
		ReviewDAO rDAO = new ReviewDAO();
		rDAO.deleteReview(rez_uqNum);
		
		forward.setPath("./ReservationListAction.rez");
		forward.setRedirect(true);
		
		return forward;
	}

}
