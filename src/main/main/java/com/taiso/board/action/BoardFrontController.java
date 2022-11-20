package com.taiso.board.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("*.bo")
public class BoardFrontController extends HttpServlet{

	
	protected void doProcess(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println(" BoardFrontController - doProcess() 호출");
		System.out.println(" GET / POST 방식 상관없이 한번에 처리 ");
		
		/////////////////////////1.가상주소계산////////////////////////////

		System.out.println(" C : (1단계 시작) 가상주소 계산 시작 ----------------------- ");
		String requestURI = request.getRequestURI();
		System.out.println(" C : requestURI : "+requestURI);
		
		String ctxPath = request.getContextPath();
		System.out.println(" C : ctxPath : "+ctxPath);
		
		String command = requestURI.substring(ctxPath.length());
		System.out.println(" C : command : "+command);
		
		System.out.println(" C : (1단계 끝) 가상주소 계산 완료 ----------------------- ");
		
		/////////////////////////1.가상주소계산////////////////////////////
		
		/////////////////////////2.가상주소매핑////////////////////////////
		System.out.println(" C : (2단계 시작) 가상주소 매핑 시작 ----------------------- ");
		
		Board action = null;
		BoardForward forward = null;
		
		if(command.equals("/Mypage.bo")) {
			System.out.println(" C : /Mypage.bo 호출 ");
			System.out.println(" C : [패턴1] ");
			
			// MypageAction() 객체
			action = new MypageAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		else if(command.equals("/FaqList.bo")) {
			System.out.println(" C : /FaqList.bo 호출 ");
			System.out.println(" C : [패턴1] ");
			
		forward = new BoardForward();
		forward.setPath("./board/faqList.jsp");
		forward.setRedirect(false);
		System.out.println("mypage.jsp 호출");
		}
		
		else if(command.equals("/QuestionWrite.bo")) {
			System.out.println(" C : /questionWrite.bo 호출 ");
			System.out.println(" C : [패턴1] ");
			
		forward = new BoardForward();
		forward.setPath("./board/questionWrite.jsp");
		forward.setRedirect(false);
		}
		else if(command.equals("/QuestionWriteAction.bo")) {
			System.out.println(" C : QuestionWriteAction.bo 호출 ");
			System.out.println(" C : [패턴2] ");
			
			// QuestionWriteAction() 객체
			action = new QuestionWriteAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		else if(command.equals("/QuestionList.bo")) {
			System.out.println(" C : /QuestionList.bo 호출 ");
			System.out.println(" C : [패턴3]");
		
			action = new QuestionListAction();
		
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
	}
		else if(command.equals("/QuestionDetail.bo")) {
				System.out.println(" C : /QuestionContent.bo 호출 ");
				System.out.println(" C : [패턴3]");
				
				// QuestionContentAction 객체 생성
				action = new QuestionDetailAction();
				
				try {
					forward = action.execute(request, response);
				} catch (Exception e) {
					e.printStackTrace();
				}
		} 
	
		else if(command.equals("/QuestionUpdate.bo")) {
			System.out.println(" C : /QuestionUpdate.bo 호출 ");
			System.out.println(" C : [패턴3] DB사용o, view출력");
			
			// QuestionUpdateAction 객체
			action = new QuestionUpdateAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		else if(command.equals("/QuestionUpdateProAction.bo")) {
			System.out.println(" C : /QuestionUpdateProAction.bo 호출 ");
			System.out.println(" C : [패턴2] DB사용 O, 페이지 이동(화면전환)");
			
			// QuestionUpdateProAction 객체 생성
			action = new QuestionUpdateProAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		else if(command.equals("/QuestionDelete.bo")) {
			System.out.println(" C : /BoardDelete.bo 호출 ");
			System.out.println(" C : [패턴1] DB사용 X, view페이지 이동");
			
			forward = new BoardForward();
			forward.setPath("./board/questionDelete.jsp");
			forward.setRedirect(false);		
		}
		
		else if(command.equals("/QuestionDeleteAction.bo")) {
			System.out.println(" C : /BoardDeleteAction.bo 호출 ");
			System.out.println(" C : [패턴2] DB사용 O, 페이지 이동(화면전환)");
			
			// BoardDeleteAction() 객체
			action = new QuestionDeleteAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		else if(command.equals("/AdminQuestionReWrite.bo")){
			System.out.println(" C : /AdminQuest ionReWrite.bo 호출 ");
			System.out.println(" C : [패턴1] DB사용 X, view페이지 이동");
			
			forward = new BoardForward();
			forward.setPath("./board/adminQuestionReWrite.jsp");
			forward.setRedirect(false);
		}
		
		else if(command.equals("/AdminQuestionReWriteAction.bo")) {
			System.out.println(" C : /adminQuestionReWriteAction.bo 호출");
			System.out.println(" C : [패턴2] DB사용 O, 페이지 이동(화면전환)");
		
			//adminQuestionReWriteAction() 객체 - execute()
		try {
			action = new adminQuestionReWriteAction();
			forward = action.execute(request, response);
			
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
	}
		
	
		System.out.println(" C : (2단계 끝) 가상주소 매핑 완료 ----------------------- ");
		/////////////////////////2.가상주소매핑////////////////////////////
		
		/////////////////////////3.페이지 이동////////////////////////////
		System.out.println(" C : (3단계 시작) 페이지 이동 시작 ----------------------- ");
		
		if(forward != null) { // 이동정보가 있을때(티켓이 있을때)
			
			if(forward.isRedirect()) { //true
				System.out.println(" C : 이동방식 : "+forward.isRedirect()+",주소 : "+forward.getPath());
				response.sendRedirect(forward.getPath());
				
			}else {// false
				System.out.println(" C : 이동방식 : "+forward.isRedirect()+",주소 : "+forward.getPath());
				
				RequestDispatcher dis 
				      = request.getRequestDispatcher(forward.getPath());
				dis.forward(request, response);				
			}
			
		}
		
		System.out.println(" C : (3단계 끝) 페이지 이동 완료 ----------------------- ");
		/////////////////////////3.페이지 이동////////////////////////////
		
		
	}// doProcess
	
	// http://localhost:8088/MVC/board  (web.xml 매핑)
	// http://localhost:8088/MVC/board2 (어노테이션)
	// alt shift s + v
	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println("\n\n BoardFrontController - doGet() 호출");
		doProcess(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println("\n\n BoardFrontController - doPost() 호출");
		doProcess(request, response);
	}
	
	

}
