package com.taiso.reservation.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("*.rez")
public class ReservationController extends HttpServlet{

	
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
				
				
				
				
				if(command.equals("/ReservationMain.rez")) {
					System.out.println(" C : [패턴1] : ReservationMain.rez 호출");
					
					forward = new ActionForward();
					forward.setPath("./views/reservation.jsp");
					forward.setRedirect(false);
					
				}
				
				
				
				/**
				 * ReservationDate
				 * 
				 */
				// 메인페이지 - 예약일시 정보 저장
				else if(command.equals("/ReservationDate.rez")) {
					System.out.println(" c : [패턴3] : ReservationDate.rez 호출");
					
					//ReservationDate 객체 생성
					action = new ReservationDate();
					try {
						forward = action.execute(request, response);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
				
				
				
				/**
				 * ReservationAction
				 * 
				 */
				// 예약페이지 이동 ( 액션에서 정보들 가져와서 reservationForm.jsp 출력하도록 만들기)
				// 예약일시정보 + 차량정보
				else if(command.equals("/ReservationAction.rez")) {
					System.out.println(" C : [패턴3] : ReservationAction.rez 호출 ");
					
					//ReservationAction 객체 생성
					action = new ReservationAction();
					try {
						forward = action.execute(request, response);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
				
				
				
				/**
				 * ReservationInfoCheck
				 * 
				 */
				// 예약 정보 확인 (ReservationInfoCheck.java)
				else if(command.equals("/ReservationInfoCheck.rez")) {
					System.out.println(" C : [패턴1] : ReservationInfoCheck.rez 호출");
					
					forward = new ActionForward();
					forward.setPath("./views/reservationInfoCheck.jsp");
					forward.setRedirect(false);
					
				}
				
				
				
				/**
				 * ReservationProAction
				 * 
				 */
				// 고객이 입력한 예약입력정보 저장하기
				else if(command.equals("/ReservationProAction.rez")) {
					System.out.println(" C : [패턴3] : ReservationProAction.rez 호출 ");
					
					//ReservationProAction 객체 생성
					action = new ReservationProAction();
					try {
						forward = action.execute(request, response);
					} catch (Exception e) {
						e.printStackTrace();
					}
					
				}
				
				
				
				/**
				 * ReservationListAction
				 * 
				 */
				// 예약 리스트 조회 (ReservationListAction.java)
				else if(command.equals("/ReservationListAction.rez")) {
					System.out.println(" C : [패턴3] : ReservationListAction.rez 호출");
					
					// ReservationListAction 객체 생성
					action = new ReservationListAction();
					try {
						forward = action.execute(request, response);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
				
				
				
				/**
				 * ReservationInfoAction
				 * 
				 */
				// 예약+결제 1개의 정보 조회 (ReservationInfoAction.java)
				else if(command.equals("/ReservationInfoAction.rez")) {
					System.out.println(" C : [패턴3] : ReservationInfoAction.rez 호출");
					
					// ReservationInfoAction 객체 생성
					action = new ReservationInfoAction();
					try {
						forward = action.execute(request, response);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
				
				
				
				/**
				 * ReservationCancel
				 * 
				 */
				// 예약 취소 (ReservationCancel.java)
				else if(command.equals("/ReservationCancel.rez")) {
					System.out.println(" C : [패턴1] : ReservationCancel.rez 호출");
					
					forward = new ActionForward();
					forward.setPath("./views/reservationCancel.jsp");
					forward.setRedirect(false);
				}
				
				
				
				/**
				 * ReservationCancelAction
				 * - 비밀번호 체크 후 예약상태 변경
				 */
				else if(command.equals("/ReservationCancelAction.rez")) {
					System.out.println(" C : [패턴3] : ReservationCancelAction.rez 호출");
					
					// ReservationCancelAction 객체 생성
					action = new ReservationInfoAction();
					try {
						forward = action.execute(request, response);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
				
				
	
				
			    /**
			     * AdminReservationListAction
			     * - 관리자 예약 조회
			     */
				else if(command.equals("/AdminReservationListAction.rez")) {
					System.out.println(" C : [패턴3] : AdminReservationListAction.rez 호출");
					
					// AdminReservationListAction 객체 생성
					action = new AdminReservationListAction();
					try {
						forward = action.execute(request, response);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
				
				
				/**
				 * AdminReservationDetailListAction
				 * - 관리자 예약번호에 해당하는 하나의 예약정보 조회
				 */
				else if(command.equals("/AdminReservationDetailListAction.rez")) {
					System.out.println(" C : [패턴3] : AdminReservationDetailListAction.rez 호출");
					
					// AdminReservationDetailListAction 객체 생성
					action = new AdminReservationDetailListAction();
					try {
						forward = action.execute(request, response);
					} catch (Exception e) {
						e.printStackTrace();
					}
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
				
				System.out.println(" C : 3. 페이지 이동 끝");
			    
	
				
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


