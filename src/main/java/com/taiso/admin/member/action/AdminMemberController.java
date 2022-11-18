package com.taiso.admin.member.action;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("*.mb")
public class AdminMemberController extends HttpServlet{
   
	
		protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			System.out.println(" NoticeController - doProcess() 호출");
		
		// 1.가상주소계산
		System.out.println(" C : (1단계 시작) 가상주소 계산 시작 ------------- ");
		String requestURI = request.getRequestURI();
		System.out.println(" C : requestURI : " + requestURI);
		
		String ctxPath = request.getContextPath();
		System.out.println(" C : ctxPath : " + ctxPath);
		
		String command = requestURI.substring(ctxPath.length());
		System.out.println(" C : command : " + command);
		
		System.out.println(" C : (1단계 끝) 가상주소 계산 완료 ------------- ");
		
		// 1.가상주소계산
		
		// 2.가상주소매핑
		System.out.println(" C : (2단계 시작) 가상주소 매핑 시작 ------------- ");
		
		Action action = null;
		ActionForward forward = null;
		
		if(command.equals("/AdminMemberList.mb")) {
			System.out.println(" C : /AdminMemberList.mb 호출");
			
			action = new AdminMemberListAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		else if(command.equals("/AdminMemberInfo.mb")) {
			System.out.println(" C : /AdminMemberInfo.mb 호출");
			
			action = new AdminMemberInfoAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		else if(command.equals("/AdminMain.mb")) {
			System.out.println(" C : /AdminMain.mb 호출 ");
			
			action = new AdminMainAction();
			
			try {
				forward =  action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		else if(command.equals("/AdminMemberDelete.mb")) {
			
			action = new AdminMemberDeleteAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
			
			
		
		
		
		
		System.out.println(" C : (2단계 끝) 가상주소 매핑 완료 ------------- ");
		// 2.가상주소매핑
		
		// 3.페이지 이동
		System.out.println(" C : (3단계 시작) 페이지 이동 시작 ------------- ");
		
		if(forward != null) { 
			if(forward.isRedirect()) { //true
				System.out.println(" C : 이동방식 : "+ forward.isRedirect()+",주소 : "+ forward.getPath());
				response.sendRedirect(forward.getPath());
				
			}else {// false
				System.out.println(" C : 이동방식 : "+ forward.isRedirect()+",주소 : "+ forward.getPath());
				
				RequestDispatcher dis = request.getRequestDispatcher(forward.getPath());
				dis.forward(request, response);				
			}
			
		}
		System.out.println(" C : (3단계 끝) 페이지 이동 완료 ------------- ");
		
		
	}
	
		@Override
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			System.out.println("NoticeController - doGet() 호출");
			doProcess(request, response);
		}
		
		@Override
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			System.out.println("NoticeController - doPost() 호출");
					doProcess(request, response);
				
				
		
			}
		
		}
