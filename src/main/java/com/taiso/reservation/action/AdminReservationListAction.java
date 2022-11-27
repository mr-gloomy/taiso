package com.taiso.reservation.action;

import java.util.List;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.reservation.db.AdminReservationDAO;

public class AdminReservationListAction implements Action {

   @Override
   public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
      System.out.println(" M : AdminReservationListAction_execute() 호출 ");
      
      // 관리자여부 로그인 제어
      HttpSession session = request.getSession();
      String mem_id = (String) session.getAttribute("mem_id");
      
      ActionForward forward = new ActionForward();
      if(mem_id == null || !mem_id.equals("admin")) {
         forward.setPath("./Main.me");
         forward.setRedirect(true);
         return forward;   
      }
      
      
      
      
      /**
       *  페이징처리 1단계 (BoardDAO) 참고하기
       */
      
      // AdminReservationDAO 객체 생성
      AdminReservationDAO dao = new AdminReservationDAO();
      
      // 예약 전체 글 개수 확인
      int cnt = dao.getReservationCount(); 
      
      // 한 페이지에 보여줄 글의 개수를 설정
      int pageSize = 10;
      
      // http://localhost:8088/TAISO/views/admin_reservation_list.jsp?pageNum=2
      
      // 한 페이지가 몇페이지인지 확인
      String pageNum = request.getParameter("pageNum");
      if(pageNum == null){
         pageNum = "1";
      }
      
      // 시작행 번호 계산하기  1  11   21   31   41 ....
      int currentPage = Integer.parseInt(pageNum);
      int startRow = (currentPage-1)*pageSize+1;
      
      // 끝행 번호 계산하기  10  20  30  40  50
      int endRow = currentPage*pageSize;
      

      
      /**
       *       디비에 전체 예약 정보 가져오기
       */
      
      // DAO - 회원들의 예약정보를 모두 가져오는 메서드
      AdminReservationDAO rezDAO = new AdminReservationDAO();
      List adminRezList = rezDAO.getAdminReservationList(startRow, pageSize);// 상세조회메서드
      
      
      
      /**
       *  페이징처리 2단계
       */
      
      // 전체 페이지수 // 변수 맞추기
      int pageCount = (cnt/pageSize)+(cnt%pageSize==0? 0:1); // 삼항연산 A? 참이면 true:false ==> 0:1
      
      // 한 화면에 보여줄 페이지수 (화면에 나타나는 페이지 인덱스 개수)
      int pageBlock = 5;
      
      // 페이지블럭의 시작번호   1~10 => 1, 11~20 => 11, 21~30 => 21
      int startPage = ((currentPage-1)/pageBlock)*pageBlock+1;
      
      // 페이지블럭의 끝번호
      int endPage = startPage+pageBlock-1;
      
      if(endPage > pageCount){
         endPage = pageCount;
      }
      
   
      
      
      // 예약정보를 request 영역에 저장
         request.setAttribute("adminRezList", adminRezList) ;

         
         
       // 페이징처리정보저장
         request.setAttribute("pageNum", pageNum);
         request.setAttribute("totalCnt", cnt);
         request.setAttribute("pageCount", pageCount); 
         request.setAttribute("pageBlock", pageBlock); 
         request.setAttribute("startPage", startPage);
         request.setAttribute("endPage", endPage);
        
         
      // 페이지 이동 (./views/admin_reservation_list_detail.jsp)
      forward = new ActionForward();
      forward.setPath("./views/admin_reservation_list.jsp");
      forward.setRedirect(false);
      
      return forward;
}}