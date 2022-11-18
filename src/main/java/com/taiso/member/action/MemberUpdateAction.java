package com.taiso.member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.taiso.member.db.MemberDAO;
import com.taiso.member.db.MemberDTO;

public class MemberUpdateAction implements Member {

	@Override
	public MemberForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println(" M : MemberUpdateAction_execute() ");	
		
		// 전달된 데이터 저장(수정정보)
		// 아이디, 비밀번호, 이메일, 이름, 닉네임, 전화번호, 마케팅동의
		MemberDTO mDTO = new MemberDTO();
		
		mDTO.setMem_id(request.getParameter("mem_id"));
		mDTO.setMem_pw(request.getParameter("mem_pw"));
		mDTO.setMem_email(request.getParameter("mem_email"));
		mDTO.setMem_name(request.getParameter("mem_name"));
		mDTO.setMem_nickName(request.getParameter("mem_newNickName"));
		mDTO.setMem_phone(request.getParameter("mem_phone"));
		mDTO.setMem_accept_sns(Integer.parseInt(request.getParameter("mem_accept_sns")));

		System.out.println(" M : 회원정보 수정 " +mDTO);
		
		
		// DAO - 회원정보 수정
		MemberDAO mDAO = new MemberDAO();
		int result = mDAO.memberUpdate(mDTO);
		
		System.out.println(" M : result : "+result);
		
		
		// 페이지 이동
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print("<script>");
		out.print(" alert('회원정보 수정이 완료되었습니다.'); ");
		out.print(" location.href='./ReservationMain.rez'; ");
		out.print("</script>");
		out.close();
		
//		MemberForward forward = new MemberForward();
//		forward.setPath("./reservation.jsp");
//		forward.setRedirect(true);
		// test
		
		return null;

	}

}
