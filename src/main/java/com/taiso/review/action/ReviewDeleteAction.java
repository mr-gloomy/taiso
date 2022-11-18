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
//		String mem_id = (String) session.getAttribute("mem_id");
//		
		ActionForward forward = new ActionForward();
//		if(mem_id == null) {
//			forward.setPath("로그인 안 했을 때 이동할 주소");
//			// 현재 페이지 가상주소에서 옮겨가야 하니까 리다이렉트로
//			forward.setRedirect(true);
//			return forward;\
//		}
		
		// 글번호 저장
		int rev_num = Integer.parseInt(request.getParameter("rev_num"));
		
		// DAO 객체 생성
		ReviewDAO rDAO = new ReviewDAO();
		rDAO.deleteReview(rev_num);
		
		forward.setPath("./ReviewListAction.rev");
		forward.setRedirect(true);
		
		return forward;
	}

}
