package com.taiso.reservation.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.mysql.cj.x.protobuf.MysqlxPrepare.Prepare;
import com.taiso.car.db.CarDTO;
import com.taiso.member.db.MemberDTO;
import com.taiso.payment.db.PaymentDTO;

public class AdminReservationDAO {
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
               if(rs != null) rs.close();        // rs.close() :rs안에 정보가 있으면 연결을 끊어준다는 뜻
                                          // sql쿼리를 실행하면 rs가 not null
               if(pstmt != null) pstmt.close();
               if(con != null) con.close();
               
            } catch (SQLException e) {
               e.printStackTrace();
            }
            
         } // 자원해제 메서드 끝
         

         


         
         //  관리자 예약 조회 리스트 - getAdminReservationList(int startRow,int pageSize)
         public Vector getAdminReservationList(int startRow,int pageSize) {
            System.out.println(" DAO : getAdminReservationList() 호출 ");
            
            Vector adminTotalList = new Vector();
            List adminRezList = new ArrayList();
            List adminPayList = new ArrayList(); 
            List adminMemList = new ArrayList(); 
            List adminCarList = new ArrayList(); 
            
            
            try {
               // 1.2. 디비연결
               con = getConnection();
               // 3. sql 작성 &  pstmt객체
               sql = "select * "
                     + "from rez_reservation rezr "
                     + "join rez_payment rezp "
                     + "on rezp.rez_uqNum = rezr.rez_uqNum "
                     + "join (select mem_id, mem_pw, mem_name, mem_nickName, "
                     + "          mem_phone, mem_birthday, mem_email from member) mem "
                     + "on mem.mem_id = rezr.mem_id "
                     + "join rez_driverlicense rezd "
                     + "on rezd.license_num = rezr.license_num "
                     + "join car "
                     + "on car.car_code = rezr.car_code "
                     + "left join (select cancel_date, cancel_reason, cancel_commission, rez_uqNum " // 값이 안 담겨 있음 NN아님
                     + "         from rez_cancellation ) rezc "
                     + "on rezc.rez_uqNum = rezp.rez_uqNum "
                     + "order by rezr.rez_uqNum desc limit ?,?";
               
               pstmt = con.prepareStatement(sql); 
               
               pstmt.setInt(1, startRow-1); // 시작행 - 1 
               pstmt.setInt(2, pageSize); // 개수 
               
               // 4. sql 실행
               rs = pstmt.executeQuery();
               // 5. 데이터 처리
               while(rs.next()) {
                  // DB(테이블) -> DTO -> List 
                  ReservationDTO rezDTO = new ReservationDTO();
                  PaymentDTO payDTO = new PaymentDTO();
                  MemberDTO mDTO = new MemberDTO();
                  CarDTO carDTO = new CarDTO();
                  
                  // 예약정보 dto에 담기
                  rezDTO.setMem_id(rs.getString("mem_id"));
                  rezDTO.setRez_uqNum(rs.getInt("rez_uqNum"));                  
                  rezDTO.setRez_rentalDate(rs.getString("rez_rentalDate"));
                  rezDTO.setRez_returnDate(rs.getString("rez_returnDate"));
                  rezDTO.setRez_totalDate(rs.getString("rez_totalDate"));
                  rezDTO.setRez_site(rs.getString("rez_site"));
                  rezDTO.setRez_status(rs.getInt("rez_status"));   // 예약현황 (예약완료 0 / 예약취소 -1)
                  rezDTO.setCar_code(rs.getInt("car_code"));
                  rezDTO.setCar_insurance(rs.getString("car_insurance"));
                  
                  // 면허정보 dto에 담기
                  rezDTO.setLicense_num(rs.getString("license_num"));
                  rezDTO.setLicense_issueDate(rs.getString("license_issueDate"));
                  rezDTO.setLicense_type(rs.getString("license_type"));
                  
                  
                  // 예약취소정보 dto에 담기
                  rezDTO.setCancel_date(rs.getTimestamp("cancel_date"));
                  rezDTO.setCancel_reason(rs.getString("cancel_reason"));
                  rezDTO.setCancel_commission(rs.getInt("cancel_commission"));
                  
                                    
                  
                  // 결제정보 dto에 담기
                  payDTO.setPay_uqNum(rs.getString("pay_uqNum"));
                  payDTO.setPay_method(rs.getString("pay_method"));
                  payDTO.setPay_date(rs.getTimestamp("pay_date"));
                  payDTO.setPay_status(rs.getString("pay_status"));
                  payDTO.setPay_total(rs.getInt("pay_total"));
                  
                  
                              
                  // 멤버 dto에 담기
                  mDTO.setMem_id(rs.getString("mem_id"));
                  mDTO.setMem_pw(rs.getString("mem_pw"));
                  mDTO.setMem_name(rs.getString("mem_name"));
                  mDTO.setMem_nickName(rs.getString("mem_nickName"));
                  mDTO.setMem_phone(rs.getString("mem_phone"));
                  mDTO.setMem_birthday(rs.getString("mem_birthday"));
                  mDTO.setMem_email(rs.getString("mem_email"));
                  
                  
                  
                  // 차 dto에 담기
                  carDTO.setCar_code(rs.getInt("car_code"));
                  carDTO.setCar_brand(rs.getString("car_brand"));
                  carDTO.setCar_name(rs.getString("car_name"));
                  carDTO.setCar_site(rs.getString("car_site"));
                  carDTO.setCar_price(rs.getInt("car_price"));
                  carDTO.setCar_op(rs.getString("car_op"));
                  carDTO.setCar_category(rs.getString("car_category"));
                  carDTO.setCar_year(rs.getInt("car_year"));
                  carDTO.setCar_fuel(rs.getString("car_fuel"));
                        
                  
                  // DTO -> List
                  adminRezList.add(rezDTO);
                  adminPayList.add(payDTO);
                  adminMemList.add(mDTO);
                  adminCarList.add(carDTO);
                                 
                  
               } // while() 끝
               
               
               // adminTotalList에 모든 List 저장
               adminTotalList.add(adminRezList);
               adminTotalList.add(adminPayList);
               adminTotalList.add(adminMemList);
               adminTotalList.add(adminCarList);
               
               
               System.out.println(" DAO : 관리자 예약 + 결제 + 면허 + 차량 + 회원 리트스 저장완료!");
               System.out.println(" DAO : " + adminTotalList.size());
               
            } catch (Exception e) {
               e.printStackTrace();
            } finally {
               closeDB();
            }
            
            return adminTotalList; // totalList를 리턴해야 가져다 쓸 수 있다.
         }
         //  관리자 예약 조회 리스트 - getAdminReservationList(int startRow,int pageSize)
         
               
         
         
         
         
      // 주문번호에 해당하는 예약정보(리스트 전체)를 가져오는 동작을 처리   - getAdminReservationList(int rez_uqNum)
         public ArrayList getAdminReservationList(int rez_uqNum) {
            ArrayList adminTotalDTO = new ArrayList();
            
            ReservationDTO rezDTO = null;   
            PaymentDTO payDTO = null;
            CarDTO carDTO = null;
            MemberDTO mDTO = null;
            
            try {
               // 1.2. 디비연결
               con = getConnection();
               // 3. sql 작성 &  pstmt객체
               sql = "select * "
                     + "from rez_reservation rezr "
                     + "join rez_payment rezp "
                     + "on rezp.rez_uqNum = rezr.rez_uqNum "
                     + "join (select mem_id, mem_pw, mem_name, mem_nickName, "
                     + "          mem_phone, mem_birthday, mem_email from member) mem "
                     + "on mem.mem_id = rezr.mem_id "
                     + "join rez_driverlicense rezd "
                     + "on rezd.license_num = rezr.license_num "
                     + "join car "
                     + "on car.car_code = rezr.car_code "
                     + "left join (select cancel_date, cancel_reason, cancel_commission, rez_uqNum " // 값이 안 담겨 있음 NN아님
                     + "         from rez_cancellation ) rezc "
                     + "on rezc.rez_uqNum = rezp.rez_uqNum "
                     + "where rezr.rez_uqNum = ?";
               
               pstmt = con.prepareStatement(sql);
               pstmt.setInt(1, rez_uqNum);
               
               // 4. sql 실행
               rs = pstmt.executeQuery();
               
               // 5. 데이터 처리
               if(rs.next()) {
                  
                  rezDTO = new ReservationDTO();
                  payDTO = new PaymentDTO();
                  mDTO = new MemberDTO();
                  carDTO = new CarDTO();
                  
                  // 예약정보 dto에 담기
                  rezDTO.setMem_id(rs.getString("mem_id"));
                  rezDTO.setRez_uqNum(rs.getInt("rez_uqNum"));                  
                  rezDTO.setRez_rentalDate(rs.getString("rez_rentalDate"));
                  rezDTO.setRez_returnDate(rs.getString("rez_returnDate"));
                  rezDTO.setRez_totalDate(rs.getString("rez_totalDate"));
                  rezDTO.setRez_site(rs.getString("rez_site"));
                  rezDTO.setRez_status(rs.getInt("rez_status"));   // 예약현황 (예약완료 0 / 예약취소 -1)
                  rezDTO.setCar_code(rs.getInt("car_code"));
                  rezDTO.setCar_insurance(rs.getString("car_insurance"));
                  
                  
                  // 면허정보 dto에 담기
                  rezDTO.setLicense_num(rs.getString("license_num"));
                  rezDTO.setLicense_issueDate(rs.getString("license_issueDate"));
                  rezDTO.setLicense_type(rs.getString("license_type"));
                  
                  
                  // 예약취소정보 dto에 담기
                  rezDTO.setCancel_date(rs.getTimestamp("cancel_date"));
                  rezDTO.setCancel_reason(rs.getString("cancel_reason"));
                  rezDTO.setCancel_commission(rs.getInt("cancel_commission"));
                  
                                    
                  
                  // 결제정보 dto에 담기
                  payDTO.setPay_uqNum(rs.getString("pay_uqNum"));
                  payDTO.setPay_method(rs.getString("pay_method"));
                  payDTO.setPay_date(rs.getTimestamp("pay_date"));
                  payDTO.setPay_status(rs.getString("pay_status"));
                  payDTO.setPay_total(rs.getInt("pay_total"));
                  
                  
                              
                  // 멤버 dto에 담기
                  mDTO.setMem_id(rs.getString("mem_id"));
                  mDTO.setMem_pw(rs.getString("mem_pw"));
                  mDTO.setMem_name(rs.getString("mem_name"));
                  mDTO.setMem_nickName(rs.getString("mem_nickName"));
                  mDTO.setMem_phone(rs.getString("mem_phone"));
                  mDTO.setMem_birthday(rs.getString("mem_birthday"));
                  mDTO.setMem_email(rs.getString("mem_email"));
                  
                  
                  
                  // 차 dto에 담기
                  carDTO.setCar_code(rs.getInt("car_code"));
                  carDTO.setCar_brand(rs.getString("car_brand"));
                  carDTO.setCar_name(rs.getString("car_name"));
                  carDTO.setCar_site(rs.getString("car_site"));
                  carDTO.setCar_price(rs.getInt("car_price"));
                  carDTO.setCar_op(rs.getString("car_op"));
                  carDTO.setCar_category(rs.getString("car_category"));
                  carDTO.setCar_year(rs.getInt("car_year"));
                  carDTO.setCar_fuel(rs.getString("car_fuel"));                     
                  
               } // if() 끝
               
               System.out.println(" DAO : 해당 예약정보 가져오기 완료 ");
               
            } catch (Exception e) {
               e.printStackTrace();
            } finally {
               closeDB();
            }
            // totalDTO 저장
            adminTotalDTO.add(rezDTO);
            adminTotalDTO.add(payDTO);
            adminTotalDTO.add(mDTO);
            adminTotalDTO.add(carDTO);
            
            return adminTotalDTO ; 
         }         
         // 주문번호에 해당하는 주문정보(리스트 전체)를 가져오는 동작을 처리   - getAdminReservationList(int rez_uqNum)
         
      
         
         
         
         // 예약 전체 개수 확인 - getReservationCount
         public int getReservationCount() {
            int cnt = 0;
            

            try {
               //1.2. 디비연결
               con = getConnection();
               // 3. sql
               sql = "select count(*) from rez_reservation";
               pstmt = con.prepareStatement(sql);
               
               // 4. sql 실행
               rs = pstmt.executeQuery();
               // 5. 데이터 처리
               if(rs.next()) {
                  cnt = rs.getInt("count(*)");
               }
               System.out.println(" DAO : 전체 예약 개수 : "+cnt+"개");
            } catch (Exception e) {
               e.printStackTrace();
            } finally {
               closeDB();
            }
            return cnt;   
         }
      // 예약 전체 개수 확인 - getReservationCount
         
         
         
         
         
         
