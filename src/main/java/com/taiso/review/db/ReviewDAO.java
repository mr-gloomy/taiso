package com.taiso.review.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.mysql.cj.protocol.Resultset;

public class ReviewDAO {
	
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private String sql = "";

	// 디비 연결해주는 메서드 (커넥션 풀)
	private Connection getConnection() throws Exception {

		// 1. 드라이버 로드 & 2. 디비 연결

		// Context 객체 생성 (JNDI API)
		Context intiCTX = new InitialContext();

		// 디비 연동 정보 불러오기 (context.xml 파일 정보)
		DataSource ds = (DataSource) intiCTX.lookup("java:comp/env/jdbc/project_taiso");

		// 디비 정보(연결) 불러오기
		con = ds.getConnection();

		System.out.println("DAO : 디비 연결 성공(커넥션 풀)");
		System.out.println("DAO : con : " + con);

		return con;
	}
	// 디비 연결해주는 메서드 (커넥션 풀) - 끝
	
	// 자원해제 메서드 - closeDB ()
	public void closeDB() {
		System.out.println("DAO : 디비 연결 자원 해제 ..");

		try {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	// 자원해제 메서드 - closeDB ()
	
	// 예약번호로 리뷰 글 있는지 조회하는 메서드 - checkReview()
	public List getCheckReview(String mem_id) {
		List rList = new ArrayList();
		
		try {
			// 디비 연결
			con = getConnection();
			
			// 쿼리 작성 및 객체 생성
			sql = "select * from car_review where mem_id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, mem_id);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				ReviewDTO rDTO = new ReviewDTO();
				
				rDTO.setRev_num(rs.getInt("rev_num"));
				rDTO.setRez_uqNum(rs.getInt("rez_uqNum"));
				
				rList.add(rDTO);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeDB();
		}
		// 디비 조회 후 글이 있으면 1을 리턴, 없으면 0을 리턴
		return rList;
	}
	
	// 예약번호로 리뷰 글 있는지 조회하는 메서드 - checkReview() - 끝 
	
	// 리뷰 글쓰기 메서드 - insertReview(ReviewDTO dto)
	public void insertReview(ReviewDTO rDTO, String mem_id) {
		int rev_num = 0;
		String mem_nickName = null;
		String car_name = null;
		try {
			// 디비 연결
			con = getConnection();
			
			// 쿼리 작성 및 객체 생성 (글번호)
			sql = "select max(rev_num) from car_review";
			pstmt = con.prepareStatement(sql);
			// 4. sql 실행
			rs = pstmt.executeQuery();
			// 5. 데이터 처리
			if (rs.next()) {
				rev_num = rs.getInt(1)+1;
			}
			
			// 쿼리 작성 및 객체 생성 (닉네임)
			sql = "select mem_nickName from member where mem_id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, mem_id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				mem_nickName = rs.getString(1);
			}
			
			sql = "select car_name from car where car_code=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, rDTO.getCar_code());
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				car_name = rs.getString(1);
			}

			sql = "insert into car_review(rev_num,rev_subject,rev_content,rev_image,rev_star,car_code,car_name,mem_id,rez_uqNum,rev_ref,rev_lev,rev_seq, mem_nickName) values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, rev_num);		
			pstmt.setString(2, rDTO.getRev_subject());
			pstmt.setString(3, rDTO.getRev_content());
			pstmt.setString(4, rDTO.getRev_image());
			pstmt.setInt(5, rDTO.getRev_star());
			pstmt.setInt(6, rDTO.getCar_code());
			pstmt.setString(7, car_name);
			pstmt.setString(8, rDTO.getMem_id());
			pstmt.setInt(9, rDTO.getRez_uqNum());
			pstmt.setInt(10, rev_num);
			pstmt.setInt(11, 0);
			pstmt.setInt(12, 0);
			pstmt.setString(13, mem_nickName);
			pstmt.executeUpdate();
			
			System.out.println("DAO : 리뷰 글쓰기 완료!");

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeDB();
		}
	}
	// 리뷰 글쓰기 메서드 - insertReview(ReviewDTO dto) - 끝
	
