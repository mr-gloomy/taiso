package com.taiso.member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.member.db.MemberDAO;

public class MemberUpdatePwAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println(" M : MemberUpdatePwAction_execute() 호출 ");
		
		// 전달 정보 저장(mem_id, mem_pw)
		HttpSession session = request.getSession();
		String mem_id = (String)session.getAttribute("mem_id");
		String mem_pw = request.getParameter("mem_pw");

		// DAO 객체 생성 - 비밀번호 일치 체크
		MemberDAO mDAO = new MemberDAO();
		int result = mDAO.memberReLogin(mem_id, mem_pw);
		
		
		// 체크 결과에 따른 페이지 이동
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		if(result == 0) {
			out.print("<script>");
			out.print(" alert('비밀번호가 틀렸습니다.'); ");
			out.print(" history.back(); ");
			out.print("</script>");
			out.close();
			
			return null;
			
		}else {// 로그인 성공 -> 비밀번호 세션영역에 저장
		session.setAttribute("mem_pw", mem_pw);
		
		// 수정페이지로 이동
		ActionForward forward = new ActionForward();
		forward.setPath("/MemberUpdate.me");
		forward.setRedirect(true);
		
		return forward;
		
		}
		
	}

}

