package com.taiso.member.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {
	
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private String sql = "";

	// 디비 연결해주는 메서드(커넥션 풀)
	private Connection getConnection() throws Exception {

		// 1. 드라이버 로드 & 2. 디비 연결

		// Context 객체 생성 (JNDI API)
		Context intiCTX = new InitialContext();

		// 디비 연동 정보 불러오기 (context.xml 파일 정보)
		DataSource ds = (DataSource) intiCTX.lookup("java:comp/env/jdbc/project_taiso");

		// 디비 정보(연결) 불러오기
		con = ds.getConnection();

		System.out.println(" DAO : 디비 연결 성공(커넥션 풀) ");
		System.out.println(" DAO : con : " +con);

		return con;
	}
	// 디비 연결해주는 메서드(커넥션 풀) - 끝
	
	
	
	// 자원해제 메서드 - closeDB()
	public void closeDB() {
		System.out.println(" DAO : 디비 연결자원 해제 ");

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
	// 자원해제 메서드 - closeDB() - 끝
	
	
	
	// 회원가입 메서드 - memberJoin(DTO)
	public void memberJoin(MemberDTO mDTO) {
		int mem_num = 0;
		
		try {
			// 1.2. 
			con = getConnection();
			
			// 3. 
			sql = "select max(mem_num) from member";
			pstmt = con.prepareStatement(sql);
			
			// 4. 
			rs = pstmt.executeQuery();
			
			// 5. 
			if(rs.next()) {
				mem_num = rs.getInt(1)+1;
			}
			
			System.out.println(" DAO : mem_num : " +mem_num);
			
			// 3. 
			sql = "insert into member(mem_num,mem_id,mem_pw,mem_name,mem_nickName,mem_phone,mem_birthday,mem_email,mem_accept_sns,mem_registDate,mem_blacklist) values(?,?,?,?,?,?,?,?,?,now(),?)";
			pstmt = con.prepareStatement(sql);
			
			// ??
			pstmt.setInt(1, mem_num);
			pstmt.setString(2, mDTO.getMem_id());
			pstmt.setString(3, mDTO.getMem_pw());
			pstmt.setString(4, mDTO.getMem_name());
			pstmt.setString(5, mDTO.getMem_nickName());
			pstmt.setString(6, mDTO.getMem_phone());
			pstmt.setString(7, mDTO.getMem_birthday());
			pstmt.setString(8, mDTO.getMem_email());
			pstmt.setInt(9, mDTO.getMem_accept_sns());
			pstmt.setString(10, mDTO.getMem_blacklist());
			
			// 4. 
			pstmt.executeUpdate();
			
			
			System.out.println(" DAO : 회원가입 성공! ");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
	}
	// 회원가입 메서드 - memberJoin(DTO) - 끝
	
	
	
	// 네이버 회원가입 메서드 - memberNaverJoin(DTO)
	public void memberNaverJoin(MemberDTO mDTO) {
		int mem_num = 0;
		
		try {
			// 1.2. 
			con = getConnection();
			
			// 3. 
			sql = "select max(mem_num) from member";
			pstmt = con.prepareStatement(sql);
			
			// 4. 
			rs = pstmt.executeQuery();
			
			// 5. 
			if(rs.next()) {
				mem_num = rs.getInt(1)+1;
			}
			
			System.out.println(" DAO : mem_num : " +mem_num);
				

				// 3. 
				sql = "insert into member(mem_num,mem_id,mem_pw,mem_name,mem_nickName,mem_phone,mem_birthday,mem_email,mem_accept_sns,mem_registDate,mem_blacklist) values(?,?,?,?,?,?,?,?,?,now(),?)";
				pstmt = con.prepareStatement(sql);
				
				// ??
				pstmt.setInt(1, mem_num);
				pstmt.setString(2, mDTO.getMem_id());
				pstmt.setString(3, mDTO.getMem_pw());
				pstmt.setString(4, mDTO.getMem_name());
				pstmt.setString(5, mDTO.getMem_nickName());
				pstmt.setString(6, mDTO.getMem_phone());
				pstmt.setString(7, mDTO.getMem_birthday());
				pstmt.setString(8, mDTO.getMem_email());
				pstmt.setInt(9, 0);
				pstmt.setString(10, mDTO.getMem_blacklist());
				
				// 4. 
				pstmt.executeUpdate();
				
				
				System.out.println(" DAO : 네이버 회원가입 성공! ");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
	}
	// 네이버 회원가입 메서드 - memberNaverJoin(DTO) - 끝
	
	
	
	// 아이디 중복체크 메서드 - memberIdCheck(mem_id)
	public int memberIdCheck(String mem_id) {
		int result = 0; // 0 - 중복 X(아이디 사용 O) / 1 - 중복 O(아이디 사용 X)
		
		try {
			// 1.2. 
			con = getConnection();
			
			// 3. 
			sql = "select mem_pw from member where mem_id=?";
			pstmt = con.prepareStatement(sql);
			
			// ??
			pstmt.setString(1, mem_id);
			
			// 4. 
			rs = pstmt.executeQuery();
			
			// 5. 
			if(rs.next()) {
				
				// 회원정보가 있다(= 중복)
				result = 1;
				System.out.println(" DAO : 아이디 중복 O ("+result+")");
			}
			
			// result == 0 (= 중복 X)
			System.out.println(" DAO : 아이디 중복 X ("+result+")");			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
		
		return result;
	}
	// 아이디 중복체크 메서드 - memberIdCheck(mem_id) 끝
	
	
	
	// 닉네임 중복체크 메서드 - memberNNameCheck(mem_nickName)
	public int memberNNameCheck(String mem_nickName) {
		int result = 0; // 0 - 중복 X(닉네임 사용 O) / 1 - 중복 O(닉네임 사용 X)
		
		try {
			// 1.2.
			con = getConnection();
			
			// 3. 
			sql = "select mem_pw from member where mem_nickName=?";
			pstmt = con.prepareStatement(sql);
			
			// ??
			pstmt.setString(1, mem_nickName);
			
			// 4.
			rs = pstmt.executeQuery();
			
			// 5.
			if(rs.next()) {
				
				// 회원정보가 있다(= 중복)
				result = 1;
				System.out.println(" DAO : 닉네임 중복 O ("+result+")");
			}
			
			// result == 0 (= 중복 X)
			System.out.println(" DAO : 닉네임 중복 X ("+result+")");			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
		
		return result;
	}
	// 닉네임 중복체크 메서드 - memberNNameCheck(mem_nickName)
	
	
	
	
	// 닉네임 중복체크 메서드 - memberNNameCheck(mem_newNickName)
	public int memberNewNNameCheck(String mem_newNickName) {
		int result = 0; // 0 - 중복 X(닉네임 사용 O) / 1 - 중복 O(닉네임 사용 X)
		
		try {
			// 1.2.
			con = getConnection();
			
			// 3. 
			sql = "select mem_pw from member where mem_newNickName=?";
			pstmt = con.prepareStatement(sql);
			
			// ??
			pstmt.setString(1, mem_newNickName);
			
			// 4.
			rs = pstmt.executeQuery();
			
			// 5.
			if(rs.next()) {
				
				// 회원정보가 있다(= 중복)
				result = 1;
				System.out.println(" DAO : 닉네임 중복 O ("+result+")");
			}
			
			// result == 0 (= 중복 X)
			System.out.println(" DAO : 닉네임 중복 X ("+result+")");			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
		
		return result;
	}
	// 닉네임 중복체크 메서드 - memberNNameCheck(mem_newNickName)
	

	
	// 로그인 메서드 - memberLogin(mem_id, mem_pw)
	public int memberLogin(String mem_id, String mem_pw) {
		int result = -1;
		
		try {
			// 1.2. 
			con = getConnection();
			
			// 3. 
			sql = "select mem_pw from member where mem_id=?";
			pstmt = con.prepareStatement(sql);
			
			// ??
			pstmt.setString(1, mem_id);
			
			// 4. 
			rs = pstmt.executeQuery();
			
			// 5. 
			if(rs.next()) {
				
				// 회원일 경우
				if(mem_pw.equals(rs.getString("mem_pw"))) {
					// 로그인 성공
					result = 1;
				}else {
					// 로그인 실패
					result = 0;
				}
			}else {
				// 비회원
				result = -1;
			}
			System.out.println(" DAO : 로그인 체크 ("+result+")");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
		
		return result;
	}
	// 로그인 메서드 - memberLogin(mem_id, mem_pw) - 끝
	
	
	
	// 네이버 로그인 메서드 - memberNaverLogin(mem_id, mem_pw)
	public int memberNaverLogin(String mem_id, String mem_pw) {
		int result = -1;
		
		try {
			// 1.2. 
			con = getConnection();
			
			// 3. 
			sql = "select mem_pw from member where mem_id=?";
			pstmt = con.prepareStatement(sql);
			
			// ??
			pstmt.setString(1, mem_id);
			
			// 4. 
			rs = pstmt.executeQuery();
			
			// 5. 
			if(rs.next()) {
				
				// 회원일 경우
				if(mem_pw.equals(rs.getString("mem_pw"))) {
					// 로그인 성공
					result = 1;
				}
			}else {
				// 비회원
				result = -1;
			}
			System.out.println(" DAO : 로그인 체크 ("+result+")");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
		
		return result;
	}
	// 네이버 로그인 메서드 - memberNaverLogin(mem_id, mem_pw) - 끝
	
	
	// 회원정보 조회 메서드 - getMember(mem_id)
	public MemberDTO getMember(String mem_id){
		MemberDTO mDTO = null;
		
		try {
			// 1.2. 
			con = getConnection();
			
			// 3. 
			sql = "select * from member where mem_id=?";
			pstmt = con.prepareStatement(sql);
			
			// ??
			pstmt.setString(1, mem_id);
			
			// 4. 
			rs = pstmt.executeQuery();
			
			// 5. 
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
			}
			
			System.out.println(" DAO : 회원 정보 저장완료! " +mDTO);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
		
		return mDTO;
	}
	// 회원정보 조회 메서드 - getMember(mem_id) - 끝

	
	
	// 회원정보 수정 메서드 - memberUpdate(mDTO)
	public int memberUpdate(MemberDTO mDTO) {
		int result = -1;
		
		try {
			// 1.2. 
			con = getConnection();
			
			// 3. 
			sql = "select mem_pw from member where mem_id=?";
			pstmt = con.prepareStatement(sql);
			
			// ??
			pstmt.setString(1, mDTO.getMem_id());
			
			// 4. 
			rs = pstmt.executeQuery();
			
			// 5. 
			if(rs.next()) {
				if(mDTO.getMem_pw().equals(rs.getString("mem_pw"))) {
					
					// 3.
					sql = "update member set mem_name=?,mem_nickName=?,mem_phone=?,mem_accept_sns=? where mem_id=?";
					pstmt = con.prepareStatement(sql);
					
					// ??
					pstmt.setString(1, mDTO.getMem_name());
					pstmt.setString(2, mDTO.getMem_nickName());
					pstmt.setString(3, mDTO.getMem_phone());
					pstmt.setInt(4, mDTO.getMem_accept_sns());
					pstmt.setString(5, mDTO.getMem_id());
					
					// 4. 
					result = pstmt.executeUpdate();
					
				}else { // 로그인 실패
					result = 0;
				}				
			}else { // 비회원
				result = -1;
			}
			
			System.out.println(" DAO : 회원정보 수정 완료("+result+")");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
		
		return result;
	}
	// 회원정보 수정 메서드 - memberUpdate(mDTO) - 끝
	
	
	
	// 회원 탈퇴 메서드 - memberRemove(mem_id, mem_pw) 
	public int memberRemove(String mem_id, String mem_pw) {
		int result = 0;
		
		try {
			// 1.2. 
			con = getConnection();
			
			// 3. 
			sql = "select mem_pw from member where mem_id=?";
			pstmt = con.prepareStatement(sql);
			
			// ??
			pstmt.setString(1, mem_id);
			
			// 4. 
			rs = pstmt.executeQuery();
			
			// 5. 
			if(rs.next()) {
				if(mem_pw.equals(rs.getString("mem_pw"))) {
					
					// 3. 
					sql = "delete from member where mem_id=?";
					pstmt = con.prepareStatement(sql);
					
					// ??
					pstmt.setString(1, mem_id);
					
					// 4.
					result = pstmt.executeUpdate();	
					
				}else { // 비밀번호 오류
					result = 0;
				}				

			}
			
			System.out.println(" DAO : 회원탈퇴 완료("+result+") ");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
		
		return result;
	}
	// 회원 탈퇴 메서드 - memberRemove(mem_id, mem_pw) - 끝
	
	
	
	// 아이디 찾기 메서드 - memberFindId(mem_name, mem_email)
	public MemberDTO memberFindId(String mem_name, String mem_email) {
		MemberDTO mDTO = null;
		
		try {
			
			con = getConnection();
			
			sql = "select * from member where mem_name=? and mem_email=?";
			pstmt = con.prepareStatement(sql);
			
	        pstmt.setString(1, mem_name);
	        pstmt.setString(2, mem_email);
	        
	        rs = pstmt.executeQuery();
	        
	        if(rs.next()) {
	        	mDTO = new MemberDTO();
	        	
				mDTO.setMem_id(rs.getString("mem_id"));
	        }
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
		
		return mDTO;
	}
	// 아이디 찾기 메서드 - memberFindId(mem_name, mem_email) - 끝
	
	
	
	// 비밀번호 찾기 메서드 - memberFindPw(mem_id, mem_name, mem_email)
	public MemberDTO memberFindPw(String mem_id, String mem_name, String mem_email) {
		MemberDTO mDTO = null;
		
		try {
			
			con = getConnection();
			
			sql = "select * from member where mem_id=? and mem_name=? and mem_email=?";
			pstmt = con.prepareStatement(sql);
			
	        pstmt.setString(1, mem_id);
	        pstmt.setString(2, mem_name);
	        pstmt.setString(3, mem_email);
	        
	        rs = pstmt.executeQuery();
	        
	        if(rs.next()) {
	        	mDTO = new MemberDTO();
	        	
				mDTO.setMem_pw(rs.getString("mem_pw"));
	        }
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
		
		return mDTO;
	}
	// 비밀번호 찾기 메서드 - memberFindPw(mem_id, mem_name, mem_email) - 끝
}
