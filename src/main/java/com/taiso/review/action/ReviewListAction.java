package com.taiso.review.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.car.db.CarDAO;
import com.taiso.review.db.ReviewDAO;

public class ReviewListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		System.out.println("ReviewListAction_execute() 호출");
		
//		// 세션 제어 (id)
		HttpSession session = request.getSession();
//		String id = (String) session.getAttribute("id");
//		
		int car_code = 1;
		ActionForward forward = new ActionForward();
//		if(id == null) {
//			forward.setPath("로그인 안 했을 때 이동할 주소");
//			forward.setRedirect(true);
//			return forward;
//		}

		ReviewDAO rDAO = new ReviewDAO();
		CarDAO dao = new CarDAO();
		
		// 디비에 등록된 글 개수 불러오기
		int cnt = rDAO.getReviewCount();
		
		// 디비에 등록된 모든 글 들고오기
		List reviewList = rDAO.getReviewList(car_code);
		
		// 전달정보 저장
		// int rev_num = Integer.parseInt(request.getParameter("rev_num"));
		
		// 세션에 저장
		request.setAttribute("cnt", cnt);
		request.setAttribute("reviewList", reviewList);
		request.setAttribute("cDTO", dao.getOneCarList(car_code));
		
		// 페이지 이동
		forward.setPath("./review/carDetailList.jsp");
		forward.setRedirect(false);
		
		return forward;
	}

}
