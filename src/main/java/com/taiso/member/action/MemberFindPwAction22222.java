package com.taiso.member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.taiso.member.db.MemberDAO;
import com.taiso.member.db.MemberDTO;

public class MemberFindPwAction22222 implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println(" M : MemberFindPwAction_execute() 호출 ");
		
		// 전달정보 저장(mem_id, mem_name, mem_email)
		String mem_id = request.getParameter("mem_id");
		String mem_name = request.getParameter("mem_name");
		String mem_email = request.getParameter("mem_email");
		
		// DAO - 아이디 찾기 메서드
		MemberDAO mDAO = new MemberDAO();
		MemberDTO mDTO = mDAO.memberFindPw(mem_id,mem_name,mem_email);
		String mem_pw = mDTO.getMem_pw();
		
		System.out.println(" M : 비밀번호 찾기 : " +mem_pw);
		
		// 정보 request 영역 저장
		request.setAttribute("mem_id", mem_id);
		request.setAttribute("mem_pw", mem_pw);
		
		// 페이지 이동

		
		
		if(mem_pw != null) {	
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print("<script>");
			out.print(" alert('메일로 비밀번호가 전송되었습니다.'); ");
			out.print("</script>");
			
			ActionForward forward = new ActionForward();
			forward.setPath("/MemberFindPwResult.me");
			forward.setRedirect(false);
				
			return forward;
			
			
		}else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print("<script>");
			out.print(" alert('일치하는 정보가 없습니다.'); ");
			out.print(" location.href='./MemberFindPw.me'; ");
			out.print("</script>");
			out.close();
			
			return null;

		}		
				
	}

}