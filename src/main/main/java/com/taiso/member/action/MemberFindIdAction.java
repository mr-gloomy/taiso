package com.taiso.member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.taiso.member.db.MemberDAO;
import com.taiso.member.db.MemberDTO;

public class MemberFindIdAction implements Member {

	@Override
	public MemberForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println(" M : MemberFindIdAction_execute() 호출 ");
		
		// 전달정보 저장(mem_name, mem_email)
		String mem_name = request.getParameter("mem_name");
		String mem_email = request.getParameter("mem_email");
		
		// DAO - 아이디 찾기 메서드
		MemberDAO mDAO = new MemberDAO();
		MemberDTO mDTO = mDAO.memberFindId(mem_name,mem_email);
		
		System.out.println(" M : 아이디 찾기 : " +mDTO);
		
		// 정보 request 영역 저장
		request.setAttribute("mDTO", mDTO);
		
		// 페이지 이동
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		MemberForward forward = new MemberForward();
		
		if(mDTO != null) {	
			forward.setPath("member/memberFindIdResult.jsp");
			forward.setRedirect(false);
			
			return forward;
			
		}else {
			out.print("<script>");
			out.print(" alert('일치하는 정보가 없습니다.'); ");
			out.print(" location.href='./MemberFindId.me'; ");
			out.print("</script>");
			out.close();
			
			return null;

		}
	}
		
}

