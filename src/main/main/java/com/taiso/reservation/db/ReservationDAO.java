package com.taiso.reservation.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.taiso.car.db.CarDTO;
import com.taiso.member.db.MemberDTO;
import com.taiso.payment.db.PaymentDTO;

public class ReservationDAO {

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
      System.out.println(" DAO : 디비연결 성공(커넥션 풀)");
      System.out.println(" DAO : con : " + con);
      
      return con;
   }

   
         // 자원해제 메서드 - closeDB()
         public void closeDB() {
            System.out.println(" DAO : 디비 연결자원 해제");
            
            try {
               if(rs != null) rs.close();        // rs.close() :rs안에 정보가 있으면 연결을 끊어준다는 뜻
                                          // sql쿼리를 실행하면 rs가 not null
               if(pstmt != null) pstmt.close();
               if(con != null) con.close();
               
            } catch (SQLException e) {
               e.printStackTrace();
            }
            
         } // 자원해제 메서드 끝
         
         
         
         
         
         /**
         * 회원1명의 정보 가져오기 - getMemberInfo(mem_id)
         */ 
         public MemberDTO getMemberInfo(String mem_id) {
            MemberDTO mDTO = null;
            
            try {
               con = getConnection();
               sql = "select * from member where mem_id=?";
               pstmt = con.prepareStatement(sql);
               pstmt.setString(1, mem_id);
               rs = pstmt.executeQuery();
               
               if(rs.next()) {
                  mDTO = new MemberDTO();
                  
                  // 특정 아이디에 해당하는 회원 정보 저장
                  // DB -> DTO 
                  mDTO.setMem_id(mem_id);
                  mDTO.setMem_name(rs.getString("mem_name"));
                  mDTO.setMem_phone(rs.getString("mem_phone"));
                  mDTO.setMem_birthday(rs.getString("mem_birthday"));
                  mDTO.setMem_email(rs.getString("mem_email"));
                  
               }// if
               
               System.out.println(" DAO : 회원정보 가져오기 완료 ");
               
            } catch (Exception e) {
               e.printStackTrace();
            } finally {
               closeDB();
            }
            
            return mDTO;
         } // 회원1명의 정보 가져오기 - getMemberInfo(mem_id)
         
         
         
         
         
            /**
            * 예약정보 저장 - resevationSave(ReservationDTO rezDTO, CarDTO carDTO)
            */ 
            
            public void resevationSave(ReservationDTO rezDTO, CarDTO carDTO) {
               
               Calendar cal = Calendar.getInstance();
               SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
               int rez_uqNum = 0; // 예약 고유번호
               carDTO = new CarDTO();
               MemberDTO mDTO = new MemberDTO();
               
               try {
                  
                  
                  con = getConnection();
                  
                  // 예약 고유번호 계산하기
                  sql = "select max(rez_uqNum) from rez_reservation";
                  pstmt = con.prepareStatement(sql);
                  rs = pstmt.executeQuery();
//                  if(rs.next()) {
//                     rez_uqNum = rs.getInt(1)+1;
//                  }
                  // 주문번호 생성
                  
                  
                  // 주문정보 저장
                  sql = "insert into rez_reservation(rez_uqNum,rez_rentalDate,rez_returnDate,rez_site,rez_totalDate,rez_status,car_code,car_insurance,license_num,mem_id) "
                        + "values(?,?,?,?,?,?,?,?,?,?)";               
                  pstmt = con.prepareStatement(sql);
                  
                  pstmt.setInt(1, Integer.parseInt(sdf.format(cal.getTime()))+rez_uqNum);
                  pstmt.setString(2, rezDTO.getRez_rentalDate());
                  pstmt.setString(3, rezDTO.getRez_returnDate());
                  pstmt.setString(4, rezDTO.getRez_site());
                  pstmt.setString(5, rezDTO.getRez_totalDate());
                  pstmt.setString(6, rezDTO.getRez_status());
                  pstmt.setInt(7, rezDTO.getCar_code());
                  pstmt.setString(8, rezDTO.getCar_insurance());
                  pstmt.setString(9, rezDTO.getLicense_num());
                  pstmt.setString(10, rezDTO.getMem_id());
                  
                  
                  
//                  sql = "insert into car(car_brand,car_name,car_location,car_price,car_op,car_category,car_file,car_year,car_fuel) "
//                        + "values(?,?,?,?,?,?,?,?,?)";
//                  PreparedStatement pstmt2 = con.prepareStatement(sql);
//                  
//                  pstmt.setString(1, carDTO.getCar_brand());
//                  pstmt.setString(2, carDTO.getCar_name());
//                  pstmt.setInt(3, carDTO.getCar_location());
//                  pstmt.setInt(4, carDTO.getCar_price());
//                  pstmt.setString(5, carDTO.getCar_op());
//                  pstmt.setString(6, carDTO.getCar_category());
//                  pstmt.setString(7, carDTO.getCar_file());
//                  pstmt.setInt(8, carDTO.getCar_year());
//                  pstmt.setString(9, carDTO.getCar_fuel());
                  
                  
                  sql = "insert into rez_driverlicense(license_issueDate,license_type,license_num,mem_id) "
                        + "values(?,?,?,?)";
                  PreparedStatement pstmt2 = con.prepareStatement(sql);
                  pstmt2.setString(1, rezDTO.getLicense_issueDate());
                  pstmt2.setString(2, rezDTO.getLicense_type());
                  pstmt2.setString(3, rezDTO.getLicense_num());
                  pstmt2.setString(4, rezDTO.getMem_id());
                  
                  
                  // 여기부터 추가
//                  sql = "insert into (rez_uqNum,rez_rentalDate,rez_returnDate,rez_site,rez_totalDate,rez_status,car_code,car_insurance,license_num "
//                        + "car_brand,car_name,car_location,car_price,car_op,car_category,car_file,car_year,car_fuel "
//                        + "license_issueDate,license_type,mem_num) "
//                        + "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
//                  
//                  pstmt = con.prepareStatement(sql);
//                  pstmt.setString(22, mDTO.get)
                  
                  
                  //4. sql쿼리 실행
                  int result = pstmt.executeUpdate();
                  pstmt2.executeUpdate();
                  
                  if(result>0) { // =  예약정보 저장 성공
                     System.out.println(" DAO : 예약정보 저장 성공 ");
                     rez_uqNum++;
                     System.out.println(" 예약번호 rez_uqNum++; 성공여부 판단용"); //**************************
                  }
                  
               } catch (Exception e) {
                  e.printStackTrace();
               } finally {
                  closeDB();
               }
               
            } // 예약정보 저장 - resevationSave()
         
      
         
         
         
         /**
         * 예약 1개 정보 조회 - getResevationInfo(int rez_uqNum)
         */ 
      
         public ArrayList getResevationInfo(int rez_uqNum) {
            ArrayList totalDTO = new ArrayList();
            
            ReservationDTO rezDTO = null;   
            PaymentDTO payDTO = null;
            
            try {
               con = getConnection();
               sql = "select * from rez_reservation where rez_uqNum=?";
//               sql = "select * from rez_reservation rez join member mem on rez.mem_id = mem.mem_id where mem_id=?";
               pstmt = con.prepareStatement(sql);
               pstmt.setInt(1, rez_uqNum);
               rs = pstmt.executeQuery();
               
               if(rs.next()) {
                  rezDTO = new ReservationDTO();
                  
                  // 예약 정보
                  rezDTO.setMem_id(rs.getString("mem_id"));
                  rezDTO.setRez_uqNum(rs.getInt("rez_uqNum"));
                  rezDTO.setRez_rentalDate(rs.getString("rez_rentalDate"));
                  rezDTO.setRez_returnDate(rs.getString("rez_returnDate"));
                  rezDTO.setRez_site(rs.getString("rez_site"));
                  rezDTO.setRez_totalDate(rs.getString("rez_totalDate"));
                  
                  // 면허 정보
                  rezDTO.setCar_code(rs.getInt("car_code"));
                  rezDTO.setCar_insurance(rs.getString("car_insurance"));
                  rezDTO.setRez_status(rs.getString("rez_status"));
                  
                  // 예약 취소 정보
                  rezDTO.setPay_uqNum(rs.getString("pay_uqNum"));
                  rezDTO.setCancel_date(rs.getTimestamp("cancel_date"));
                  rezDTO.setCancel_reason(rs.getString("cancel_reason"));
                  rezDTO.setCancel_commission(rs.getInt("cancel_commission"));
               }
                  
                  
                  // 예약 정보에 해당하는 결제정보 조회
                  // sql - 결제정보 조회 동작
               
                   sql="select * from rez_payment pay join rez_reservation rez on pay.rez_uqNum = rez.rez_uqNum where rez_uqNum=?";
                   PreparedStatement pstmt2 = con.prepareStatement(sql);
                      
                   
                     // 결제 정보
                     payDTO = new PaymentDTO();
                     pstmt2.setInt(1, rez_uqNum); //*****무슨 값이 들어가는 것인가..
                     ResultSet rs2 = pstmt2.executeQuery();
                     
                     
                     
                     if(rs2.next()) {
                        // 예약 결제정보 찾음 -> 저장
                     payDTO.setPay_uqNum(rs.getString("pay_uqNum"));
                     payDTO.setPay_method(rs.getString("pay_method"));
                  
                     payDTO.setPay_date(rs.getTimestamp("pay_date"));
                     payDTO.setPay_status(rs.getString("pay_status"));
                     payDTO.setPay_total(rs.getInt("pay_total"));
                      
                     
                     System.out.println(" DAO : "+ rezDTO + payDTO); //*** 제대로 값이 들어갔는지 확인용. 나중에 삭제할 것
                        
                  
               }// if
               
               System.out.println(" DAO : 해당 예약정보 가져오기 완료 ");
               
            } catch (Exception e) {
               e.printStackTrace();
            } finally {
               closeDB();
            }
            
            
            // totalDTO 저장
            totalDTO.add(rezDTO);
            totalDTO.add(payDTO);
            
            return totalDTO ;
         }
         
         
         
         // 예약 1개 정보 조회 - getResevation(String mem_id)
