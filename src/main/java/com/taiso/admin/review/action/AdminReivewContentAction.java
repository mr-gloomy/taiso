package com.taiso.admin.review.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.taiso.admin.review.db.AdminReviewDAO;
import com.taiso.review.db.ReviewDTO;

public class AdminReivewContentAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println( " M : AdminReivewContentAction_execute() 호출");
		
		// 전달정보(파라메터) 저장
		int rev_num = Integer.parseInt(request.getParameter("rev_num"));
		String pageNum = request.getParameter("pageNum");
		
		AdminReviewDAO dao = new AdminReviewDAO();
		ReviewDTO adrDTO = dao.getReviewContent(rev_num);
		
		request.setAttribute("adrDTO", adrDTO);
		request.setAttribute("pageNum", pageNum);
		
		ActionForward forward = new ActionForward();
		forward.setPath("./reviewBoard/adminReviewContent.jsp");
		forward.setRedirect(false);
		return forward;
	}

}
