package com.taiso.admin.review.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.admin.review.db.AdminReviewDAO;

public class AdminReviewDeleteAction implements AdminReview {

	@Override
	public AdminReviewForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println(" M : AdminReviewDeleteAction_execute 호출 ");
		
//		// 세션제어(admin)
//		HttpSession session = request.getSession();
//		String id = (String) session.getAttribute("id");
		AdminReviewForward forward = new AdminReviewForward();
//		if(id == null || !id.equals("admin")) {
//			forward.setPath("./MemberLogin.me");
//			forward.setRedirect(true);
//			System.out.println(" M : 로그인페이지로 이동 ");
//			return forward;
//		}
		
		// 전달된 정보 저장
		int rev_num = Integer.parseInt(request.getParameter("rev_num"));
		String pageNum = request.getParameter("pageNum");
		
		AdminReviewDAO dao = new AdminReviewDAO();
		dao.deleteReivew(rev_num);
		
		// 페이지이동
		forward.setPath("./AdminReviewList.adr");
		forward.setRedirect(true);
		return forward;
	}

}
