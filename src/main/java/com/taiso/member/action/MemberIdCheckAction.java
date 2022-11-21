package com.taiso.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.taiso.member.db.MemberDAO;

public class MemberIdCheckAction implements Member {

	@Override
	public MemberForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println(" M : MemberIdCheckAction_execute() 호출");
		
		// 전달정보 저장 (mem_userId)
		String mem_userId = request.getParameter("mem_userId");
		System.out.println(" M : mem_userid	: " +mem_userId);
		
		// DB에 확인 => DAO생성 - 체크 메서드 호출
		MemberDAO mDAO = new MemberDAO();
		int result = mDAO.memberIdCheck(mem_userId);
		
		if(result == 1) {
			System.out.println(" M : 아이디 중복 O, 사용불가");
		}else { //result == 0
			System.out.println(" M : 아이디 중복 X, 사용가능");
		}
		
		// 정보 전달
		request.setAttribute("result", result);		
		
		// 페이지 이동
		MemberForward forward = new MemberForward();
		forward.setPath("./member/memberIdCheck.jsp?inputID="+mem_userId);	
		forward.setRedirect(false);		
		
		return forward;
	}

}
