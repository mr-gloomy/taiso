package com.taiso.reservation.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.car.db.CarDAO;
import com.taiso.car.db.CarDTO;
import com.taiso.member.db.MemberDTO;
import com.taiso.reservation.db.ReservationDAO;
import com.taiso.reservation.db.ReservationDTO;

public class ReservationAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		System.out.println(" M : ReservationAction_execute() 호출");

		// ******************************* 회원정보 없어서 주석처리한 것. 로직 확인할 때 주석풀어주세요
		// 로그인 세션 저장
		HttpSession session = request.getSession();
		String mem_id = (String) session.getAttribute("mem_id");
		

		ActionForward forward = new ActionForward();
		if (mem_id == null) {
			forward.setPath("./MemberLogin.me"); // ******** 어느페이지로 이동시킬지 정하기
			forward.setRedirect(true);
			return forward;
		}
		
		

		int car_code = Integer.parseInt(request.getParameter("car_code"));
		
		// 차량 정보 저장
		CarDAO dao = new CarDAO();
		CarDTO carDTO = dao.getOneCarList(car_code); // 나중에 예약테이블 car_code랑 조인하기

		
		// 카 이름 DTO에 저장
//		rezDTO.setCar_name((String)session.getAttribute("car_name"));
		
		System.out.println("carDTO : " + carDTO); // 차량 정보 가져오는지 확인용

		
		// session 영역에 저장
		session.setAttribute("carDTO", carDTO);
		
		

		// ******************************* 회원정보 없어서 주석처리한 것. 로직 확인할 때 주석풀어주세요

		// 회원DAO - 회원정보 가져오기
		ReservationDAO rezDAO = new ReservationDAO(); // ******회원DAO로 바꾸기
		ArrayList totalDTO = rezDAO.getMemberInfo(mem_id);

		System.out.println(totalDTO);

		
		// request 영역에 저장
		request.setAttribute("mDTO", totalDTO.get(0));
		request.setAttribute("rezDTO", totalDTO.get(1));

		forward = new ActionForward();
		// 페이지 이동(./views/reservationForm.jsp)
		forward.setPath("./views/reservationForm.jsp");
		forward.setRedirect(false);
		return forward;
	}

}