package com.taiso.admin.car.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.taiso.admin.car.db.AdminCarDAO;
import com.taiso.admin.car.db.CarDTO;

public class AdminCarUpdateProAction implements AdminCar {

	@Override
	public AdminCarForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : AdminCarUpdateProAction_execute() 호출");
		
		// 로그인 세션(생략)
		// 한글처리(생략)
		// 전달정보(DTO)
		CarDTO cDTO = new CarDTO();
		
		cDTO.setCar_brand(request.getParameter("car_brand"));
		cDTO.setCar_category(request.getParameter("car_category"));
		cDTO.setCar_code(Integer.parseInt(request.getParameter("car_code")));
		cDTO.setCar_fuel(request.getParameter("car_fuel"));
		cDTO.setCar_location(Integer.parseInt(request.getParameter("car_location")));
		cDTO.setCar_name(request.getParameter("car_name"));
		cDTO.setCar_op(request.getParameter("car_op"));
		cDTO.setCar_price(Integer.parseInt(request.getParameter("car_price")));
		cDTO.setCar_year(Integer.parseInt(request.getParameter("car_year")));
		
		// DAO - 상품정보 수정메서드 (AdminUpdateCar(DTO))
		AdminCarDAO acDAO = new AdminCarDAO();
		acDAO.adminUpdateCar(cDTO);
		
		// 페이지 이동
		AdminCarForward forward = new AdminCarForward();
		forward.setPath("./AdminCarList.ad");
		forward.setRedirect(true);
		
		return forward;
	}

}
