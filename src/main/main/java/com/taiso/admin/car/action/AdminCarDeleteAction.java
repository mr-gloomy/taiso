package com.taiso.admin.car.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.taiso.admin.car.db.AdminCarDAO;

public class AdminCarDeleteAction implements AdminCar {

	@Override
	public AdminCarForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : AdminCarDeleteAction_execute() 호출");
		
		// 정보 가져오기
		int car_code = Integer.parseInt(request.getParameter("car_code"));
		
		// DAO 생성
		AdminCarDAO acDAO = new AdminCarDAO();
		
		acDAO.adminDeleteCar(car_code);
				
		AdminCarForward forward = new AdminCarForward();
		forward.setPath("./AdminCarList.ad");
		forward.setRedirect(true);
		
		return forward;
	}

}
