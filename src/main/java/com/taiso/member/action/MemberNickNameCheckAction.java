package com.taiso.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.taiso.member.db.MemberDAO;

public class MemberNickNameCheckAction implements Member {

	@Override
	public MemberForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println(" M : MemberNickNameCheckAction_execute() 호출");
		
		// 전달정보 저장 (mem_userNName)
		String mem_userNName = request.getParameter("mem_userNName");
		System.out.println(" M : mem_userNName	: " +mem_userNName);
		
		// DB에 확인 => DAO생성 - 체크 메서드 호출
		MemberDAO mDAO = new MemberDAO();
		int result = mDAO.memberNNameCheck(mem_userNName);
		
		if(result == 1) {
			System.out.println(" M : 닉네임 중복 O, 사용불가");
		}else { //result == 0
			System.out.println(" M : 닉네임 중복 X, 사용가능");
		}
		
		// 정보 저장
		request.setAttribute("result", result);		
		
		// 페이지 이동(준비)
		MemberForward forward = new MemberForward();
		forward.setPath("./member/memberNickNameCheck.jsp?inputNName="+mem_userNName);	
		forward.setRedirect(false);		
		
		return forward;
	}

}
