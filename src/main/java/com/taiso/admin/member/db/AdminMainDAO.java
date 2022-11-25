package com.taiso.admin.member.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.taiso.board.db.BoardDTO;
import com.taiso.reservation.db.PaymentDTO;
import com.taiso.reservation.db.ReservationDTO;
import com.taiso.review.db.ReviewDTO;

public class AdminMainDAO {
	
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private String sql = "";

	
	// 디비 연결해주는 메서드(커넥션풀)
	private Connection getConnection() throws Exception {
		// 1. 드라이버 로드	// 2. 디비연결
		
		// Context 객체 생성 (JNDI API)
		Context initCTX = new InitialContext();
		// 디비연동정보 불러오기 (context.xml 파일정보)
		DataSource ds 
		      = (DataSource)initCTX.lookup("java:comp/env/jdbc/project_taiso");
		// 디비정보(연결)  불러오기
		con = ds.getConnection();
		
		System.out.println(" DAO : 디비연결 성공(커넥션풀) ");
		System.out.println(" DAO : con : " + con);
		
		return con;
	}
	

	// 자원해제 메서드-closeDB()
	public void closeDB() {
		System.out.println(" DAO : 디비연결자원 해제 ");

		try {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	// 자원해제 메서드-closeDB()
	
	// 글 정보 가져오기 - getAdminList()
	public ArrayList getAdminList(int startRow,int pageSize) {
		System.out.println(" DAO : getAdminList() 호출 ");
		
		// 글정보 모두 저장하는 배열
		
		ArrayList adminMainList = new ArrayList(); //total정보
		
        ArrayList adminMemList = new ArrayList();
        ArrayList adminBoList = new ArrayList(); 
        ArrayList adminRvList = new ArrayList(); 
        ArrayList adminReList = new ArrayList(); 
        ArrayList adminPayList = new ArrayList(); 
		
		try {
			// 1.2. 디비연결
			con = getConnection();
			
			// 3. sql 작성 & pstmt 객체 생성
			sql ="SELECT DATE_FORMAT('mem_registdate`, '%Y%m%d') AS date, count(*) AS cnt"
					+ "FROM member mem_registdate"
					+ "JOIN member_board mb ON mb.bo_cate, bo_sysdate"
					+ "JOIN car_review re ON re.rev_date"
					+ "JOIN rez_cancellation c ON c.cancel_date"
					+ "JOIN rez_payment pay ON pay.pay_date"
					+ "JOIN rez_reservation re ON re.rez_rentalDate";

					
			
			pstmt = con.prepareStatement(sql);
			
			// 4. sql 실행
			rs = pstmt.executeQuery();
			
			// 5. 데이터 처리(DB->DTO->List)
			while(rs.next()) {
				
				// DTO 정보
				MemberDTO mDTO = new MemberDTO();
				BoardDTO bDTO = new BoardDTO();
				ReviewDTO rvDTO = new ReviewDTO();
				ReservationDTO reDTO = new ReservationDTO();
				PaymentDTO pDTO = new PaymentDTO();
				
				// DB -> DTO
				mDTO.setMem_registDate(rs.getTimestamp("mem_registDate"));
				bDTO.setBo_cate(rs.getString("bo_cate"));
				bDTO.setBo_sysdate(rs.getDate("bo_sysdate"));
				rvDTO.setRev_date(rs.getTimestamp("rev_date"));
				reDTO.setCancel_date(rs.getTimestamp("cancel_date"));
				pDTO.setPay_date(rs.getTimestamp("pay_date"));
				pDTO.setPay_total(rs.getInt("pay_total"));
				
				
				// DTO -> List
				adminMemList.add(mDTO);
				adminBoList.add(bDTO);
				adminRvList.add(rvDTO);
				adminReList.add(reDTO);
				adminPayList.add(pDTO);
				
				
				// List -> main
				adminMainList.add(adminMemList);
				adminMainList.add(adminBoList);
				adminMainList.add(adminRvList);
				adminMainList.add(adminReList);
				adminMainList.add(adminPayList);
				
				
			}
			
			System.out.println(" DAO : adminMainList " + adminMainList);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
		
		return adminMainList;
				
				
	}
	
	// 글정보 가져오기 - getAdminList()
 
	
}