//         //  관리자 예약 조회 리스트 - getAdminReservationList(int startRow,int pageSize)
//         public Vector getAdminReservationList(int startRow,int pageSize) {
//            System.out.println(" DAO : getAdminReservationList() 호출 ");
//            
//            Vector adminTotalList = new Vector();
//            List adminReservationList = new ArrayList(); // 멤버id와 예약정보 + 차종류 + 결제취소정보
//            List adminPaymentList = new ArrayList(); // 결제정보
//            
//            try {
//               // 1.2. 디비연결
//               con = getConnection();
//               // 3. sql 작성 &  pstmt객체
//               sql = "select * from rez_reservation order by rez_uqNum desc limit ?,?";
//               pstmt = con.prepareStatement(sql); 
//               
//               pstmt.setInt(1, startRow-1); // 시작행 - 1 
//               pstmt.setInt(2, pageSize); // 개수 
//               // 4. sql 실행
//               rs = pstmt.executeQuery();
//               // 5. 데이터 처리
//               while(rs.next()) {
//                  // DB(테이블) -> DTO -> List 
//                  ReservationDTO rezDTO = new ReservationDTO();
//                  
//                  // 예약정보 dto에 담기
//                  rezDTO.setMem_id(rs.getString("mem_id"));
//                  rezDTO.setRez_uqNum(rs.getInt("rez_uqNum"));
//                  
//                  rezDTO.setRez_rentalDate(rs.getString("rez_rentalDate"));
//                  rezDTO.setRez_returnDate(rs.getString("rez_returnDate"));
//                  rezDTO.setRez_site(rs.getString("rez_site"));
////                  rezDTO.setRez_totalDate(rs.getString("rez_totalDate"));
//                  
//                  rezDTO.setCar_code(rs.getInt("car_code"));
//                  rezDTO.setCar_insurance(rs.getString("car_insurance"));
//                  rezDTO.setRez_status(rs.getString("rez_status"));   // 예약현황 (예약완료 0 / 예약취소 -1)
//                  
//                  
//                  // 면허정보 dto에 담기
//                  rezDTO.setLicense_num(rs.getString("license_num"));
//                  rezDTO.setLicense_issueDate(rs.getString("license_issueDate"));
//                  rezDTO.setLicense_type(rs.getString("license_type"));
//                  
//                  
//                  // 예약취소정보 dto에 담기
//                  rezDTO.setPay_uqNum(rs.getString("pay_uqNum"));
//                  rezDTO.setCancel_date(rs.getTimestamp("cancel_date"));
//                  rezDTO.setCancel_reason(rs.getString("cancel_reason"));
//                  rezDTO.setCancel_commission(rs.getInt("cancel_commission"));
//                  
//                  // DTO -> List
//                  adminReservationList.add(rezDTO); // 배열에 저장
////                  System.out.println(" DA0 : " +totalList );
//                  
//                  
//                  // 특정 예약 정보에 해당하는 결제 정보 조회
//                  // DB -> DTO -> List
//                  // sql - 결제정보 조회 동작
//                  sql="select*from rez_payment where rez_uqNum=?";
//                  PreparedStatement pstmt2 = con.prepareStatement(sql);
//                  pstmt2.setInt(1, rezDTO.getRez_uqNum());
//                  ResultSet rs2 = pstmt2.executeQuery();
//                  
//                  if(rs2.next()) {
//                     // 특정 예약 정보에 해당하는 결제 결제 정보를 찾았다면 DTO에 담을 준비
//                     PaymentDTO payDTO = new PaymentDTO();
//                     
//                     // 결제 정보를 DTO에 담기
//                     payDTO.setRez_uqNum(rs.getInt("rez_uqNum"));
//                     payDTO.setPay_uqNum(rs.getString("pay_uqNum"));
//                     payDTO.setPay_method(rs.getString("pay_method"));
//               
//                     payDTO.setPay_status(rs.getString("pay_status"));
//                     payDTO.setPay_total(rs.getInt("pay_total"));
//                     
//                     // DTO -> List
//                     adminPaymentList.add(payDTO);
//                     System.out.println(" DAO : " + adminPaymentList); // 확인용 
//                     
//                  } // 결제정보 저장완.
//                  
//               } // while() 끝
//               
//                 // totalList에 두 List 저장
//               
//               adminTotalList.add(adminReservationList);
//               adminTotalList.add(adminPaymentList);
//               
//               System.out.println(" DAO : 관리자 예약 + 결제 리트스 저장완료!");
//               System.out.println(" DAO : " + adminReservationList.size());
//               
//            } catch (Exception e) {
//               e.printStackTrace();
//            } finally {
//               closeDB();
//            }
//            
//            return adminTotalList; // totalList를 리턴해야 가져다 쓸 수 있다.
//         }
//      //  관리자 예약 조회 리스트 - getAdminReservationList(int startRow,int pageSize)
         
         
         
