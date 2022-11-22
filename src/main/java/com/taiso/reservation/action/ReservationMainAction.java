package com.taiso.reservation.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.taiso.car.db.CarDAO;
import com.taiso.car.db.CarDTO;
import com.taiso.review.db.ReviewDAO;
import com.taiso.review.db.ReviewDTO;

public class ReservationMainAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println(" m : ReservationMainAction_execute()");
		
		ReviewDAO rDAO = new ReviewDAO();
		CarDAO carDAO = new CarDAO();
		ReviewDTO rList = new ReviewDTO();
		CarDTO carList = new CarDTO();
		request.setAttribute("rList", rDAO.selectRandReview());
		request.setAttribute("carList", carDAO.selectRandCar());
		
		ActionForward forward = new ActionForward();
		forward.setPath("./views/reservation.jsp");
		forward.setRedirect(false);
		
		return forward;
	}

}
