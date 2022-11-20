package com.taiso.payment.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Timestamp;



import com.taiso.reservation.db.ReservationDTO;


public class PaymentDAO {
	
	public Timestamp getTimestamp(String str){
		return Timestamp.valueOf(str);
		}

	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private String sql = "";
	
	// 디비를 연결해주는 메서드 (커넥션 풀)
	private Connection getConnection() throws Exception {
		
		// 1. 드라이버 로드 + 2. 디비 연결
		Context initCTX = new InitialContext();			
		// 디비 연동 정보를 불러오기 (context.xml 정보)
		DataSource ds = (DataSource)initCTX.lookup("java:comp/env/jdbc/project_taiso");		
	
		// 디비 정보(연결) 불러오기
		con = ds.getConnection();
		System.out.println("DAO : 디비연결 성공(커넥션 풀)");
		System.out.println("DAO : con : " + con);
		
		return con;
	}

			
			// 자원해제 메서드 - closeDB()
			public void closeDB() {
				System.out.println("DAO : 디비 연결자원 해제");
				
				try {
					if(rs != null) rs.close();  		// rs.close() :rs안에 정보가 있으면 연결을 끊어준다는 뜻
														// sql쿼리를 실행하면 rs가 not null
					if(pstmt != null) pstmt.close();
					if(con != null) con.close();
					
				} catch (SQLException e) {
					e.printStackTrace();
				}
				
			} // 자원해제 메서드 끝
			
			
			
			
			
			/**
			* 결제 1개 정보 조회 - getPayment(int rez_uqNum)
			* 
			* 회원이 선택한 예약의 결제 정보 조회
			* @author 소연
			* @param 결제DTO (PaymentDTO payDTO)
			*/ 
		
			public PaymentDTO getPayment(int rez_uqNum) {
				PaymentDTO payDTO = null;	
				try {
					con = getConnection();
					sql = "select * from rez_payment where rez_uqNum=?";
					pstmt = con.prepareStatement(sql);
					pstmt.setInt(1, rez_uqNum);
					rs = pstmt.executeQuery();
					
					if(rs.next()) {
						payDTO = new PaymentDTO();
						
						// 결제 정보
						payDTO.setRez_uqNum(rs.getInt("rez_uqNum"));
						payDTO.setPay_uqNum(rs.getString("pay_uqNum"));
						payDTO.setPay_method(rs.getString("pay_method"));
					
		//				payDTO.setPay_date(rs.getString("pay_date"));
						payDTO.setPay_status(rs.getString("pay_status"));
						payDTO.setPay_total(rs.getInt("pay_total"));
						
				
						
					}// if
					
					System.out.println(" DAO : 결제정보 가져오기 완료 ");
					
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					closeDB();
				}
				
				return payDTO;
			}
			// 결제 1개 정보 조회 - getPayment(int rez_uqNum)
			
			
			
			
			
//			/**
//			* 결제 목록 조회 - getPaymentList(String mem_id)
//			* 
//			* 회원의 이전,현재 예약 목록을 배열형태로 조회
//			* @author 소연
//			* @param 결제DTO (PaymentDTO payDTO)
//			*/ 
//		
//			public Vector getPaymentList(int rez_uqNum) {
//				Vector paymentList = new Vector();
//				
//				try {
//					con = getConnection();
//					// sql - 예약번호값에 해당하는 결제 정보 조회
//					sql = "select * from rez_payment where rez_uqNum=?";
//					pstmt = con.prepareStatement(sql);
//					pstmt.setInt(1, rez_uqNum);
//					rs = pstmt.executeQuery();
//					
//					while(rs.next()) {
//						// 결제 정보 저장
//						// DB -> DTO -> List
//						PaymentDTO payDTO = new PaymentDTO();
//						
//						
//						// 결제 정보
//						payDTO.setRez_uqNum(rs.getInt("rez_uqNum"));
//						payDTO.setPay_uqNum(rs.getInt("pay_uqNum"));
//						payDTO.setPay_method(rs.getString("pay_method"));
//					
//		//				payDTO.setPay_date(rs.getString("pay_date"));
//						payDTO.setPay_status(rs.getString("pay_status"));
//						payDTO.setPay_total(rs.getInt("pay_total"));
//						 
//						
//						
//						//DTO -> List
//						paymentList.add(payDTO);
//						System.out.println(" DAO : "+ paymentList); //*** 제대로 값이 들어갔는지 확인용. 나중에 삭제할 것
//							
//		
//					}//while
//					// PaymentList 저장
//					
//				
//					
//					System.out.println(" DAO : 결제정보리스트 저장완료 ");			
//					
//				} catch (Exception e) {
//					e.printStackTrace();
//				} finally {
//					closeDB();
//				}
//				
//				return paymentList;
//			} // 결제 목록 조회 - getPaymentList(String mem_id)
//			
			
			
			
			/**
			 * 결제정보 저장 - addOrder(paymentDTO)
			 * 
			 * 결제정보 저장
			 * 결제 고유번호, 예약 고유번호, 결제방법, 결제일시, 결제현황, 최종 결제 금액 저장
			 * 
			 */
			
			public void addOrder(PaymentDTO payDTO) {
				

				try {
					con = getConnection();
					sql = "insert into rez_payment (pay_total, pay_method, pay_status, rez_uqNum) values(?, ?, ?, ?, ?)";
					pstmt = con.prepareStatement(sql);
					pstmt.setInt(1, payDTO.getPay_total());
					pstmt.setString(2, payDTO.getPay_method());
					pstmt.setString(3, payDTO.getPay_status());
					pstmt.setString(4, payDTO.getPay_uqNum());
					pstmt.executeUpdate();
					
					System.out.println(" 결제정보 저장 완료");	//*** 제대로 값이 들어갔는지 확인용. 나중에 삭제할 것
							
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					closeDB();
				}
				
				
				
			}
			
			
			
			
			
			
	
	
	
	
	
}



