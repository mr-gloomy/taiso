package com.taiso.reservation.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.taiso.car.db.CarDAO;
import com.taiso.review.db.ReviewDAO;

public class ReservationMainAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println(" m : ReservationMainAction_execute()");
		
		ReviewDAO rDAO = new ReviewDAO();
		CarDAO carDAO = new CarDAO();
		
		request.setAttribute("rList", rDAO.selectRandReview());
		request.setAttribute("carList", carDAO.selectRandCar());
		request.setAttribute("carCnt", carDAO.getCarCount());
		request.setAttribute("mCnt", rDAO.getMemberCount());
		request.setAttribute("rezCnt", rDAO.getRezCount());
		
		ActionForward forward = new ActionForward();
		forward.setPath("./views/reservation.jsp");
		forward.setRedirect(false);
		
		return forward;
	}

}
