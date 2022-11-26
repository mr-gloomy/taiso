package com.taiso.member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.member.db.MemberDAO;
import com.taiso.member.db.MemberDTO;


public class MemberJoinAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println(" M : MemberJoinAction_execute() 호출");
		
		// 로그인한 상태라면 가입 진행 불가
		HttpSession session = request.getSession();
		String mem_id = (String) session.getAttribute("mem_id");

		if(mem_id != null){
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('이미 로그인 상태입니다.');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
			
			return null;
		}
		
		String mem_emailCheck = SHA256.getSHA256("mem_email");
		System.out.println(mem_emailCheck);

		// 전달된 회원가입 정보 저장
		MemberDTO mDTO = new MemberDTO();

		mDTO.setMem_id(request.getParameter("mem_id"));
		mDTO.setMem_pw(request.getParameter("mem_pw"));
		mDTO.setMem_name(request.getParameter("mem_name"));
		mDTO.setMem_nickName(request.getParameter("mem_nickName"));
		mDTO.setMem_phone(request.getParameter("mem_phone"));
		mDTO.setMem_birthday(request.getParameter("mem_birthday"));
		mDTO.setMem_email(request.getParameter("mem_email"));
		mDTO.setMem_emailCheck(mem_emailCheck);
		mDTO.setMem_accept_sns(Integer.parseInt(request.getParameter("mem_accept_sns")));
		mDTO.setMem_blacklist(request.getParameter("mem_blacklist"));

		session.setAttribute("mem_id", request.getParameter("mem_id"));
		
		System.out.println(" M : mDTO : " +mDTO);
		
		
		// DAO - 회원가입 메서드 호출
		MemberDAO mDAO = new MemberDAO();
		mDAO.memberJoin(mDTO);
		System.out.println(" M : 회원가입 성공! ");
		
		
		// 페이지 이동(준비)
		ActionForward forward = new ActionForward();
		forward.setPath("/MemberJoinEmailSendAction.me");
		forward.setRedirect(false);
		
		return forward;
	}

}