	// 한개의 글정보 담는 메서드 - getReview(int rev_num)
	public ReviewDTO getReview(int rez_uqNum) {
		ReviewDTO rDTO = null;
		int rev_num = 0;
		
		try {
			// 디비 연걸
			con = getConnection();
			
			sql = "select * from car_review where rez_uqNum=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, rez_uqNum);
			rs = pstmt.executeQuery();

			if(rs.next()) {
				rDTO = new ReviewDTO();
				
				rDTO.setRev_content(rs.getString("rev_content"));
				rDTO.setRev_image(rs.getString("rev_image"));
				rDTO.setRev_num(rs.getInt("rev_num"));
				rDTO.setRev_star(rs.getInt("rev_star"));
				rDTO.setRev_subject(rs.getString("rev_subject"));
				
				System.out.println("글 담기 완료!");
			}
					
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeDB();
		}
		
		return rDTO;
	}
	
	// 한개의 글정보 담는 메서드 - getReview(int rev_num) - 끝
	
	// 리뷰 글수정 메서드 - updateReview(ReviewDTO dto)
	public void updateReview(ReviewDTO rDTO) {
		
		try {
			// 디비 연결
			con = getConnection();
			
			// 쿼리 작성 및 객체 생성
			sql = "update car_review set rev_subject=?,rev_content=?,rev_date=now(),rev_star=? where rev_num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, rDTO.getRev_subject());
			pstmt.setString(2, rDTO.getRev_content());
			pstmt.setInt(3, rDTO.getRev_star());
			pstmt.setInt(4, rDTO.getRev_num());
			pstmt.executeUpdate();
			
			System.out.println("글 수정 완료 !");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeDB();
		}
	}
	// 리뷰 글수정 메서드 - updateReview(ReviewDTO dto) - 끝
	
	// 리뷰 글삭제 메서드 - deleteReview(int rev_num)
	public void deleteReview(int rez_uqNum) {
		
		try {
			// 디비 연결
			con = getConnection();
			
			// 쿼리 작성 및 객체 생성 
			sql = "delete from car_review where rez_uqNum=? and rev_star!=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, rez_uqNum);
			pstmt.setInt(2, 0);

			pstmt.executeUpdate();
			
			System.out.println("글 삭제 완료 !");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeDB();
		}
	}
	// 리뷰 글삭제 메서드 - deleteReview(int rev_num) - 끝
	
