package com.taiso.board.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDAO {

	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private String sql = "";
	
	// 디비 연결해주는 메서드(커넥션풀)
	// 디비 연결해주는 메서드(커넥션풀)
	private Connection getConnection() throws Exception {
		
		// 1. 드라이버 로드 // 2. 디비연결
		
		// 디비 연결해주는 메서드 private Connection getConnection() throws Exception { //
//		 디비연결정보 (상수) 
//		 final String DRIVER = "com.mysql.cj.jdbc.Driver";
//		 final String DBURL = "jdbc:mysql://db.itwillbs.dev:3306/class7_220721_team1"; 
//		 final String DBID = "class7_220721_team1";
//		 final String DBPW = "1234";
//		
//		 // 1. 드라이버 로드 Class.forName(DRIVER); 
//		 // 2. 디비 연결 con =
//		 DriverManager.getConnection(DBURL, DBID, DBPW);
//		 System.out.println(" DAO : 디비연결 성공 "); 
//		 System.out.println(" DAO : " + con);
//		 
//		 return con; 
//		 
		
		
		// Context 객체 생성(JNCI API) 
		// 둘 관계는 업캐스팅 관계이다(형식이 다른데 형변환 하라고 안 뜨니까)
		Context initCTX = new InitialContext();
		
		// 디비연동정보 불러오기 
		DataSource ds = (DataSource)initCTX.lookup("java:comp/env/jdbc/project_taiso");
		
		// 디비정보(연결) 불러오기 
		con = ds.getConnection();
		
		System.out.println("DAO : 디비연결 성공(커넥션풀)");
		System.out.println("DAO : con: "+con);
		
		return con;
	}

	// 자원해제 메서드-closeDB()
	public void closeDB() {
		System.out.println("DAO : 디비연결자원 해제");

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
	
	// 글쓰기 메서드-insertQuestion(bodto)
	public void insertQuestion(BoardDTO bodto) {
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
			
			System.out.println(" DAO : bo_num : "+bo_num);
			//3.
			sql = "insert into member_board(bo_num,mem_id,bo_cate,bo_title,bo_pass,bo_content,"
					+ "bo_file,bo_sysdate,bo_re_ref,bo_re_lev,bo_re_seq) "
					+ "values(?,?,?,?,?,?,?,now(),?,?,?)";
			
			pstmt = con.prepareStatement(sql);
			
			// ???
			pstmt.setInt(1, bo_num);
			pstmt.setString(2, bodto.getMem_id());
			pstmt.setString(3, bodto.getBo_cate());
			pstmt.setString(4, bodto.getBo_title());
			pstmt.setString(5, bodto.getBo_pass()); 
			pstmt.setString(6, bodto.getBo_content());
			pstmt.setString(7, bodto.getBo_file());
			pstmt.setInt(8, bo_num); // ref == bno
			pstmt.setInt(9, 0);  // lev 0
			pstmt.setInt(10, 0);  // seq 0
			
			// 4. 
			pstmt.executeUpdate();
			
			System.out.println(" DAO : 글쓰기 완료! ");
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			closeDB();
		}
	}
	// 글쓰기 메서드-insertQuestion(bodto)
	
	// 글 전체 개수 확인 - getQuestionCount()
	public int getQuestionCount() {
		int cnt = 0;
		
		try {
			//1.2. 디비연결
			con = getConnection();
			// 3. sql
			sql = "select count(*) from member_board where bo_cate > 0";
			pstmt = con.prepareStatement(sql);
			
			// 4. sql 실행
			rs = pstmt.executeQuery();
			// 5. 데이터 처리
			if(rs.next()) {
				//cnt = rs.getInt(1);
				cnt = rs.getInt("count(*)");
			}
			System.out.println(" DAO : 전체 글 개수 : "+cnt+"개");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
		return cnt;
	}
	// 글 전체 개수 확인 - getQuestionCount()
	
	/** 
	 * 페이징 처리 때문에
	// 글정보 가져오기 - getQuestionList()
		public ArrayList getQuestionList() {
			System.out.println(" DAO : getQuestionList() 호출 ");
			// 글정보 모두 저장하는 배열
			ArrayList QuestionList = new ArrayList();
			
			try {
				// 1.2. 디비연결
				con = getConnection();
				// 3. sql 작성(select) & pstmt 객체
				sql = "select * from member_board where bo_cate > 0 order by bo_num desc, bo_re_seq asc";
				pstmt = con.prepareStatement(sql);
				// 4. sql 실행
				rs = pstmt.executeQuery();
				// 5. 데이터 처리(DB->DTO->List)
				while(rs.next()) {
				
					// DB -> DTO
					BoardDTO bodto = new BoardDTO();
					bodto.setBo_num(rs.getInt("bo_num"));
					bodto.setMem_id(rs.getString("mem_id"));
					bodto.setBo_cate(rs.getString("bo_cate"));
					bodto.setBo_title(rs.getString("bo_title"));
					bodto.setBo_pass(rs.getString("bo_pass"));
					bodto.setBo_content(rs.getString("bo_content"));
					bodto.setBo_file(rs.getString("bo_file"));
					bodto.setBo_sysdate(rs.getDate("bo_sysdate"));
					bodto.setBo_re_ref(rs.getInt("bo_re_ref"));
					bodto.setBo_re_seq(rs.getInt("bo_re_seq"));
					bodto.setBo_re_lev(rs.getInt("bo_re_lev"));
//					bodto.setBo_readcount(rs.getInt("bo_readcount"));
					
					// DTO -> List
					QuestionList.add(bodto);
					
				}//while
				
				System.out.println(" DAO : 게시판 목록 저장완료! ");
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				closeDB();
			}
			
			return QuestionList;
		}
		// 글정보 가져오기 - getQuestionList()
	
		*/
		
		// 글정보 가져오기 - getBoardList(int startRow, int pageSize)
			public ArrayList getQuestionList(int startRow, int pageSize) {
			
				ArrayList QuestionList = new ArrayList();
				
				try {
					con = getConnection();
					
					sql = "select * from member_board "
							+ "order by bo_re_ref desc, bo_re_seq asc limit ?,?";
					pstmt = con.prepareStatement(sql);
					
					// ???
					pstmt.setInt(1, startRow-1);	// 시작행-1
					pstmt.setInt(2, pageSize); 		// 개수 		
					
					rs = pstmt.executeQuery();
					
					while(rs.next()) {
						// DB -> DTO
						// DB -> DTO
						BoardDTO bodto = new BoardDTO();
						bodto.setBo_num(rs.getInt("bo_num"));
						bodto.setMem_id(rs.getString("mem_id"));
						bodto.setBo_cate(rs.getString("bo_cate"));
						bodto.setBo_title(rs.getString("bo_title"));
						bodto.setBo_pass(rs.getString("bo_pass"));
						bodto.setBo_content(rs.getString("bo_content"));
						bodto.setBo_file(rs.getString("bo_file"));
						bodto.setBo_sysdate(rs.getDate("bo_sysdate"));
						bodto.setBo_re_ref(rs.getInt("bo_re_ref"));
						bodto.setBo_re_seq(rs.getInt("bo_re_seq"));
						bodto.setBo_re_lev(rs.getInt("bo_re_lev"));
//						bodto.setBo_readcount(rs.getInt("bo_readcount"));
						
						// DTO -> List
						QuestionList.add(bodto);
						
					}
					System.out.println(" DAO : 게시판 목록 저장완료! ");
					
				} catch (Exception e) {
					e.printStackTrace();
				}finally {
					closeDB();
				}
				
				return QuestionList;
			}
	
		// 게시글 1개 내용 출력 - getQuestionContent(bo_num)
		public BoardDTO getQuestionContent(int bo_num) {
			BoardDTO bodto = null;
			
			// 1.2. 
			try {
				con = getConnection();
				//3. sql&pstmt 객체 
				sql = "select * from member_board where bo_num=?";
				pstmt = con.prepareStatement(sql);
				
				//4. ??? 
				pstmt.setInt(1, bo_num);
				
				// 5. rs
				rs = pstmt.executeQuery();
				
				if(rs.next()) { 
					//데이터 있을 때만 bodto 객체 생성
					bodto = new BoardDTO();
					
				 // DB->DAO 
					bodto.setBo_num(rs.getInt("bo_num"));
					bodto.setBo_cate(rs.getString("bo_cate"));
					bodto.setMem_id(rs.getString("mem_id"));
					bodto.setBo_title(rs.getString("bo_title"));
					bodto.setBo_pass(rs.getString("bo_pass"));
					bodto.setBo_content(rs.getString("bo_content"));
					bodto.setBo_file(rs.getString("bo_file"));
					bodto.setBo_re_ref(rs.getInt("bo_re_ref"));
					bodto.setBo_re_lev(rs.getInt("bo_re_lev"));
					bodto.setBo_re_seq(rs.getInt("bo_re_seq"));
					bodto.setBo_sysdate(rs.getDate("bo_sysdate"));
				}

				System.out.println(" DAO : 글 정보 1개 저장완료! ");
					
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				closeDB();
			}
			
			return bodto;
		}
		
		
		// 게시글 1개 내용 출력 - getQuestionContent(bo_num)
		
		// 게시글 수정 - UpdateQuestion(bodto)
		public int UpdateQuestion(BoardDTO bodto) {
			int result = -1;
			
			try {
				// 1.2. 디비 연결
				con = getConnection();
				// 3. sql 작성(select) & pstmt 객체
				sql = "select bo_pass from member_board where bo_num=?";
				pstmt = con.prepareStatement(sql);
				// ???
				pstmt.setInt(1, bodto.getBo_num());
				// 4. sql 실행
				rs = pstmt.executeQuery();
				// 5. 데이터 처리
				// <히든> 글번호, 작성자, 답글 3세트 
				// <폼데이터> 카테고리, 제목, 글내용, 파일, 비번
				if(rs.next()) {
					if(bodto.getBo_pass().equals(rs.getString("bo_pass"))) {
						// 3. sql 작성(update) & pstmt 객체
						sql = "update member_board set bo_cate=?,bo_title=?,bo_content=?, bo_file=?, bo_pass=? where bo_num=?";
						pstmt = con.prepareStatement(sql);
						  
						//??? 
						pstmt.setString(1, bodto.getBo_cate());
						pstmt.setString(2, bodto.getBo_title());
						pstmt.setString(3, bodto.getBo_content());
						pstmt.setString(4, bodto.getBo_file());
						pstmt.setString(5, bodto.getBo_pass());
						pstmt.setInt(6, bodto.getBo_num());
						
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
				
				System.out.println(" DAO : 게시판 정보 수정완료 ("+result+")");
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				closeDB();
			}
			
			return result;
		}
		// 게시글 수정 - UpdateQuestion(bodto)
		
		// 게시판 글 삭제 - DeleteQuestion(bo_num,bo_pass)
		public int DeleteQuestion(int bo_num,String bo_pass) {
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
		// 게시판 글 삭제 - DeleteQuestion(bo_num,bo_pass)
		
		//게시판 답글 쓰기 - reInsertQuestion(bodto)
		public void reInsertQuestion(BoardDTO bodto) {
			int bo_num = 0;
			try {
				con = getConnection();
				
			// 3. sql + pstmt 객체 생성
			sql = "select max(bo_num) from member_board";	
			pstmt = con.prepareStatement(sql);
			// 4. sql 실행
			rs = pstmt.executeQuery();
			// 5. rs 
			if(rs.next()) {
				bo_num = rs.getInt(1)+1;
			}
			
			/////////////////////////////////////////////
			// [답글 순서 재배치]
			
			// 3. sql+pstmt
			sql = "update member_board set bo_re_seq = bo_re_seq+1 "
					+ "where bo_re_ref=? and bo_re_seq>?";
			pstmt = con.prepareStatement(sql);
			
			// ???
			pstmt.setInt(1, bodto.getBo_re_ref());
			pstmt.setInt(2, bodto.getBo_re_seq());
			
			// 4. sql 실행
			int cnt = pstmt.executeUpdate();
			if(cnt > 0) {
				System.out.println(" DAO : 답글 재정렬 완료! ");
			}
			
			
			//////////////////////////////////////////////
			// [답글 쓰기]
		
				//3. sql + pstmt
				sql = "insert into member_board(bo_num,mem_id,bo_cate,bo_title,bo_pass,bo_content,"
						+ "bo_file,bo_sysdate,bo_re_ref,bo_re_lev,bo_re_seq) "
						+ "values(?,?,?,?,?,?,?,now(),?,?,?)";
				
				pstmt = con.prepareStatement(sql);
				
				// ???
				pstmt.setInt(1, bo_num);
				pstmt.setString(2, bodto.getMem_id());
				pstmt.setString(3, bodto.getBo_cate());
				pstmt.setString(4, bodto.getBo_title());
				pstmt.setString(5, bodto.getBo_pass()); 
				pstmt.setString(6, bodto.getBo_content());
				pstmt.setString(7, bodto.getBo_file());
				pstmt.setInt(8, bodto.getBo_re_ref()); 
				pstmt.setInt(9, bodto.getBo_re_lev()+1); 
				pstmt.setInt(10, bodto.getBo_re_seq()+1); 
				
				// 4. rs
				pstmt.executeUpdate();
				
				System.out.println(" DAO : 답글 쓰기 완료! ");
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				closeDB();
			}
		}
		//게시판 답글 쓰기 - reInsertQuestion(bodto)
		
}

