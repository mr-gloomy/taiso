package com.taiso.reservation.action;

import java.util.ArrayList;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.reservation.db.AdminReservationDAO;
import com.taiso.reservation.db.ReservationDTO;

public class AdminReservationDetailListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
System.out.println(" M : AdminReservationDetailListAction_execute() 호출 ");
		
		// 관리자만 볼 수 있는 페이지니까 세션제어 해줘야함
		// 세션제어(관리자여부)
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		
		ActionForward forward = new ActionForward();
		if(id == null || !id.equals("admin")) {
			forward.setPath("./Main.me");
			forward.setRedirect(true);
			return forward;	
		}
		
		int rez_uqNum = Integer.parseInt(request.getParameter("rez_uqNum")); // From admin_reservation_list.jst
		String pageNum = request.getParameter("pageNum");
		
		System.out.println("M : rez_uqNum : " + rez_uqNum + ", pageNum : " + pageNum);
		
		// DAO - 주문번호에 해당하는 예약+결제정보를 가져오는 DAO
		AdminReservationDAO rezDAO = new AdminReservationDAO();
		ArrayList adminTotalDTO = rezDAO.getAdminReservationList(rez_uqNum);
		
		System.out.println(" M :" + adminTotalDTO); // 확인용
		
		// 예약정보를 request 영역에 저장
		request.setAttribute("rezDTO", adminTotalDTO.get(0));
		request.setAttribute("payDTO", adminTotalDTO.get(1));
		 request.setAttribute("pageNum", pageNum);
	      
		// 페이지 이동 (./views/admin_reservation_list.jsp)
		forward.setPath("./views/adminReservationListDetail.jsp");
		forward.setRedirect(false);
		
		return forward;
	}

}
