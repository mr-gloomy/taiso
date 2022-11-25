package com.taiso.review.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.review.db.ReviewDAO;
import com.taiso.review.db.ReviewDTO;

public class ReviewCommentProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		System.err.println("ReviewCommentProAction_execute() 호출");
		
		// 세션 제어 (id)
		HttpSession session = request.getSession();
		
		String mem_id = (String) session.getAttribute("mem_id");
		int rez_uqNum = (int) session.getAttribute("rez_uqNum");
		int rev_num = Integer.parseInt(request.getParameter("rev_num"));
		
		System.out.println(mem_id);
		System.out.println(rez_uqNum);
		// System.out.println(rev_num);
		
		ActionForward forward = new ActionForward();
//		if(mem_id == null) {
//			forward.setPath("로그인 안 했을 때 이동할 주소");
//			forward.setRedirect(true);
//			return forward;
//		}
		
		// DTO 생성
		ReviewDTO rDTO = new ReviewDTO();
		
		rDTO.setRez_uqNum(rez_uqNum);
		rDTO.setMem_id(mem_id);
		rDTO.setRev_subject(request.getParameter("rev_subject"));
		rDTO.setCar_code(Integer.parseInt(request.getParameter("car_code")));
		rDTO.setRev_content(request.getParameter("rev_content"));
		rDTO.setRev_image(request.getParameter("rev_image"));
		rDTO.setRev_ref(Integer.parseInt(request.getParameter("rev_num")));
		
		System.out.println(rDTO);
		
		ReviewDAO rDAO = new ReviewDAO();
		rDAO.insertReviewReply(rDTO);
		
		forward.setPath("./ReviewList.rev");
		forward.setRedirect(true);
		
		return forward;
	}

}
