package com.taiso.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.taiso.member.db.MemberDAO;

public class MemberUpdateNickNameCheckAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println(" M : MemberUpdateNickNameCheckAction_execute() 호출");
		
		// 전달정보 저장 (mem_userNName)
		String mem_userNewName = request.getParameter("mem_userNewName");
		System.out.println(" M : mem_userNewName	: " +mem_userNewName);
		
		// DB에 확인 => DAO생성 - 체크 메서드 호출
		MemberDAO mDAO = new MemberDAO();
		int result = mDAO.memberNickNameCheck(mem_userNewName);
		
		if(result == 1) {
			System.out.println(" M : 닉네임 중복 O, 사용불가");
		}else { //result == 0
			System.out.println(" M : 닉네임 중복 X, 사용가능");
		}
		
		// 정보 저장
		request.setAttribute("result", result);		
		
		// 페이지 이동(준비)
		ActionForward forward = new ActionForward();
		forward.setPath("./member/memberUpdateNickNameCheck.jsp?inputNewName="+mem_userNewName);	
		forward.setRedirect(false);		
		
		return forward;
	}

}
