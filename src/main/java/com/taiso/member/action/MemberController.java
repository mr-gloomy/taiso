package com.taiso.member.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.me")
public class MemberController extends HttpServlet {
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(" Member - doProcess() ");
		
		
		System.out.println(" C : [1단계 시작] 가상주소 계산 시작 ----------------------------------------");
		String requestURI = request.getRequestURI();
		System.out.println(" C : requestURI : " +requestURI);
		
		String ctxPath = request.getContextPath();
		System.out.println(" C : ctxPath : " +ctxPath);
		
		String command = requestURI.substring(ctxPath.length());
		System.out.println(" C : command : " +command);
		
		System.out.println(" C : [1단계  끝] 가상주소 계산 완료 -----------------------------------------");

		
		
		Action action = null;
		ActionForward forward = null; 
		
		System.out.println(" C : [2단계 시작] 가상주소 매핑 시작 ----------------------------------------");
		
		if(command.equals("/MemberJoin.me")) {
			System.out.println(" C : /MemberJoin.me 호출 ");
			System.out.println(" C : [패턴 1] ");
			
			forward = new ActionForward();
			forward.setPath("./member/memberJoin.jsp");
			forward.setRedirect(false);
			
			
		}else if(command.equals("/MemberJoinAction.me")) {
			System.out.println(" C : /MemberJoinAction.me 호출 ");
			System.out.println(" C : [패턴 2]");
			
			// MemberJoinAction() 객체
			action = new MemberJoinAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			
		}else if(command.equals("/MemberIdCheck.me")) {
			System.out.println(" C : /MemberIdCheck.me 호출");
			System.out.println(" C : [패턴 1] ");
			
			forward = new ActionForward();
			forward.setPath("./member/memberIdCheck.jsp");
			forward.setRedirect(false);		
			
			
		}else if(command.equals("/MemberIdCheckAction.me")) {
			System.out.println(" C : /MemberIdCheckAction.me 호출 ");
			System.out.println(" C : [패턴 3]");
			
			// MemberIdCheckAction() 객체 생성
			action = new MemberIdCheckAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}		
			
			
		}else if(command.equals("/MemberNickNameCheck.me")) {
			System.out.println(" C : /MemberNickNameCheck.me 호출");
			System.out.println(" C : [패턴 1] ");
			
			forward = new ActionForward();
			forward.setPath("./member/memberNickNameCheck.jsp");
			forward.setRedirect(false);		
			
			
		}else if(command.equals("/MemberNickNameCheckAction.me")) {
			System.out.println(" C : /MemberNickNameCheckAction.me 호출 ");
			System.out.println(" C : [패턴 3]");
			
			// MemberNickNameCheckAction() 객체 생성
			action = new MemberNickNameCheckAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}			
			
			
		}else if(command.equals("/MemberLogin.me")) {
			System.out.println(" C : /MemberLogin.me 호출 ");
			System.out.println(" C : [패턴 1]");
			
			forward = new ActionForward();
			forward.setPath("./member/memberLogin.jsp");
			forward.setRedirect(false);	
			
			
		}else if(command.equals("/MemberLoginAction.me")) {
			System.out.println(" C : /MemberLoginAction.me 호출 ");
			System.out.println(" C : [패턴 2]");
			
			// MemberLoginAction() 객체 
			action = new MemberLoginAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			
		}else if(command.equals("/MemberUpdatePw.me")) {
			System.out.println(" C : /MemberUpdatePw.me 호출 ");
			System.out.println(" C : [패턴 1]");
			
			forward = new ActionForward();
			forward.setPath("./member/memberUpdatePw.jsp");
			forward.setRedirect(false);		
			
			
		}else if(command.equals("/MemberUpdatePwAction.me")) {
			System.out.println(" C : /MemberUpdatePwAction.me 호출 ");
			System.out.println(" C : [패턴 2]");
			
			// MemberJoinAction() 객체
			action = new MemberUpdatePwAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}	
			
			
		}else if(command.equals("/MemberUpdate.me")) {
			System.out.println(" C : /MemberUpdate.me 호출 ");
			System.out.println(" C : [패턴 3]");
			
			// MemberUpdate() 객체
			action = new MemberUpdate();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			
		}else if(command.equals("/MemberUpdateAction.me")) {
			System.out.println(" C : /MemberUpdateAction.me 호출 ");
			System.out.println(" C : [패턴 2]");
			
			// MemberUpdateAction() 객체 
			action = new MemberUpdateAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			
		}else if(command.equals("/MemberRemove.me")) {
			System.out.println(" C : /MemberRemove.me 호출 ");
			System.out.println(" C : [패턴 1] ");
			
			forward = new ActionForward();
			forward.setPath("./member/memberRemove.jsp");
			forward.setRedirect(false);
			
			
		}else if(command.equals("/MemberRemoveAction.me")) {
			System.out.println(" C : /MemberRemoveAction.me 호출 ");
			System.out.println(" C : [패턴 3] ");
			
			// MemberRemoveAction() 객체
			action = new MemberUpdate();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			
		}else if(command.equals("/MemberRemoveProAction.me")) {
			System.out.println(" C : /MemberRemoveProAction.me 호출 ");
			System.out.println(" C : [패턴 2] ");
			
			// MemberDeleteAction()
			action = new MemberRemoveProAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			
		}else if(command.equals("/MemberLogout.me")) {
			System.out.println(" C : /MemberLogout.me 호출 ");
			System.out.println(" C : [패턴 2] ");
			
			// MemberLogoutAction()
			action = new MemberLogoutAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			
		}else if(command.equals("/MemberFindId.me")) {
			System.out.println(" C : /MemberFindId.me 호출 ");
			System.out.println(" C : [패턴 1]");
			
			forward = new ActionForward();
			forward.setPath("./member/memberFindId.jsp");
			forward.setRedirect(false);
			
			
		}else if(command.equals("/MemberFindIdAction.me")) {
			System.out.println(" C : /MemberFindIdAction.me 호출");
			System.out.println(" C : [패턴 2]");
			
			// MemberFindIdAction.me()
			action = new MemberFindIdAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			
		}else if(command.equals("/MemberFindIdResult.me")) {
			System.out.println(" C : /MemberFindIdResult.me 호출 ");
			System.out.println(" C : [패턴 1]");
			
			forward = new ActionForward();
			forward.setPath("./member/memberFindIdResult.jsp");
			forward.setRedirect(false);
			
			
		}else if(command.equals("/MemberFindPw.me")) {
			System.out.println(" C : /MemberFindPw.me 호출 ");
			System.out.println(" C : [패턴 1]");
			
			forward = new ActionForward();
			forward.setPath("./member/memberFindPw.jsp");
			forward.setRedirect(false);
			
			
		}else if(command.equals("/MemberFindPwAction.me")) {
			System.out.println(" C : /MemberFindPwAction.me 호출");
			System.out.println(" C : [패턴 2]");
			
			// MemberFindPwAction.me()
			action = new MemberFindPwAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			
		}else if(command.equals("/MemberFindPwResult.me")) {
			System.out.println(" C : /MemberFindPwResult.me 호출 ");
			System.out.println(" C : [패턴 1]");
			
			forward = new ActionForward();
			forward.setPath("./member/memberFindPwResult.jsp");
			forward.setRedirect(false);
			
		}
		
		
		
		
		
		System.out.println(" C : [2단계  끝] 가상주소 매핑 완료 -----------------------------------------");
		
		
		
		
		System.out.println(" C : [3단계 시작] 페이지 이동 시작 ------------------------------------------");
		
		if(forward != null) { // 이동정보가 있을 때
			if(forward.isRedirect()) { // true
				System.out.println(" C : sendRedirect() : "+forward.getPath());
				response.sendRedirect(forward.getPath());
				
			}else { // false
				System.out.println(" C : forward() : " +forward.getPath());
				RequestDispatcher dis = request.getRequestDispatcher(forward.getPath());
				dis.forward(request, response);
			}
		}
		System.out.println(" C : [3단계  끝] 페이지 이동 완료 ------------------------------------------");
		
		
		
		
	}

	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("\n\n Member - doGet() 호출 ");
		doProcess(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("\n\n Member - doPost() 호출 ");
		doProcess(request, response);
	}

}
