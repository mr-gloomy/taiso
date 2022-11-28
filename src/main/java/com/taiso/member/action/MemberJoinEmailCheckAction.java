package com.taiso.member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.member.db.MemberDAO;
import com.taiso.member.db.MemberDTO;


public class MemberJoinEmailCheckAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println(" M : MemberJoinEmailCheckAction_execute() 호출");
		
		HttpSession session = request.getSession();
		String mem_id = (String) session.getAttribute("mem_id");
		
		// 코드
		String code = null;
		MemberDAO mDAO = new MemberDAO();
		if(request.getParameter("code") != null){
			code = request.getParameter("code");
		}
		
		
		// hash 처리한 결과를 비교해 결과 값 반환
		MemberDTO mDTO = mDAO.getEmail(mem_id);
		String mem_email = mDTO.getMem_email(); 
		boolean isRight = (SHA256.getSHA256(mem_email).equals(code)) ? true : false;
		if(isRight == true){
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('인증에 성공했습니다.');");
			out.println("location.href = './ReservationMain.rez';");
			out.println("</script>");
			out.close();
			
			session.removeAttribute("mem_id");
			
			return null;
			
		}else{
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('잘못된 이메일 주소입니다.');");
			out.println("location.href = './ReservationMain.rez';");
			out.println("</script>");
			out.close();
			
			mDAO.memberRemove(mem_id, mem_email);
			session.removeAttribute("mem_id");
			
			return null;
		}

	}

}
