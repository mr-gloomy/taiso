package com.taiso.admin.review.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class AdminReviewDAO {
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private String sql = "";
	
	// 디비 연결해주는 메서드(커넥션풀)
		  private Connection getConnection() throws Exception {
			  
			  // 1. 드라이버 로드  // 2. 디비 연결
			  
			  // Context 객체 생성 (JNDI API)-자바네이밍디렉토리인터페이스
			  Context initCTX = new InitialContext();
			  // 디비연동정보 불러오기 (context.xml 파일정보)
			  DataSource ds= (DataSource)initCTX.lookup("java:comp/env/jdbc/project_taiso");
			  
			  // 디비정보(연결) 불러오기
			  con = ds.getConnection();
			  
			  System.out.println(" DAO : 디비연결 성공(커넥션풀) ");
			  System.out.println(" DAO : con : " + con);
			  
			  return con;
		  }
		   
		   // 자원해제 메서드 - closeDB()
		   public void closeDB() {
			   System.out.println("DAO : 디비연결자원 해제");
			   
			   try {
				if(rs!= null) rs.close();
				if(pstmt!= null) pstmt.close();
				if(con!= null) con.close();
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
		   }
		   // 자원해제 메서드 - closeDB()
		   
		   // 글 전체 개수 확인 - getReviewCount()
		   public int getReviewCount() {
			   int cnt = 0;
			   try {
				con = getConnection();
				sql="select count(*) from car_review";
				pstmt = con.prepareStatement(sql);
				
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
					cnt = rs.getInt("count(*)");
				}
				System.out.println(" DAO : 전체 글 개수 : " + cnt + "개");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			   return cnt;
		   }
		   // 글 전체 개수 확인 - getReviewCount()
		   
		   // 글정보 가져오기 -getReviewList(int startRow, int pageSize)
		   public ArrayList getReviewList(int startRow, int pageSize) {
			   System.out.println(" DAO : getReviewList() 호출 ");
			   // 글정보 모두 저장하는 배열
			   ArrayList ReviewList = new ArrayList();
			   
			   try {
				con = getConnection();
				sql = "select * from car_review order by rev_num limit ?,?";
				pstmt = con.prepareStatement(sql);
				
				// ???
				pstmt.setInt(1, startRow-1); // 시작행 -1
				pstmt.setInt(2, pageSize); // 갯수
				
				rs = pstmt.executeQuery();
				// 데이터 처리 DB -> DTO -> List
				while(rs.next()) {
					// DB -> DTO
					ReviewDTO rDTO = new ReviewDTO();
					rDTO.setRev_content(rs.getString("rev_content"));
					rDTO.setRev_image(rs.getString("rev_image"));
					rDTO.setRev_num(rs.getInt("rev_num"));
					rDTO.setRev_subject(rs.getString("rev_subject"));
					rDTO.setRev_star(rs.getInt("rev_star"));
					rDTO.setRev_date(rs.getTimestamp("rev_date"));
					
					// DTO -> List
					ReviewList.add(rDTO);
				} // while
				
				System.out.println(" DAO : 게시판 목록 저장완료!");
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				closeDB();
			}
			   return ReviewList;
		   }
		   // 글정보 가져오기 -getReviewList(int startRow, int pageSize)
 
		   // 리뷰 글 1개의 정보 조회 - getReviewContent(rev_num)
		   public ReviewDTO getReviewContent(int rev_num) {
			   ReviewDTO adrDTO = null;
			   
			   try {
				con = getConnection();
				
				sql = "select * from car_review where rev_num=?";
				pstmt = con.prepareStatement(sql);
				
				pstmt.setInt(1, rev_num);
				
				rs=pstmt.executeQuery();
				
				if(rs.next()) {
					adrDTO = new ReviewDTO();
					
					adrDTO.setRev_num(rev_num);
					adrDTO.setRev_content(rs.getString("rev_content"));
					adrDTO.setRev_date(rs.getTimestamp("rev_date"));
					adrDTO.setRev_image(rs.getString("rev_image"));
					adrDTO.setRev_star(rs.getInt("rev_star"));
					adrDTO.setRev_subject(rs.getString("rev_subject"));
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				closeDB();
			}
			   return adrDTO;
		   }
		   // 리뷰 글 1개의 정보 조회 - getReviewContent(rev_num)
		
		   // 리뷰 글 삭제 - deleteReivew
			public void deleteReivew(int rev_num) {
				
				try {
					//1.2. 디비연결
					con = getConnection();
					
					// 3. sql실행 & pstmt 객체생성
					sql = "delete from car_review where rev_num=?";
					pstmt = con.prepareStatement(sql);
					
					//??/
					pstmt.setInt(1, rev_num);
					pstmt.executeUpdate();
					
					System.out.println(" DAO : 관리자 리뷰글 삭제 완료 ");
					
				} catch (Exception e) {
					e.printStackTrace();
				}finally {
					closeDB();
				}
				
			}		   
			   // 리뷰 글 삭제 - deleteReivew
		   
}
