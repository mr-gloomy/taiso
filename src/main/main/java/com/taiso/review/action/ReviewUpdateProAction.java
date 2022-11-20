package com.taiso.review.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.review.db.ReviewDAO;
import com.taiso.review.db.ReviewDTO;

public class ReviewUpdateProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		System.out.println("ReviewUpdateAction_execute() 호출");
		
//		// 세션 제어 (id)
		HttpSession session = request.getSession();
//		String id = (String) session.getAttribute("id");
//		
		ActionForward forward = new ActionForward();
//		if(id == null) {
//			forward.setPath("로그인 안 했을 때 이동할 주소");
//			// 현재 페이지 가상주소에서 옮겨가야 하니까 리다이렉트로
//			forward.setRedirect(true);
//			return forward;
//		}
		
		// 넘어온 데이터 저장
		ReviewDTO rDTO = new ReviewDTO();
		
		rDTO.setRev_num(Integer.parseInt(request.getParameter("rev_num")));
		rDTO.setRev_subject(request.getParameter("rev_subject"));
		rDTO.setRev_content(request.getParameter("rev_content"));
		rDTO.setRev_star(Integer.parseInt(request.getParameter("rev_star")));
		
		// DAO 객체 생성
		ReviewDAO rDAO = new ReviewDAO();
		rDAO.updateReview(rDTO);
		
		forward.setPath("./review/reviewList.jsp");
		forward.setRedirect(false);
				
		return forward;
	}

}