	// 차량 코드에 해당하는 글 개수 계산하는 메서드 - getReviewCount(String car_name)
	public int getReviewCount(String car_name) {
		int cnt = 0;
		
		try {
			// 디비 연결
			con = getConnection();
			
			// 쿼리 작성 및 객체 생성
			sql = "select count(rev_star) from car_review where car_name=? and rev_star !=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1,car_name);
			// 댓글은 별점이 0으로 들어가기 때문에 별젬 제외
			pstmt.setInt(2, 0);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				cnt = rs.getInt(1);
			}
			
			System.out.println("전체 글 개수 : " + cnt + "개");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeDB();
		}
		return cnt;
	}
	// 리뷰 전체 글 계산하는 메서드 - getReviewCount() - 끝
	
	// 차량 코드에 해당하는 리뷰 글 정보 저장하는 배열 - getReviewList()
	// 나중에 닉네임도 받기 !
	public List getReviewList(String car_name) {
		List reviewList = new ArrayList<>();
		
		try {
			// 디비 연결
			con = getConnection();
			
			// 쿼리 작성 및 객체 생성
			sql = "select * from car_review where car_name = ? order by rev_ref desc, rev_seq asc";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, car_name);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				ReviewDTO rDTO = new ReviewDTO();
				
				rDTO.setRev_content(rs.getString("rev_content"));
				rDTO.setRev_date(rs.getTimestamp("rev_date"));
				rDTO.setRev_image(rs.getString("rev_image"));
				rDTO.setRev_num(rs.getInt("rev_num"));
				rDTO.setRev_star(rs.getInt("rev_star"));
				rDTO.setRev_subject(rs.getString("rev_subject"));
				rDTO.setRev_ref(rs.getInt("rev_ref"));
				rDTO.setRev_lev(rs.getInt("rev_lev"));
				rDTO.setRev_seq(rs.getInt("rev_seq"));
				rDTO.setMem_nickName(rs.getString("mem_nickName"));
				
				reviewList.add(rDTO);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeDB();
		}
		
		return reviewList;
	}
	// 차량 코드에 해당하는 리뷰 글 정보 저장하는 배열 - getReviewList() - 끝
	
	// 답글 정보 저장하는 메서드 - insertReviewReply(dto)
	public void insertReviewReply(ReviewDTO rDTO) {
		int rev_num = 0;
		int car_code = 0;
		String car_name = null;
		String mem_nickName = null;
		
		try {
			// 디비 연결
			con = getConnection();
			
			// 쿼리 작성 및 객체 생성 (카코드, 카네임)
			sql = "select car_code, car_name from car_review where rev_num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, rDTO.getRev_ref());
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				car_code = rs.getInt(1);
				car_name = rs.getString(2);
			}
			
			// 쿼리 작성 및 객체 생성
			sql = "select max(rev_num) from car_review";
			pstmt = con.prepareStatement(sql);
			// 4. sql 실행
			rs = pstmt.executeQuery();
			// 5. 데이터 처리
			if (rs.next()) {
				rev_num = rs.getInt(1)+1;
			}
			
			// 3. sql 작성 & pstmt 객체
			// => 같은 그룹에 있으면서, 기존의 seq 값보다 큰값이 있을때
			sql = "update car_review set rev_seq = rev_seq+1 "
					+ "where rev_ref=? and rev_seq>?";
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, rDTO.getRev_ref());
			pstmt.setInt(2, rDTO.getRev_seq());
			
			// 4. sql 실행
			int cnt = pstmt.executeUpdate();
			
			if (cnt > 0) {
				// =>cnt(update 구문이 적용된 수)
				System.out.println(" DAO : 답글 재정렬 완료! ");
			}
			
			// 쿼리 작성 및 객체 생성 (닉네임)
			sql = "select mem_nickName from member where mem_id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, rDTO.getMem_id());
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				mem_nickName = rs.getString(1);
			}
			
			
			// 쿼리 작성 및 객체 생성
			sql = "insert into car_review(rev_num,rev_subject,rev_content,rev_image,rev_star,car_code,car_name,mem_id,rez_uqNum,rev_ref,rev_lev,rev_seq,mem_nickName) values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, rev_num);		
			pstmt.setString(2, rDTO.getRev_subject());
			pstmt.setString(3, rDTO.getRev_content());
			pstmt.setString(4, rDTO.getRev_image());
			pstmt.setInt(5, rDTO.getRev_star());
			pstmt.setInt(6, car_code);
			pstmt.setString(7, car_name);
			pstmt.setString(8, rDTO.getMem_id());
			pstmt.setInt(9, rDTO.getRez_uqNum());
			pstmt.setInt(10,rDTO.getRev_ref());
			pstmt.setInt(11, rDTO.getRev_lev()+1);
			pstmt.setInt(12, rDTO.getRev_seq()+1);
			pstmt.setString(13, mem_nickName);
			
			pstmt.executeUpdate();
			
			System.out.println("답글 등록 완료!");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	// 답글 정보 저장하는 메서드 - insertReviewReply(dto) - 끝
	
	
	// 리뷰 정보 랜덤 4개 조회 - selectRandReview()
	public List<ReviewDTO> selectRandReview() {
		
		List<ReviewDTO> rList = new ArrayList<ReviewDTO>();
		
		try {
			con = getConnection();
//			sql = "select rev_num, rev_subject, rev_content, rev_image, mem_nickName FROM car_review ORDER BY RAND() LIMIT 4";
			sql = "select rev_subject, substring(rev_content,1,21) as rev_content_cut, rev_image, mem_nickName FROM car_review where rev_star!=0 ORDER BY RAND() LIMIT 4";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				ReviewDTO rDTO = new ReviewDTO();
//				rDTO.setRev_num(rs.getInt("rev_num"));
				rDTO.setRev_subject(rs.getString("rev_subject"));
				rDTO.setRev_content(rs.getString("rev_content_cut"));
				rDTO.setRev_image(rs.getString("rev_image"));
				rDTO.setMem_nickName(rs.getString("mem_nickName"));
				rList.add(rDTO);
			}
			
			System.out.println(" 리뷰 정보 : "+rList.size());
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
		
		return rList;
		
	}
	// 리뷰 정보 랜덤 5개 조회 - selectRandReview()
	
	// 회원 수 조회 - getMemberCount()
	public int getMemberCount() {
		int mCnt = 0;
		try {
			con = getConnection();
			sql = "select count(*) from member";
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				mCnt = rs.getInt(1);
			}
			System.out.println(" DAO : 전체 회원수 : " + mCnt + "명");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeDB();
		}
		   return mCnt;
	}	
	// 회원 수 조회 - getMemberCount()
	
	// 총 예약 수 조회 - getRezCount()
	public int getRezCount() {
		int rezCnt = 0;
		try {
			con = getConnection();
			sql = "select count(*) from rez_reservation";
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				rezCnt = rs.getInt(1);
			}
			System.out.println(" DAO : 전체 예약수 : " + rezCnt + "건");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeDB();
		}
		return rezCnt;
	}	
	// 총 예약 수 조회 - getRezCount()
	
}