//         
//         /**
//          * 예약 1개 정보 조회 - getResevationInfo(int rez_uqNum)
//          */ 
//         
//         public ArrayList getResevationInfo(String mem_id) {
//            ArrayList totalDTO = new ArrayList();
//            
//            ReservationDTO rezDTO = null;   
//            PaymentDTO payDTO = null;
//            
//            try {
//               con = getConnection();
////               sql = "select * from rez_reservation where mem_id=?";
//               sql = "select * from rez_reservation rez join member mem on rez.mem_id = mem.mem_id where mem_id=?";
//               pstmt = con.prepareStatement(sql);
//               pstmt.setString(1, mem_id);
//               rs = pstmt.executeQuery();
//               
//               if(rs.next()) {
//                  rezDTO = new ReservationDTO();
//                  
//                  // 예약 정보
//                  rezDTO.setMem_id(rs.getString("mem_id"));
//                  rezDTO.setRez_uqNum(rs.getInt("rez_uqNum"));
//                  rezDTO.setRez_rentalDate(rs.getString("rez_rentalDate"));
//                  rezDTO.setRez_returnDate(rs.getString("rez_returnDate"));
//                  rezDTO.setRez_site(rs.getString("rez_site"));
//                  rezDTO.setRez_totalDate(rs.getString("rez_totalDate"));
//                  
//                  // 면허 정보
//                  rezDTO.setCar_code(rs.getInt("car_code"));
//                  rezDTO.setCar_insurance(rs.getString("car_insurance"));
//                  rezDTO.setRez_status(rs.getInt("rez_status"));
//                  
//                  // 예약 취소 정보
//                  rezDTO.setPay_uqNum(rs.getInt("pay_uqNum"));
//                  rezDTO.setCancel_date(rs.getTimestamp("cancel_date"));
//                  rezDTO.setCancel_reason(rs.getString("cancel_reason"));
//                  rezDTO.setCancel_commission(rs.getInt("cancel_commission"));
//               }
//               
//               
//               // 예약 정보에 해당하는 결제정보 조회
//               // sql - 결제정보 조회 동작
//               
//               sql="select * from rez_payment pay join rez_reservation rez on pay.rez_uqNum = rez.rez_uqNum where rez_uqNum=?";
//               PreparedStatement pstmt2 = con.prepareStatement(sql);
//               
//               // 결제 정보
//               payDTO.setRez_uqNum(rs.getInt("rez_uqNum"));
//               payDTO = new PaymentDTO();
//               pstmt2.setInt(1, rezDTO.getRez_uqNum()); //*****무슨 값이 들어가는 것인가..
//               ResultSet rs2 = pstmt2.executeQuery();
//               
//               
//               
//               if(rs2.next()) {
//                  // 예약 결제정보 찾음 -> 저장
//                  payDTO.setPay_uqNum(rs.getInt("pay_uqNum"));
//                  payDTO.setPay_method(rs.getString("pay_method"));
//                  
////                     payDTO.setPay_date(rs.getString("pay_date"));
//                  payDTO.setPay_status(rs.getString("pay_status"));
//                  payDTO.setPay_total(rs.getInt("pay_total"));
//                  
//                  
//                  System.out.println(" DAO : "+ rezDTO + payDTO); //*** 제대로 값이 들어갔는지 확인용. 나중에 삭제할 것
//                  
//                  
//               }// if
//               
//               System.out.println(" DAO : 해당 예약정보 가져오기 완료 ");
//               
//            } catch (Exception e) {
//               e.printStackTrace();
//            } finally {
//               closeDB();
//            }
//            
//            
//            // totalDTO 저장
//            totalDTO.add(rezDTO);
//            totalDTO.add(payDTO);
//            
//            return totalDTO ;
//         }
//         
//         // 예약 1개 정보 조회 - getResevation(String mem_id)
         
         
         
         
         
         /**
         * 예약+결제 목록 조회 - getResevationList(String mem_id)
         */ 
      
         public Vector getResevationList(String mem_id) {
            Vector totalList = new Vector();
            List reservationList = new ArrayList();
            List paymentList = new ArrayList();
            
            
            try {
               con = getConnection();
               // sql - id값에 해당하는 예약 정보 조회
               sql = "select * from rez_reservation rez join member mem on rez.mem_id = mem.mem_id where rez.mem_id=?";
               pstmt = con.prepareStatement(sql);
               pstmt.setString(1, mem_id);
               rs = pstmt.executeQuery();
               
               while(rs.next()) {
                  // 예약 정보 저장 
                  // DB -> DTO -> List
                  ReservationDTO rezDTO = new ReservationDTO();
                  
                  
                  // 예약 정보                  
                  rezDTO.setMem_id(rs.getString("mem_id"));
                  rezDTO.setRez_uqNum(rs.getInt("rez_uqNum"));
                  rezDTO.setRez_rentalDate(rs.getString("rez_rentalDate"));
                  rezDTO.setRez_returnDate(rs.getString("rez_returnDate"));
                  rezDTO.setRez_site(rs.getString("rez_site"));
                  rezDTO.setRez_totalDate(rs.getString("rez_totalDate"));
                  
                  // 면허 정보
                  rezDTO.setCar_code(rs.getInt("car_code"));
                  rezDTO.setCar_insurance(rs.getString("car_insurance"));
                  rezDTO.setRez_status(rs.getString("rez_status"));   
                  
                  // 예약 취소 정보
                  rezDTO.setPay_uqNum(rs.getString("pay_uqNum"));
                  rezDTO.setCancel_date(rs.getTimestamp("cancel_date"));
                  rezDTO.setCancel_reason(rs.getString("cancel_reason"));
                  rezDTO.setCancel_commission(rs.getInt("cancel_commission"));
                   
                  
                  
                  //DTO -> List
                  reservationList.add(rezDTO);
                  //System.out.println(" DAO : "+basketList);
                     
                  
                  
                  // 예약 정보에 해당하는 결제정보 조회
                  // DB -> DTO -> List
                  // sql - 결제정보 조회 동작
                   sql="select * from rez_payment where rez_uqNum=?";
                   PreparedStatement pstmt2 = con.prepareStatement(sql);
//                   pstmt2.setInt(1, rezDTO.rez_uqNum()); //*****무슨 값이 들어가는 것인가..
                   ResultSet rs2 = pstmt2.executeQuery();
                   
                   if(rs2.next()) {
                      // 예약 결제정보 찾음 -> 저장
                      PaymentDTO payDTO = new PaymentDTO();
                      
                     // 결제 정보
                     payDTO.setRez_uqNum(rs.getInt("rez_uqNum"));
                     payDTO.setPay_uqNum(rs.getString("pay_uqNum"));
                     payDTO.setPay_method(rs.getString("pay_method"));
                  
//                     payDTO.setPay_date(rs.getString("pay_date"));
                     payDTO.setPay_status(rs.getString("pay_status"));
                     payDTO.setPay_total(rs.getInt("pay_total"));
                      
                     //DTO -> List
                     paymentList.add(payDTO);
                     System.out.println(" DAO : "+ paymentList); //*** 제대로 값이 들어갔는지 확인용. 나중에 삭제할 것
                        

                   } // 결제정보 저장완료
                           
      
               }//while
               // totalList 저장
               totalList.add(reservationList);
               totalList.add(paymentList);
            
               
               System.out.println(" DAO : 결제정보 + 예약정보 저장완료 ");         
               
            } catch (Exception e) {
               e.printStackTrace();
            } finally {
               closeDB();
            }
            
            return totalList;
         } // 예약+결제 목록 조회 - getResevationList(String mem_id)
         
         
         
         
         
         /**
         * 예약 상태 변경 - reservationCancelChange(ReservationDTO rezDTO)
         */ 
         
         // select ---> update 
         
         public int reservationCancelChange(ReservationDTO rezDTO) { // rezDTO가 수정할 정보이므로
            int result = -1;
            
            MemberDTO mDTO = new MemberDTO();
            rezDTO = new ReservationDTO();
               
            try {
               con = getConnection();
               //3. sql&pstmt // 셀렉트먼저 사용해서 해당 정보가 있는지 먼저 확인하기
               sql = "select mem_pw from member where mem_id=?";
               pstmt = con.prepareStatement(sql);
               pstmt.setString(1, mDTO.getMem_id());
               rs = pstmt.executeQuery();
               
               
               
               
               if(rs.next()) {
                  if(mDTO.getMem_pw().equals(rs.getString("mem_pw"))) { //dto(받은정보) rs(디비) 두개 동일하므로 비밀번호 확인이 끝났다.
                     sql = "select rez_status from rez_reservation where rez_uqNum=?";
                        pstmt = con.prepareStatement(sql);
                        pstmt.setInt(1, rezDTO.getRez_uqNum());
                     
                        rs = pstmt.executeQuery();
                           
                        // 5. 데이터 처리
                        if(rs.next()) { 
                            sql = "update rez_reservation set rez_status=? where rez_uqNum=?";
                            pstmt = con.prepareStatement(sql);
                           pstmt.setInt(1, 1); // 0 : 예약완료  1: 예약취소
                           pstmt.setInt(2, rezDTO.getRez_uqNum());
                           
                           result = pstmt.executeUpdate();
                        } 
                           
               
                  }else {
                     result = 0;
                  }
                  
               }else {
                  result = -1;
               }
               
               System.out.println(" DAO : 예약 상태 변경 완료("+result+")");
               
               
            } catch (Exception e) {
               e.printStackTrace();
            }finally {
               closeDB();
            }
            
            
            return result;
         } // 예약 상태 변경 - resrvationCancelChange(ReservationDTO rezDTO)
         
         
         
         
         
         /**
          * 예약취소 정보 저장 - ResrvationCancelSave(String mem_id)
          */ 
         
         
         public void resevationCancelSave(String mem_id) {
               ReservationDTO rezDTO = new ReservationDTO();

            
            try {
               
               
               con = getConnection();
               
               
               // 주문정보 저장
               sql = "insert into rez_cancellation(rez_uqNum,pay_uqNum,cancel_date,cancel_date,cancel_commission) "
                     + "values(?,?,now(),?,?)";
               
               pstmt = con.prepareStatement(sql);
               
               
               pstmt.setInt(1, rezDTO.getRez_uqNum());
               pstmt.setString(2, rezDTO.getPay_uqNum());
               pstmt.setString(3, rezDTO.getCancel_reason());
               pstmt.setInt(4, rezDTO.getCancel_commission());
               
               pstmt.executeUpdate();
               
               
      
            } catch (Exception e) {
               e.printStackTrace();
            } finally {
               closeDB();
            }
            
         } // 예약취소 정보 저장 - ResrvationCancelSave(String mem_id)
         
      
         
         
         
         
         
         
         
         
         
}