//         // 주문번호에 해당하는 예약정보(리스트 전체)를 가져오는 동작을 처리   - getAdminReservationList(int rez_uqNum)
//         public ArrayList getAdminReservationList(int rez_uqNum) {
//            ArrayList adminTotalDTO = new ArrayList();
//            
//            ReservationDTO rezDTO = null;   
//            PaymentDTO payDTO = null;
//            
//            try {
//               // 1.2. 디비연결
//               con = getConnection();
//               // 3. sql 작성 &  pstmt객체
//               sql = "select * from rez_reservation rez "
//                     + "join member mem on rez.mem_id = mem.member_id "
//                     + "where rez_uqNum = ?";
//               
//               pstmt = con.prepareStatement(sql);
//               pstmt.setInt(1, rez_uqNum);
//               
//               // 4. sql 실행
//               rs = pstmt.executeQuery();
//               
//               // 5. 데이터 처리
//               if(rs.next()) {
//                  
//                  // DB(테이블) -> DTO -> List 
//                  rezDTO = new ReservationDTO();
//                  
//                  // 예약정보 dto에 담기
//                  rezDTO.setMem_id(rs.getString("mem_id"));
////                  rezDTO.setMem_name(rs.getString("mem_name"));   // ***테이블 fk걸면 다시 주석 풀것
////                  rezDTO.setMem_name(rs.getString("mem_birth"));
////                  rezDTO.setMem_name(rs.getString("mem_email"));
////                  rezDTO.setMem_name(rs.getString("mem_addr"));
////                  rezDTO.setMem_name(rs.getString("mem_tel"));
//                  rezDTO.setRez_uqNum(rs.getInt("rez_uqNum"));
//                  
//                  rezDTO.setRez_rentalDate(rs.getString("rez_rentalDate"));
//                  rezDTO.setRez_returnDate(rs.getString("rez_returnDate"));
//                  rezDTO.setRez_site(rs.getString("rez_site"));
//                  rezDTO.setRez_totalDate(rs.getString("rez_totalDate"));
//                  
//                  rezDTO.setCar_code(rs.getInt("car_code"));
//                  rezDTO.setCar_insurance(rs.getString("car_insurance"));
//                  rezDTO.setRez_status(rs.getString("rez_status"));   // 예약현황   (예약완료 0 / 예약취소 1)   
//                  
//                  
//                  // 면허정보 dto에 담기
//                  rezDTO.setLicense_num(rs.getString("license_num"));
//                  rezDTO.setLicense_issueDate(rs.getString("license_issueDate"));
//                  rezDTO.setLicense_type(rs.getString("license_type"));
//                  
//                  
//                  // 예약취소정보 dto에 담기
//                  rezDTO.setPay_uqNum(rs.getString("pay_uqNum"));
//                  rezDTO.setCancel_date(rs.getTimestamp("cancel_date"));
//                  rezDTO.setCancel_reason(rs.getString("cancel_reason"));
//                  rezDTO.setCancel_commission(rs.getInt("cancel_commission"));
//                  
//                  // 특정 예약 정보에 해당하는 결제 정보 조회
//                  // DB -> DTO -> List
//                  sql="select*from rez_payment where rez_uqNum=?";
//                  PreparedStatement pstmt2 = con.prepareStatement(sql);
//                  pstmt2.setInt(1, rezDTO.getRez_uqNum());
//                  ResultSet rs2 = pstmt2.executeQuery();
//                  
//                  if(rs2.next()) {
//                     // 특정 예약 정보에 해당하는 결제 결제 정보를 찾았다면 DTO에 담을 준비
//                     payDTO = new PaymentDTO();
//                     
//                     // 결제 정보를 DTO에 담기
//                     payDTO.setRez_uqNum(rs.getInt("rez_uqNum"));
//                     payDTO.setPay_uqNum(rs.getString("pay_uqNum"));
//                     payDTO.setPay_method(rs.getString("pay_method"));
////                     payDTO.setPay_date(rs.getTimestamp("pay_date"));
//                     payDTO.setPay_status(rs.getString("pay_status"));
//                     payDTO.setPay_total(rs.getInt("pay_total"));
//                     
//                  } // 결제정보 저장완.
//                  
//               } // if() 끝
//               
//               System.out.println(" DAO : 해당 예약정보 가져오기 완료 ");
//               
//            } catch (Exception e) {
//               e.printStackTrace();
//            } finally {
//               closeDB();
//            }
//            // totalDTO 저장
//            adminTotalDTO.add(rezDTO);
//            adminTotalDTO.add(payDTO);
//            
//            return adminTotalDTO ; 
//         }   
//         // 주문번호에 해당하는 주문정보(리스트 전체)를 가져오는 동작을 처리   - getAdminReservationList(int rez_uqNum)
            
            
      

         

         
         
         
}