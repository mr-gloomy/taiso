package com.taiso.reservation.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.taiso.member.db.MemberDTO;
import com.taiso.reservation.db.ReservationDAO;
import com.taiso.reservation.db.ReservationDTO;

public class ReservationCancelAction implements Action {

   @Override
   public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
      
      
      /*
       * ReservationCancelAction
       * 
       * 
       * (1) 예약 상태변경 메서드(비밀번호 일치 시)
       *       (X) 초기화
       *        (O) 예약상태 변경 
       * 
       * 
       * (2) 예약 수수료 계산
       * 
       * 
       * (3) 취소 DTO에 정보 저장 메서드
       * 
      */
      
      
      // (1) 예약 상태변경 메서드(비밀번호 일치 시)
      //      ReservationCancel.jsp에서 보낸 mem_id, mem_pw
      // 한글처리(필터)
      // 전달된 데이터 저장(수정정보)   
      ReservationDTO rezDTO= new ReservationDTO();
      MemberDTO mDTO = new MemberDTO();
      
      String mem_id = request.getParameter("mem_id");
      String mem_pw = request.getParameter("mem_pw");
      int rez_uqNum = Integer.parseInt(request.getParameter("rez_uqNum"));
      System.out.println("멤버아이디 :"+ mDTO.getMem_id());
      System.out.println("멤버아이디 :"+ request.getParameter("mem_id"));
      


      // DAO - 예약취소 정보저장 메서드 호출 (이유, 일시,수수료) 
      rezDTO.setRez_uqNum(Integer.parseInt(request.getParameter("rez_uqNum"))); //ReservationCancel.jsp에서 주소줄로 보낸 후 파람으로 가져오기
      rezDTO.setMem_id(request.getParameter("mem_id"));
      rezDTO.setPay_uqNum(request.getParameter("pay_uqNum"));
      rezDTO.setCancel_reason(request.getParameter("cancel_reason"));
      rezDTO.setCancel_commission(Integer.parseInt(request.getParameter("cancel_commission")));
      
      System.out.println("rezDTO 나오나 : " + rezDTO + ", mDTO 나오나 : " + mDTO);

      System.out.println("@@@@@@@rez_uqNum : " + rezDTO.getRez_uqNum());
      System.out.println("@@@@@@@mem_id : " + rezDTO.getMem_id());
      System.out.println("@@@@@@@mem_pw : " + mem_pw);
      System.out.println("@@@@@@@pay_uqNum : " + rezDTO.getPay_uqNum());
      System.out.println("@@@@@@@cancel_reason : " + rezDTO.getCancel_reason());
      
      // DAO - 취소이유저장, 예약상태 변경메서드
      ReservationDAO rezDAO = new ReservationDAO();
      rezDAO.reservationCancelSave(rezDTO, mem_pw);
      int result = rezDAO.reservationCancelChange(rez_uqNum,mem_id,mem_pw);
      
      
      System.out.println(" M 결과 : " + result);
     
      
      // 페이지 이동(js)
      response.setContentType("text/html; charset=UTF-8");
      PrintWriter out = response.getWriter();
      
      if(result == -1) {
         out.print("<script>");
         out.print(" alert('회원정보 없음'); ");
         out.print(" history.back(); ");
         out.print("</script>");
         out.close();
         
         return null;
      }else if(result == 0) {
         out.print("<script>");
         out.print(" alert('비밀번호 오류'); ");
         out.print(" history.back(); ");
         out.print("</script>");
         out.close();
         
         return null;
         
      }else { // result == 1
         
         out.print("<script>");
         out.print(" alert('예약 취소 완료'); ");
         out.print(" location.href='./ReservationListAction.rez'; ");   // 예약취소 이유 저장 액션으로 이동 후 완료페이지
         out.print("</script>");
         out.close();
         
         return null;
      }

   
      
   }

}