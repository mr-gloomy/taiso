package com.taiso.admin.car.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.taiso.admin.car.db.AdminCarDAO;

public class AdminCarUpdateAction implements AdminCar {

	@Override
	public AdminCarForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		System.out.println(" M : AdminCarUpdateAction_execute() 호출");

		// 로그인 세션제어(생략)
		
		// 전달정보(car_code)
		int car_code = Integer.parseInt(request.getParameter("car_code"));
		
		// DAO - 상품정보 가져오기
		AdminCarDAO acDAO = new AdminCarDAO();
		
		// request 영역에 저장
		request.setAttribute("dto", acDAO.getAdminCar(car_code));
		
		// 페이지 이동(./center/adminCarUpadte.jsp)
		AdminCarForward forward = new AdminCarForward();
		forward.setPath("./center/adminCarUpdate.jsp");
		forward.setRedirect(false);
		return forward;
	}

}
