package com.taiso.review.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("*.rev")
public class ReviewController extends HttpServlet {

	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("Member - doProcess()");
		
		// 1. 가상주소 계산
		String requestURI = request.getRequestURI();
		System.out.println("C : requestURI : " + requestURI);
		
		String ctxPath = request.getContextPath();
		System.out.println("C : ctxPath : " + ctxPath);
		
		String command = requestURI.substring(ctxPath.length());
		System.out.println("C : command : " + command);
		
		System.out.println("C : 1. 가상주소 계산 끝 \n");
		
		Action action = null;
		ActionForward forward = null;
		
		// 2. 가상주소 매핑(패턴 1, 2, 3)
		if(command.equals("/ReviewList.rev")){
			System.out.println("C : /ReviewList.rev 호출");
			
			forward = new ActionForward();
			forward.setPath("./review/reviewList.jsp");
			forward.setRedirect(false);
		}
		else if(command.equals("/ReviewWrite.rev")) {
			System.out.println("C : /ReviewWrite.rev 호출");
			
			forward = new ActionForward();
			forward.setPath("./review/reviewWrite.jsp");
			forward.setRedirect(false);
		}
		else if(command.equals("/ReviewWriteAction.rev")) {
			System.out.println("C : /ReviewWriteAction.rev 호출");
			
			action = new ReviewWriteAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		else if(command.equals("/ReviewUpdateAction.rev")) {
			System.out.println("C : /ReviewUpdate.rev 호출");
			
			action = new ReviewUpdateAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		else if(command.equals("/ReviewUpdateProAction.rev")) {
			System.out.println("C : /ReviewUpdateAction.rev 호출");
			
			action = new ReviewUpdateProAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else if(command.equals("/ReviewDeleteAction.rev")) {
			System.out.println("C : /ReviewDeleteAction.rev 호출");
			
			action = new ReviewDeleteAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else if(command.equals("/ReviewListAction.rev")) {
			System.out.println("C : /ReviewList.rev 호출");
			
			action = new ReviewListAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else if(command.equals("/ReviewComment.rev")) {
			System.out.println("C : /reviewComment.rev 호출");
			
			forward = new ActionForward();
			forward.setPath("./review/reviewComment.jsp");
			forward.setRedirect(false);
		}
		else if(command.equals("/ReviewCommentAction.rev")){
			System.out.println("C : /ReviewCommentAcion.rev 호출");
			
			action = new ReviewCommentAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		System.out.println("C : 2. 가상주소 매핑 완료\n");
		
		// 3. 페이지 이동
		if(forward != null) {
			if(forward.isRedirect()) { // true 방식 (isredirect는 논리형 타입)
				System.out.println("C : sendReirect() : " + forward.getPath());
				response.sendRedirect(forward.getPath());
			} else { // false 방식
				System.out.println("C : forward() : " + forward.getPath());
				RequestDispatcher dis = request.getRequestDispatcher(forward.getPath());
				dis.forward(request, response);
			}
			System.out.println("C : 3. 페이지 이동 끝 \n");
		}
	}
	
	
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Review - doGet()");
		doProcess(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Review - doPost()");
		doProcess(request, response);
	}
	
	

}
