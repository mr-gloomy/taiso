package com.taiso.car.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;



public class CarDAO {
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private String sql = "";

	// 디비 연결해주는 메서드(커넥션풀)
	private Connection getConnection() throws Exception {
		// 1. 드라이버 로드 // 2. 디비연결

		// Context 객체 생성 (JNDI API)
		Context initCTX = new InitialContext();
		// 디비연동정보 불러오기 (context.xml 파일정보)
		DataSource ds = (DataSource) initCTX.lookup("java:comp/env/jdbc/project_taiso");
		// 디비정보(연결) 불러오기
		con = ds.getConnection();

		System.out.println(" DAO : 디비연결 성공(커넥션풀) ");
		System.out.println(" DAO : con : " + con);

		return con;
	}// 커넥션풀 끝

	// 자원해제 메서드-closeDB()
	public void closeDB() {
		System.out.println(" DAO : 디비연결자원 해제");

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
	}// 자원해제 메서드-closeDB()
	
	 // 차 전체 대수 확인 - getCarCount()
	   public int getCarCount() {
		   int cnt = 0;
		   try {
			con = getConnection();
			sql="select count(*) from car";
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				cnt = rs.getInt("count(*)");
			}
			System.out.println(" DAO : 전체 차 대수 : " + cnt + "대");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeDB();
		}
		   return cnt;
	   }
	 // 차 전체 대수 확인 - getCarCount()
	
	
	// 차정보 가져오는 메서드
	public List getCarList(int startRow,int pageSize,String item,String car_site) {
		List carsList = new ArrayList();
		StringBuffer SQL = new StringBuffer();
		
		CarDTO cDTO = null;
		
		try {
			// 디비 연결
			con = getConnection();
			
			SQL.append("select * from car");
			
			if(item.equals("all")) {
				SQL.append(" where car_site=?");
				SQL.append(" limit ?,?");
				System.out.println(" DAO : all : " + SQL);
			}
			else {
				
				SQL.append(" where car_category=? and car_site=? limit ?,?");
				System.out.println(" DAO : car_categroy "+SQL);
			}
			pstmt = con.prepareStatement(SQL+"");
			
			if(item.equals("all")){
				pstmt.setString(1, car_site);
				pstmt.setInt(2, startRow-1); // 시작행 -1
				pstmt.setInt(3, pageSize); // 갯수
			}
			else {
				pstmt.setString(1, item);
				pstmt.setString(2, car_site);
				pstmt.setInt(3, startRow-1); // 시작행 -1
				pstmt.setInt(4, pageSize); // 갯수
			
			}

			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				cDTO = new CarDTO();

				cDTO.setCar_brand(rs.getString("car_brand"));
				cDTO.setCar_category(rs.getString("car_category"));
				cDTO.setCar_code(rs.getInt("car_code"));
				cDTO.setCar_file(rs.getString("car_file"));
				cDTO.setCar_fuel(rs.getString("car_fuel"));
				cDTO.setCar_location(rs.getInt("car_location"));
				cDTO.setCar_name(rs.getString("car_name"));
				cDTO.setCar_op(rs.getString("car_op"));
				cDTO.setCar_price(rs.getInt("car_price"));
				cDTO.setCar_year(rs.getInt("car_year"));
				cDTO.setCar_site(rs.getString("car_site"));

				carsList.add(cDTO);
			}
			System.out.println(" DAO : " + carsList.size());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
		System.out.println(" DAO : 상품정보 조회 완료! ");
		return carsList;
	}// getCarList() 끝
	
	// 차량 한 대의 정보 담아오는 메서드 getOneCarList(car_code)
	public CarDTO getOneCarList(int car_code) {
		CarDTO cDTO = null;
		
		try {
			// 디비 연결
			con = getConnection();
			
			// 쿼리 작성 및  객체 생성
			sql = "select * from car where car_code = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, car_code);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				cDTO = new CarDTO();

				cDTO.setCar_brand(rs.getString("car_brand"));
				cDTO.setCar_category(rs.getString("car_category"));
				cDTO.setCar_code(rs.getInt("car_code"));
				cDTO.setCar_file(rs.getString("car_file"));
				cDTO.setCar_fuel(rs.getString("car_fuel"));
				cDTO.setCar_location(rs.getInt("car_location"));
				cDTO.setCar_name(rs.getString("car_name"));
				cDTO.setCar_op(rs.getString("car_op"));
				cDTO.setCar_price(rs.getInt("car_price"));
				cDTO.setCar_year(rs.getInt("car_year"));
				cDTO.setCar_site(rs.getString("car_site"));
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeDB();
		}
		
		return cDTO;
	}
	// 차량 한 대의 정보 담아오는 메서드 getOneCarList(car_code) - 끝
}
