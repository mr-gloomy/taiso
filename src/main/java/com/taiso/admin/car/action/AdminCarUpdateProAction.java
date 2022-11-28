package com.taiso.admin.car.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.taiso.admin.car.db.AdminCarDAO;
import com.taiso.car.db.CarDTO;

public class AdminCarUpdateProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : AdminCarUpdateProAction_execute() 호출");
		
		// 로그인 세션(생략)
		// 한글처리(생략)
		// 전달정보(DTO)
		CarDTO carDTO = new CarDTO();
		
		carDTO.setCar_brand(request.getParameter("car_brand"));
		carDTO.setCar_category(request.getParameter("car_category"));
		carDTO.setCar_code(Integer.parseInt(request.getParameter("car_code")));
		carDTO.setCar_fuel(request.getParameter("car_fuel"));
		carDTO.setCar_name(request.getParameter("car_name"));
		carDTO.setCar_op(request.getParameter("car_op"));
		carDTO.setCar_price(Integer.parseInt(request.getParameter("car_price")));
		carDTO.setCar_year(Integer.parseInt(request.getParameter("car_year")));
		carDTO.setCar_site(request.getParameter("car_site"));
		
		// DAO - 상품정보 수정메서드 (AdminUpdateCar(DTO))
		AdminCarDAO acDAO = new AdminCarDAO();
		acDAO.adminUpdateCar(carDTO);
		
		// 페이지 이동
		ActionForward forward = new ActionForward();
		forward.setPath("./AdminCarList.ad");
		forward.setRedirect(true);
		
		return forward;
	}

}
