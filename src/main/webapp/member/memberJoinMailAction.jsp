<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.taiso.member.db.MemberDTO"%>
<%@ page import="com.taiso.member.db.MemberDAO"%>
<%@ page import="com.taiso.member.action.SHA256"%>
<%@ page import="java.io.PrintWriter"%>

<%
	request.setCharacterEncoding("UTF-8");
	String mem_id = null;
	String mem_pw = null;
	String mem_rpw = null;
	String mem_name = null;
	String mem_nickName = null;
	String mem_phone = null;
	String mem_birthday = null;
	String mem_email = null;
	

	
	
	if(request.getParameter("mem_id") != null){
		mem_id = (String) request.getParameter("mem_id");
	}
	if(request.getParameter("mem_pw") != null){
		mem_pw = (String) request.getParameter("mem_pw");
	}
	if(request.getParameter("mem_rpw") != null){
		mem_rpw = (String) request.getParameter("mem_rpw");
	}
	if(request.getParameter("mem_name") != null){
		mem_name = (String) request.getParameter("mem_name");
	}
	if(request.getParameter("mem_nickName") != null){
		mem_nickName = (String) request.getParameter("mem_nickName");
	}
	if(request.getParameter("mem_phone") != null){
		mem_phone = (String) request.getParameter("mem_phone");
	}
	if(request.getParameter("mem_birthday") != null){
		mem_birthday = (String) request.getParameter("mem_birthday");
	}
	if(request.getParameter("mem_email") != null){
		mem_email = (String) request.getParameter("mem_email");
	}
	
	// 데이터 입력되지 않았을때 처리
	if(mem_id == null || mem_pw == null || mem_rpw == null || mem_name == null || mem_nickName == null || mem_phone == null || mem_email == null || mem_birthday == null || mem_email == null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력을 다시 확인해주세요.');");
		script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	}
	
	

%>