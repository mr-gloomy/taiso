package com.taiso.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.member.db.MemberDAO;
import com.taiso.member.db.MemberDTO;

public class MemberNaverLoginAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println(" M : MemberNaverLoginAction_execute() 호출 ");
		
		String id = request.getParameter("id");
		String mem_id = "N_"+id;
		String mem_pw = "naver";
		String birthday = request.getParameter("birthday");
		String mem_birthday = "1990-"+birthday;
		String mem_phone = "010-0000-0001";
		String mem_blacklist = "N";
		
		MemberDAO mDAO = new MemberDAO();
		int result = mDAO.memberNaverLogin(mem_id,mem_pw);
		System.out.println(" M : 네이버 로그인! ");

		
		ActionForward forward = new ActionForward();
		// 체크 결과에 따른 페이지 이동
		if(result == -1) {
			// 전달 정보 저장
			MemberDTO mDTO = new MemberDTO();
			
			mDTO.setMem_id(mem_id);
			mDTO.setMem_pw(mem_pw);
			mDTO.setMem_name(request.getParameter("name"));
			mDTO.setMem_nickName(request.getParameter("nickname"));
			mDTO.setMem_email(request.getParameter("email"));
			mDTO.setMem_birthday(mem_birthday);
			mDTO.setMem_phone(mem_phone);
			mDTO.setMem_blacklist(mem_blacklist);
			

			System.out.println(" M : mDTO : " +mDTO);
			
			
			// DAO - 회원가입 메서드 호출
			mDAO.memberNaverJoin(mDTO);
			System.out.println(" M : 회원가입 성공! ");

		
			// 페이지 이동
			System.out.println("result-1");
			forward.setPath("/MemberJoin.me");	
			forward.setRedirect(false);		
			
			return forward;	
			
			
		}else {
			// result == 1
			// 로그인 성공 -> 아이디 세션영역에 저장
			System.out.println("result1");
			HttpSession session = request.getSession();
			session.setAttribute("mem_id", mem_id);

			forward.setPath("/MemberLogin.me");	
			forward.setRedirect(true);		
			
			System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
			
			return forward;	
		}
	}
}
