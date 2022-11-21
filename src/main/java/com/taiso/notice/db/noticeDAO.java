package com.taiso.notice.db;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class noticeDAO {

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
	
	
	// 글쓰기 메서드-insertBoard(DTO)
	public void insertBoard(BoardDTO boDTO) {
		int bo_num = 0;
		
		try {
			// 1.2. 디비연결
			con = getConnection();
			
			// 3. sql 작성 & pstmt 객체
			sql = "select max(bo_num) from member_board";
			pstmt = con.prepareStatement(sql);
			
			// 4. sql 실행
			rs = pstmt.executeQuery();
			
			// 5. 데이터 처리
			if(rs.next()) {
				bo_num = rs.getInt(1)+1;
			}
			
			System.out.println(" DAO : bo_num : " + bo_num);
			
			//3.sql
			sql = "insert into member_board(bo_num,mem_id,bo_cate,bo_title,bo_pass,bo_content,bo_file,bo_sysdate,"
					+ "bo_re_ref,bo_re_lev,bo_re_seq,bo_readcount) values(?,?,?,?,?,?,?,now(),?,?,?,?)";
			
			pstmt = con.prepareStatement(sql);
			
			// ???
			pstmt.setInt(1, bo_num);
			pstmt.setString(2, boDTO.getMem_id());
			pstmt.setString(3, boDTO.getBo_cate());
			pstmt.setString(4, boDTO.getBo_title());
			pstmt.setString(5, boDTO.getBo_pass());
			pstmt.setString(6, boDTO.getBo_content());
			pstmt.setString(7, boDTO.getBo_file());
			pstmt.setInt(8, bo_num); // ref == bo_num
			pstmt.setInt(9, 0);  // lev 0
			pstmt.setInt(10, 0);  // seq 0
			pstmt.setInt(11, 0); // 조회수 0 
			
			// 4. 
			pstmt.executeUpdate();
			
			System.out.println(" DAO : 글쓰기 완료! ");
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			closeDB();
		}
	}
	// 글쓰기 메서드-insertBoard(DTO)
	
	// 글 전체 개수 확인 - getNoticeCount()
	public int getNoticeCount() {
		int cnt = 0;
		
		try {
			// 1.2. 디비연결
			con = getConnection();
			
			// 3. sql 작성 & pstmt 객체 생성
			sql = "select count(*) from member_board where bo_cate = 0 order by bo_num desc";
			pstmt = con.prepareStatement(sql);
			
			// 4. sql 실행
			rs = pstmt.executeQuery();
			
			// 5. 데이터 처리
			if(rs.next()) {
				//cnt = rs.getInt(1);
				cnt = rs.getInt("count(*)");
			}
			
			System.out.println(" DAO : 전체 글 개수 : " + cnt + "개");
		
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
		return cnt;
	}
	// 글 전체 개수 확인 - getNoticeCount()
	
	// 글정보 가져오기 - getnoticeList(int startRow,int pageSize)
	public ArrayList getNoticeList(int startRow,int pageSize) {
		System.out.println(" DAO : getNoticeList() 호출 ");
		// 글정보 모두 저장하는 배열
		ArrayList noticeList = new ArrayList();
		
		try {
			// 1.2. 디비연결
			con = getConnection();
			
			// 3. sql 작성 & pstmt 객체 생성
			sql = "select * from member_board where bo_cate = 0 order by bo_num desc";
			pstmt = con.prepareStatement(sql);
			
			// 4. sql 실행
			rs = pstmt.executeQuery();
			// 5. 데이터 처리(DB->DTO->List)
			while(rs.next()) {
				
				// DB -> boDTO
				BoardDTO boDTO = new BoardDTO();
				boDTO.setBo_num(rs.getInt("bo_num"));
				boDTO.setBo_content(rs.getString("bo_content"));
				boDTO.setBo_file(rs.getString("bo_file"));
				boDTO.setBo_pass(rs.getString("bo_pass"));
				boDTO.setBo_re_lev(rs.getInt("bo_re_lev"));
				boDTO.setBo_re_ref(rs.getInt("bo_re_ref"));
				boDTO.setBo_re_seq(rs.getInt("bo_re_seq"));
				boDTO.setBo_readcount(rs.getInt("bo_readcount"));
				boDTO.setBo_title(rs.getString("bo_title"));
				boDTO.setBo_cate(rs.getString("bo_cate"));
				boDTO.setMem_id(rs.getString("mem_id"));
				boDTO.setBo_sysdate(rs.getDate("bo_sysdate"));
				
				// boDTO -> List
				noticeList.add(boDTO);
				
			}
			
			System.out.println(" DAO : 게시판 목록 저장완료! ");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
		
		return noticeList;
		}
		// 글정보 가져오기 - getNoticeList(int startRow,int pageSize)
	
		
		// 조회수 1증가 - updateReadcount(bo_num)
		public void updateReadcount(int bo_num) {
			
			try {
				// 1.2. 디비연결
				con = getConnection();
				
				// 3. sql 작성 & pstmt 객체 생성
				sql = "update member_board set bo_readcount = bo_readcount + 1 "
						+ " where bo_num=?";
				pstmt = con.prepareStatement(sql);
				
				//???
				pstmt.setInt(1, bo_num);
				
				// 4. sql 실행
				pstmt.executeUpdate();
				
				System.out.println(" DAO : 조회수 1증가 완료! ");
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				closeDB();
			}
			
		}
		
		// 조회수 1증가 - updateReadcount(bo_num)
		
		
		// 게시판 글 1개의 정보 조회 - getNoticeDetail(bo_num)
		public BoardDTO getNoticeDetail(int bo_num) {
			BoardDTO boDTO = null;
			
			try {
				// 1.2. 디비연결
				con =  getConnection();
				
				// 3. sql작성 & pstmt 객체 생성
				sql = "select * from member_board where bo_num=?";
				pstmt = con.prepareStatement(sql);
				
				//???
				pstmt.setInt(1, bo_num);
				
				// 4. sql 실행
				rs = pstmt.executeQuery();
				
				// 5. 데이터처리
				if(rs.next()) {
					
					// 데이터있을때만 boDTO객체 생성
					boDTO = new BoardDTO();
					
					boDTO.setBo_num(rs.getInt("bo_num"));
					boDTO.setBo_content(rs.getString("bo_content"));
					boDTO.setBo_file(rs.getString("bo_file"));
					boDTO.setBo_pass(rs.getString("bo_pass"));
					boDTO.setBo_re_lev(rs.getInt("bo_re_lev"));
					boDTO.setBo_re_ref(rs.getInt("bo_re_ref"));
					boDTO.setBo_re_seq(rs.getInt("bo_re_seq"));
					boDTO.setBo_readcount(rs.getInt("bo_readcount"));
					boDTO.setBo_title(rs.getString("bo_title"));
					boDTO.setBo_cate(rs.getString("bo_cate"));
					boDTO.setMem_id(rs.getString("mem_id"));
					boDTO.setBo_sysdate(rs.getDate("bo_sysdate"));
					
				}
				
				System.out.println(" DAO : 공지사항 상세조회 완료! ");
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				closeDB();
			}
			
			return boDTO;
		}
		// 게시판 글 1개의 정보 조회 - getNoticeDetail(bo_num)
		
		
		// 게시글 수정 - updateNotice
		public int updateNotice(BoardDTO boDTO) {
			int result = -1;
			
			try {
				// 1.2. 디비 연결
				con = getConnection();
				
				// 3. sql 작성(select) & pstmt 객체생성
				sql = "select bo_pass from member_board where bo_num=?";
				pstmt = con.prepareStatement(sql);
				
				//???
				pstmt.setInt(1, boDTO.getBo_num());
				
				// 4. sql 실행
				rs = pstmt.executeQuery();
				
				// 5. 데이터 처리
				if(rs.next()) {
					if(boDTO.getBo_pass().equals(rs.getString("bo_pass"))) {
						// 3. sql 작성(update) & pstmt 객체생성
						sql = "update member_board set bo_title=?,bo_content=? where bo_num=?";
						pstmt = con.prepareStatement(sql);
						
						//??? 
						pstmt.setString(1, boDTO.getBo_title());
						pstmt.setString(2, boDTO.getBo_content());
						pstmt.setInt(3, boDTO.getBo_num());
						
						// 4. sql 실행
						result = pstmt.executeUpdate();
						
					}else {
							// 비밀번호 오류
							result = 0;
						}				
				}else {
						// 게시판 글 없음
						result = -1;
				}
				
				System.out.println(" DAO : 게시판 정보 수정완료 ("+ result +")");
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				closeDB();
			}
			
			return result;
			
			}
		
		// 게시글 수정 - updateNotice
				
		
		// 게시판 글 삭제 - deleteNotice
		public int deleteNotice(int bo_num,String bo_pass) {
			int result = -1;
			
			try {
				// 1.2. 디비 연결
				con = getConnection();
				// 3. sql 작성(select) & pstmt 객체
				sql = "select bo_pass from member_board where bo_num=?";
				pstmt = con.prepareStatement(sql);
				// ???
				pstmt.setInt(1, bo_num);
				// 4. sql 실행
				rs = pstmt.executeQuery();
				// 5. 데이터 처리
				if(rs.next()) {
					if(bo_pass.equals(rs.getString("bo_pass"))) {
						// 3. sql 작성(delete) & pstmt 객체
						sql = "delete from member_board where bo_num=?";
						pstmt = con.prepareStatement(sql);
						
						pstmt.setInt(1, bo_num);
						// 4. sql 실행
						result = pstmt.executeUpdate();					
					}else {
						// 비밀번호 오류
						result = 0;
					}				
				}else {
					// 게시판글 없음
					result = -1;
				}
				
				System.out.println(" DAO : 게시판 정보 삭제완료 ("+result+")");
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				closeDB();
			}
			
			return result;
		}
		
		// 게시판 글 삭제 - noticeDelete
		


		
}
