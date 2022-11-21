package com.taiso.member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.member.db.MemberDAO;

public class MemberRemoveAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println(" M : MemberRemoveProAction_execute 호출");
		
		// 세션제어
		HttpSession session = request.getSession();
		String mem_id = (String) session.getAttribute("mem_id");
		
		ActionForward forward = new ActionForward();
		if(mem_id == null) {
			forward.setPath("./MemberLogin.me");
			forward.setRedirect(true);
			
			return forward;
		}
		
		// 전달정보 저장
		session = request.getSession();
		session.getAttribute("mem_id");
		String mem_pw = request.getParameter("mem_repw");
		
		System.out.println(" M : 아이디 저장 :" +mem_id);
		System.out.println(" M : 비밀번호 저장 :" +mem_pw);
		
		// DAO - 회원정보 삭제(deleteMember())
		MemberDAO mDAO = new MemberDAO();
		int result = mDAO.memberRemove(mem_id, mem_pw);
		
		System.out.println(" M : result : "+result);
		
		
		// 페이지 이동
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
			
		if(result == 0) {
			out.print("<script>");
			out.print(" alert('비밀번호가 틀렸습니다.'); ");
			out.print(" history.back(); ");
			out.print("</script>");
			out.close();
			
			return null;
			
			
		}else { // result == 1
			// 세션 초기화
			session.invalidate();
			
			// 메인으로 이동
			out.print("<script>");
			out.print(" alert('회원탈퇴가 완료되었습니다.'); ");
			out.print(" location.href='./ReservationMain.rez'; ");
			out.print("</script>");
			out.close();
			
			return null;
		}
	}
}
