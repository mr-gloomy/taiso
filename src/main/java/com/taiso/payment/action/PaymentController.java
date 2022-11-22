package com.taiso.payment.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.taiso.payment.action.Action;
import com.taiso.reservation.action.ReservationDate;
import com.taiso.payment.action.ActionForward;

@WebServlet("*.pay")
public class PaymentController extends HttpServlet {


	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. 가상주소 계산
		String requestURI = request.getRequestURI();
	    System.out.println(" C : requestURI : " + requestURI);
	    String ctxPath = request.getContextPath();
	    System.out.println(" C : ctxPath : " + ctxPath);
	    String command = requestURI.substring(ctxPath.length());
	    System.out.println(" C : command : " + command);
  

		System.out.println(" C : 1. 가상주소 계산 끝 \n");
	    
	    
	    
	    // 2. 가상주소 매핑(패턴1,2,3)
		
		Action action = null;
		ActionForward forward = null;
		
		if (command.equals("/PaymentIamport.pay")){
			System.out.println(" c : [패턴3] : PaymentAction.pay 호출");
			
			System.out.println("PaymentIamport.pay 호출");
			forward = new ActionForward();
			forward.setPath("./views/payment.jsp");
			forward.setRedirect(false);
		}
		
		else if(command.equals("/PaymentAction.pay")) {
			System.out.println("PaymentAction.pay 호출");
			
			action = new PaymentAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		
		else if(command.equals("/PaymentTest.pay")){
			
			System.out.println("PaymentTest.pay 호출");
			
			forward = new ActionForward();
			forward.setPath("./views/paymentTest.jsp");
			forward.setRedirect(false);
		}
	    
	    
	    System.out.println(" C : 2. 가상주소 매핑 끝");
	      
	    // 3. 페이지 이동
	    
		if (forward != null) {
			if (forward.isRedirect()) { // true -> send redirect
				System.out.println(" C : sendRedirect() : " + forward.getPath());
				response.sendRedirect(forward.getPath());
			} else { // false -> forward

				System.out.println(" C : forward() : " + forward.getPath());
				RequestDispatcher dis = request.getRequestDispatcher(forward.getPath());
				dis.forward(request, response); 
			}
		}
		
		System.out.println(" C : 3. 페이지 이동 끝\n\n");
	    
	}
	
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doProcess(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doProcess(request, response);
	}

		

	}


