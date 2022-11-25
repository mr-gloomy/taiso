
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
      
      //관리자여부 로그인 제어
//      HttpSession session = request.getSession();
//      String mem_id = (String) session.getAttribute("mem_id");
//      
      ActionForward forward = new ActionForward();
//      if(mem_id == null || !mem_id.equals("admin")) {
//         forward.setPath("./Main.me");
//         forward.setRedirect(true);
//         return forward;   
//      }
      
      
      
      // 상세조회로 넘어갈 때 주소줄에 pageNum이랑 rez_uqNum 받아오는지 확인하기
      int rez_uqNum = Integer.parseInt(request.getParameter("rez_uqNum")); // From admin_reservation_list.jst
      String pageNum = request.getParameter("pageNum");
      
      System.out.println("M : rez_uqNum : " + rez_uqNum + ", pageNum : " + pageNum);
      
      
      
      
      // DAO - 주문번호에 해당하는 모든 정보를 가져오는 메서드
      AdminReservationDAO rezDAO = new AdminReservationDAO();
      ArrayList adminTotalDTO = rezDAO.getAdminReservationList(rez_uqNum);
      
      System.out.println(" M :" + adminTotalDTO); // 확인용
      
      
      
      
      // 예약정보를 request 영역에 저장
      request.setAttribute("rezDTO", adminTotalDTO.get(0));
      request.setAttribute("payDTO", adminTotalDTO.get(1));
      request.setAttribute("mDTO", adminTotalDTO.get(2));
      request.setAttribute("carDTO", adminTotalDTO.get(3));
      request.setAttribute("pageNum", pageNum);
         
      // 페이지 이동 (./views/admin_reservation_list.jsp)
      forward.setPath("./views/admin_reservation_list_detail.jsp");
      forward.setRedirect(false);
      
      return forward;
   }


}