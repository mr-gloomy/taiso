package com.taiso.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Member {
	
	public MemberForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception;	

}
