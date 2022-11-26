package com.taiso.admin.member.db;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.taiso.notice.db.BoardDTO;


public class AdminMemberDAO {
	
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
	
	// 회원수 확인 - getMemberCount()
	public int getMemberCount() {
		int cnt = 0;
		
		try {
			// 1.2. 디비연결
			con = getConnection();
			
			// 3. sql 작성 & pstmt 객체 생성
			sql = "select count(*) from member";
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
	// 회원수 - getMemberCount()
	
	// 글정보 가져오기 - getMemberList(int startRow,int pageSize)
	public ArrayList getMemberList(int startRow,int pageSize) {
		System.out.println(" DAO : getMemberList() 호출 ");
		// 글정보 모두 저장하는 배열
		ArrayList MemberList = new ArrayList();
		
		try {
			// 1.2. 디비연결
			con = getConnection();
			
			// 3. sql 작성 & pstmt 객체 생성
			sql = "select * from member ";
			pstmt = con.prepareStatement(sql);
			
			// 4. sql 실행
			rs = pstmt.executeQuery();
			// 5. 데이터 처리(DB->DTO->List)
			while(rs.next()) {
				
				// DB -> mDTO
				MemberDTO mDTO = new MemberDTO();
				mDTO.setMem_num(rs.getInt("mem_num"));
				mDTO.setMem_id(rs.getString("mem_id"));
				mDTO.setMem_pw(rs.getString("mem_pw"));
				mDTO.setMem_name(rs.getString("mem_name"));
				mDTO.setMem_nickName(rs.getString("mem_nickName"));
				mDTO.setMem_phone(rs.getString("mem_phone"));
				mDTO.setMem_email(rs.getString("mem_email"));
				mDTO.setMem_accept_sns(rs.getInt("mem_accept_sns"));
				mDTO.setMem_registDate(rs.getTimestamp("mem_registDate"));
				mDTO.setLicense_num(rs.getString("license_num"));
				mDTO.setMem_birthday(rs.getString("mem_birthday"));
				mDTO.setMem_blacklist(rs.getString("mem_blacklist"));
				
				// mDTO -> List
				MemberList.add(mDTO);
				
			}
			
			System.out.println(" DAO : 게시판 목록 조회완료! ");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
		
		return MemberList;
		}
		// 글정보 가져오기 - getMemberList(int startRow,int pageSize)
	
	
		// 글정보 가져오기 - getMem_blackList(int startRow,int pageSize)
		public ArrayList getMem_blackList(int startRow,int pageSize) {
			System.out.println(" DAO : getMem_blackList() 호출 ");
			// 글정보 모두 저장하는 배열
			ArrayList blackList = new ArrayList();
			
			try {
				// 1.2. 디비연결
				con = getConnection();
				
				// 3. sql 작성 & pstmt 객체 생성
				sql = "select * from member where mem_blacklist = 'Y' ";
				pstmt = con.prepareStatement(sql);
				
				// 4. sql 실행
				rs = pstmt.executeQuery();
				// 5. 데이터 처리(DB->DTO->List)
				while(rs.next()) {
					
					// DB -> mDTO
					MemberDTO mDTO = new MemberDTO();
					mDTO.setMem_num(rs.getInt("mem_num"));
					mDTO.setMem_id(rs.getString("mem_id"));
					mDTO.setMem_pw(rs.getString("mem_pw"));
					mDTO.setMem_name(rs.getString("mem_name"));
					mDTO.setMem_nickName(rs.getString("mem_nickName"));
					mDTO.setMem_phone(rs.getString("mem_phone"));
					mDTO.setMem_email(rs.getString("mem_email"));
					mDTO.setMem_accept_sns(rs.getInt("mem_accept_sns"));
					mDTO.setMem_registDate(rs.getTimestamp("mem_registDate"));
					mDTO.setLicense_num(rs.getString("license_num"));
					mDTO.setMem_birthday(rs.getString("mem_birthday"));
					mDTO.setMem_blacklist(rs.getString("mem_blacklist"));
					
					// mDTO -> List
					blackList.add(mDTO);
					
				}
				
				System.out.println(" DAO : 게시판 목록 조회완료! ");
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				closeDB();
			}
			
			return blackList;
		}
		// 글정보 가져오기 - getMem_blackList(int startRow,int pageSize)
		
			
		// 게시판 글 1개의 정보 조회 - getMemberInfo(mem_num)
		public MemberDTO getMemberInfo(int mem_num){
			
			MemberDTO mDTO = null;
			
			try {
				con = getConnection();
				sql = "select * from member where mem_num=?";
				pstmt = con.prepareStatement(sql);
				
				pstmt.setInt(1, mem_num);
				
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
					mDTO = new MemberDTO();
					
					mDTO.setMem_num(rs.getInt("mem_num"));
					mDTO.setMem_id(rs.getString("mem_id"));
					mDTO.setMem_pw(rs.getString("mem_pw"));
					mDTO.setMem_name(rs.getString("mem_name"));
					mDTO.setMem_nickName(rs.getString("mem_nickName"));
					mDTO.setMem_phone(rs.getString("mem_phone"));
					mDTO.setMem_email(rs.getString("mem_email"));
					mDTO.setMem_accept_sns(rs.getInt("mem_accept_sns"));
					mDTO.setMem_registDate(rs.getTimestamp("mem_registDate"));
					mDTO.setLicense_num(rs.getString("license_num"));
					mDTO.setMem_birthday(rs.getString("mem_birthday"));
					mDTO.setMem_blacklist(rs.getString("mem_blacklist"));
					
				}
				System.out.println(" DAO : 회원 정보 조회완료! ");
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				closeDB();
			}
			
			return mDTO;
		}
		// 회원정보 조회 - getMemberInfo(mem_num)
		
		
		// 관리자 회원탈퇴 - adminMemberDelete(mem_id)
		public void adminMemberDelete(String mem_id) {
			
			try {
				
				// 1.2. 디비연결
				con = getConnection();
				
				// 3. sql 작성 & pstmt 객체 생성
				sql = "delete from member where mem_id=?";
				pstmt = con.prepareStatement(sql);
				
				// ???
				pstmt.setString(1, mem_id);
				
				// sql 실행
				pstmt.executeUpdate();
				
				System.out.println(" DAO : 관리자 회원 탈퇴! ");
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				closeDB();
			}
			
		}
		// 관리자 회원탈퇴 - adminMemberDelete(mem_id)
		
		// 블랙리스트 정보수정 - updateBlacklist
		public void updateBlacklist(MemberDTO mDTO) {
			
			try {
				con = getConnection();
				sql = "update member set mem_blacklist=? where mem_num=?";
				pstmt = con.prepareStatement(sql);
				
				pstmt.setString(1, mDTO.getMem_blacklist());
				pstmt.setInt(2, mDTO.getMem_num());
				
				pstmt.executeUpdate();
				
				System.out.println(" DAO : 관리자 블랙리스트 정보수정");
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				closeDB();
			}
			
		}	
		
		// 블랙리스트 정보수정 - updateBlacklist
						
		

		
}
