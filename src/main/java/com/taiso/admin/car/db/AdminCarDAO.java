package com.taiso.admin.car.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class AdminCarDAO {
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
	
		// 상품등록메서드 - insertCar(DTO)
		  public void insertCar(CarDTO cDTO) {
			  int car_code = 0;
			  try {
				con = getConnection();
				sql="select max(car_code) from car";
				pstmt = con.prepareStatement(sql);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					car_code = rs.getInt(1)+1;
				}
				System.out.println(" DAO : car_code : " + car_code);
				
				// 2. 상품 등록
				sql = "insert into car(car_code,car_brand,car_name,car_location,car_site,car_price,car_op,car_category,car_file,car_year,car_fuel) "
						+ "value(?,?,?,?,?,?,?,?,?,?,?)";
				pstmt = con.prepareStatement(sql);
				
				// ???
				pstmt.setInt(1, car_code);
				pstmt.setString(2, cDTO.getCar_brand());
				pstmt.setString(3, cDTO.getCar_name());
				pstmt.setInt(4, cDTO.getCar_location());
				pstmt.setString(5, cDTO.getCar_site());
				pstmt.setInt(6, cDTO.getCar_price());
				pstmt.setString(7, cDTO.getCar_op());
				pstmt.setString(8, cDTO.getCar_category());
				pstmt.setString(9, cDTO.getCar_file());
				pstmt.setInt(10, cDTO.getCar_year());
				pstmt.setString(11, cDTO.getCar_fuel());
				
				pstmt.executeUpdate();
				
				System.out.println(" DAO : 상품등록완료 ! ");
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				closeDB();
			}
		  }
		// 상품등록메서드 - insertCar(DTO)
		
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
		   
		// 상품 리스트 - getAdminCarList(int startRow, int pageSize)
		  public List getAdminCarList(int startRow, int pageSize,String item) {
			  List adminCarList = new ArrayList();
			  StringBuffer SQL = new StringBuffer();
				
				CarDTO cDTO = null;
			  try {
				con = getConnection();
				SQL.append("select * from car");
				
				if(item.equals("all")) {
					SQL.append(" limit ?,?");
					System.out.println(" DAO : all : " + SQL);
				}
				else {
					SQL.append(" where car_category=? limit ?,?");
					System.out.println(" DAO : car_categroy "+SQL);
				}
				pstmt = con.prepareStatement(SQL+"");
				
				if(item.equals("all")){
					// ?????
					pstmt.setInt(1, startRow-1); // 시작행 -1
					pstmt.setInt(2, pageSize); // 갯수
				}
				else {
					// ?????
					pstmt.setString(1, item);
					pstmt.setInt(2, startRow-1); // 시작행 -1
					pstmt.setInt(3, pageSize); // 갯수
				}
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					// DB(테이블) -> DTO -> List
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

					adminCarList.add(cDTO);
				} // while
					System.out.println(" DAO : 관리자 상품리스트 저장완료! ");
					System.out.println(" DAO : " + adminCarList.size());
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				closeDB();
			}
			  return adminCarList;
		  }
		// 상품 리스트 - getAdminCarList()
   
		// 상품 1개의 정보를 가져오기 - getAdminCar(car_code)
		  public CarDTO getAdminCar(int car_code) {
			  CarDTO cDTO = null;
			  try {
				con = getConnection();
				sql = "select * from car where car_code=?";
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
				} // if
				
				System.out.println(" DAO : 상품정보 가져오기 완료! ");
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				closeDB();
			}
			  
			  return cDTO;
		  }
		// 상품 1개의 정보를 가져오기 - getAdminCar(car_code)
		  
		 // DAO - 상품정보 수정메서드 adminUpdateCar(DTO)
		  public void adminUpdateCar(CarDTO cDTO) {
			  try {
				con = getConnection();
				sql ="update car set car_category=?, car_name=?, car_brand=?, car_price=?, car_year=?, car_fuel=?, car_op=?, car_location=? "
						+ "where car_code=?";
				pstmt = con.prepareStatement(sql);
				
				pstmt.setString(1, cDTO.getCar_category());
				pstmt.setString(2, cDTO.getCar_name());
				pstmt.setString(3, cDTO.getCar_brand());
				pstmt.setInt(4, cDTO.getCar_price());
				pstmt.setInt(5, cDTO.getCar_year());
				pstmt.setString(6, cDTO.getCar_fuel());
				pstmt.setString(7, cDTO.getCar_op());
				pstmt.setInt(8, cDTO.getCar_location());
				pstmt.setInt(9, cDTO.getCar_code());
				
				pstmt.executeUpdate();
				
				System.out.println(" DAO : 관리자 상품정보 수정! ");
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				closeDB();
			}
		  }
		// DAO - 상품정보 수정메서드 adminUpdateCar(DTO)
		 
		// 상품 삭제 - adminDeleteCar()
		  public void adminDeleteCar(int car_code) {
			  try {
				con = getConnection();
				sql ="delete from car where car_code=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, car_code);
				pstmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			}
		  }
		// 상품 삭제 - adminDeleteCar()

}
