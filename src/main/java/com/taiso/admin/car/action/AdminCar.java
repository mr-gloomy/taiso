package com.taiso.admin.car.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface AdminCar {
	
	public AdminCarForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
}
