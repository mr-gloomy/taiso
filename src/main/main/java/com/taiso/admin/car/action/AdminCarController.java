package com.taiso.admin.car.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("*.ad")
public class AdminCarController extends HttpServlet{

	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(" C : doProcess 호출");
		// 1. 가상주소 계산
				String requestURI = request.getRequestURI();
				System.out.println(" C : requestURI : " + requestURI);
				String ctxPath = request.getContextPath();
				System.out.println(" C : ctxPath : " + ctxPath);
				String command = requestURI.substring(ctxPath.length());
				System.out.println(" C : command : " + command);
				
				System.out.println(" C : 1. 가상주소 계산 끝 \n");
				
				AdminCar action = null;
				AdminCarForward forward = null;
				
				// 2. 가상주소 매핑(패턴1,2,3)
				if(command.equals("/AdminCarAdd.ad")) {
					System.out.println(" C : /AdminCarAdd.ad 호출");
					System.out.println(" C : 패턴1");
					
					forward = new AdminCarForward();
					forward.setPath("./adminCar/insertCar.jsp");
					forward.setRedirect(false);
				}
				else if(command.equals("/AdminCarAddAction.ad")) {
					System.out.println(" C : /AdminCarAddAction.ad 호출");
					System.out.println(" C : 패턴2");
					// AdminGoodsAddAction() 객체 생성
					action = new AdminCarInsertAction();
					try {
						forward = action.execute(request, response);
					} catch (Exception e) {
						e.printStackTrace();
					}
					
				}else if(command.equals("/AdminCarList.ad")) {
					System.out.println(" C : /AdminCarList.ad 호출");
					System.out.println(" C : 패턴3");
					
					// AdminCarListAction() 객체 생성
					action = new AdminCarListAction();
					
					try {
						forward = action.execute(request, response);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}else if(command.equals("/AdminCarUpdate.ad")) {
					System.out.println(" C : /AdminCarUpdate.ad 호출");
					System.out.println(" C : 패턴3");
					
					// AdminCarUpdateAction() 객체 생성
					action = new AdminCarUpdateAction();
					
					try {
						forward = action.execute(request, response);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}else if(command.equals("/AdminCarUpdatePro.ad")) {
					System.out.println(" C : /AdminCarUpdatePro.ad 호출");
					System.out.println(" C : 패턴2");
					
					// AdminCarUpdateProAction() 객체 생성	
					action = new AdminCarUpdateProAction();
					try {
						forward = action.execute(request, response);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}else if(command.equals("/AdminCarDelete.ad")) {
					System.out.println(" C : /AdminCarDelete.ad 호출");
					System.out.println(" C : 패턴2");
					
					// AdminCarDeleteAction() 객체 생성
					action = new AdminCarDeleteAction();
					try {
						forward = action.execute(request, response);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
				
				
				
				System.out.println(" C : 2. 가상주소 매핑(패턴1,2,3) 끝 \n");

				// 3. 페이지 이동
				if(forward != null) {
					if(forward.isRedirect()) { // true
						System.out.println(" C : sendRedirect() : "+forward.getPath());
						response.sendRedirect(forward.getPath());
					}else { // false
						System.out.println(" C : forward() : " + forward.getPath());
						RequestDispatcher dis
							= request.getRequestDispatcher(forward.getPath());
						dis.forward(request, response);
					}

				
				}
				
				System.out.println(" C : 3. 페이지 이동 끝 \n");
	
		
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(" C : doGet() ");
		doProcess(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(" C : doPost() ");
		doProcess(request, response);
	}
	
}
