
package com.taiso.reservation.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.mysql.cj.protocol.Resultset;
import com.mysql.cj.x.protobuf.MysqlxDatatypes.Array;
import com.taiso.car.db.CarDTO;
import com.taiso.member.db.MemberDTO;
import com.taiso.payment.db.PaymentDTO;

public class ReservationDAO {

   public Timestamp getTimestamp(String str){
      return Timestamp.valueOf(str);
      }
   
   private Connection con = null;
   private PreparedStatement pstmt = null;
   private ResultSet rs = null;
   private String sql = "";

   // 디비를 연결해주는 메서드 (커넥션 풀)
   private Connection getConnection() throws Exception {

      // 1. 드라이버 로드 + 2. 디비 연결
      Context initCTX = new InitialContext();
      // 디비 연동 정보를 불러오기 (context.xml 정보)
      DataSource ds = (DataSource) initCTX.lookup("java:comp/env/jdbc/project_taiso");

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
         if (rs != null)
            rs.close(); // rs.close() :rs안에 정보가 있으면 연결을 끊어준다는 뜻
         // sql쿼리를 실행하면 rs가 not null
         if (pstmt != null)
            pstmt.close();
         if (con != null)
            con.close();

      } catch (SQLException e) {
         e.printStackTrace();
      }

   } // 자원해제 메서드 끝

   /**
    * 회원1명의 정보 가져오기 - getMemberInfo(mem_id)
    */
   public ArrayList getMemberInfo(String mem_id) {
     
     ArrayList totalDTO = new ArrayList();
      MemberDTO mDTO = null;
      ReservationDTO rezDTO = null;

      try {
         con = getConnection();
         sql = "select * from member where mem_id=?";
         pstmt = con.prepareStatement(sql);
         pstmt.setString(1, mem_id);
         rs = pstmt.executeQuery();

         if (rs.next()) {
            mDTO = new MemberDTO();
            
            // 특정 아이디에 해당하는 회원 정보 저장
            // DB -> DTO
            mDTO.setMem_id(mem_id);
            mDTO.setMem_name(rs.getString("mem_name"));
            mDTO.setMem_phone(rs.getString("mem_phone"));
            mDTO.setMem_birthday(rs.getString("mem_birthday"));
            mDTO.setMem_email(rs.getString("mem_email"));
            
         } // if
         
         sql = "select rezd.license_num, rezd.license_issueDate, rezd.license_type from member mem"
               + " join rez_driverlicense rezd"
               + " on mem.mem_id = rezd.mem_id"
               + " where mem.mem_id=?";
         pstmt = con.prepareStatement(sql);
         pstmt.setString(1, mem_id);
         rs = pstmt.executeQuery();
         
         if(rs.next()) {
            rezDTO = new ReservationDTO();
            rezDTO.setLicense_num(rs.getString(1));
            rezDTO.setLicense_issueDate(rs.getString(2));
            rezDTO.setLicense_type(rs.getString(3));
         
         }

         System.out.println(" DAO : 회원정보 가져오기 완료 ");

      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         closeDB();
      }
      
      totalDTO.add(mDTO);
      totalDTO.add(rezDTO);
      
      return totalDTO;
   } // 회원1명의 정보 가져오기 - getMemberInfo(mem_id)
   
   
   /**
    * 예약정보 저장 - resevationSave(ReservationDTO rezDTO, PaymentDTO payDTO)
    */

   public void reservationSave(ReservationDTO rezDTO, PaymentDTO payDTO) {

      int rez_uqNum = 0; // 예약 고유번호

      try {

         con = getConnection();

         // 예약 고유번호 계산하기
         sql = "select max(rez_uqNum) from rez_reservation";
         pstmt = con.prepareStatement(sql);
         rs = pstmt.executeQuery();
         if (rs.next()) {
            rez_uqNum = rs.getInt(1) + 1;
         }

         // 주문정보 저장
         sql = "insert into rez_reservation "
               + "(rez_uqNum,rez_rentalDate,rez_returnDate,rez_totalDate,rez_rentTime,rez_site,rez_status, "
               + "car_code,car_insurance,mem_id,license_num,car_name) " + "values(?,?,?,?,?,?,?,?,?,?,?,?)";

         PreparedStatement pstmt1 = con.prepareStatement(sql);
         pstmt1.setInt(1, rez_uqNum);
         pstmt1.setString(2, rezDTO.getRez_rentalDate());
         pstmt1.setString(3, rezDTO.getRez_returnDate());
         pstmt1.setString(4, rezDTO.getRez_totalDate());
         pstmt1.setString(5, rezDTO.getRez_rentTime());
         pstmt1.setString(6, rezDTO.getRez_site());
         pstmt1.setInt(7, 1);
         pstmt1.setInt(8, rezDTO.getCar_code());
         pstmt1.setString(9, rezDTO.getCar_insurance());
         pstmt1.setString(10, rezDTO.getMem_id());
         pstmt1.setString(11, rezDTO.getLicense_num());
         pstmt1.setString(12, rezDTO.getCar_name());
         pstmt1.executeUpdate();
         
         System.out.println(" 1) 예약정보 저장 완료");

         var chkLicense = rezDTO.getLicense_num();
         
         // 면허정보 기존 존재 여부 확인
         sql = "select license_num from rez_driverlicense where mem_id=?";
         PreparedStatement pstmt = con.prepareStatement(sql);
         pstmt.setString(1, rezDTO.getMem_id());
         rs = pstmt.executeQuery();
         
         if(!rs.next()) {
            // 면허 정보 저장
            sql = "insert into rez_driverlicense(license_num,mem_id,license_issueDate,license_type) "
                  + "values(?,?,?,?)";
            PreparedStatement pstmt2 = con.prepareStatement(sql);
            pstmt2.setString(1, rezDTO.getLicense_num());
            pstmt2.setString(2, rezDTO.getMem_id());
            pstmt2.setString(3, rezDTO.getLicense_issueDate());
            pstmt2.setString(4, rezDTO.getLicense_type());
            pstmt2.executeUpdate();
            System.out.println(" 2-1) 면허정보 저장 완료");
            
            
         } else {
            System.out.println(" 2-2) 이전에 입력한 정보 있으므로 면허정보 저장하지 않음");
         }
               
         sql = "insert into rez_payment (pay_uqNum, rez_uqNum, pay_total, pay_method, pay_status) values(?, ?, ?, ?, ?)";
         PreparedStatement pstmt3 = con.prepareStatement(sql);
         pstmt3.setString(1, payDTO.getPay_uqNum());
         pstmt3.setInt(2, rez_uqNum);
         pstmt3.setInt(3, payDTO.getPay_total());
         pstmt3.setString(4, payDTO.getPay_method());
         pstmt3.setString(5, payDTO.getPay_status());
         pstmt3.executeUpdate();

         System.out.println(" 3) 결제정보 저장 완료");
         
         // 차량 테이블에 렌트 시작2날짜, 반납일자 추가
         sql = "update car set rez_rentalDate=?, rez_returnDate=? where car_code=?";
         PreparedStatement pstmt4 = con.prepareStatement(sql);
         pstmt4.setString(1, rezDTO.getRez_rentalDate());
         pstmt4.setString(2, rezDTO.getRez_returnDate());
         pstmt4.setInt(3, rezDTO.getCar_code());
         pstmt4.executeUpdate();
         
         System.out.println(" 4) 차량 - 렌트 날짜 정보 저장 완료");
         
         // 예약취소테이블에 미리 아이디, 예약번호 저장해놓기
      } catch (Exception e) { 
         e.printStackTrace();
      } finally {
         closeDB();
      }

   } // 예약정보 저장 - resevationSave()

   
   
   /**
    * 예약 1개 정보 조회 - getResevationInfo(String mem_id, int rez_uqNum)
    */

   public ArrayList getReservationInfo(String mem_id, int rez_uqNum) {
      ArrayList totalDTO = new ArrayList();

      ReservationDTO rezDTO = null;
      PaymentDTO payDTO = null;
      MemberDTO mDTO = null;

      try {
         con = getConnection();
//         sql = "select * from rez_reservation where rez_uqNum=?";
         sql = "select * from rez_reservation rez inner join rez_driverlicense rezd"
               + " on rez.mem_id = rezd.mem_id where rez.mem_id=? and rez.rez_uqNum=?";
//          sql = "select * from rez_reservation rez join member mem on rez.mem_id = mem.mem_id where mem_id=?";
         pstmt = con.prepareStatement(sql);
         pstmt.setString(1, mem_id);
         pstmt.setInt(2, rez_uqNum);
         rs = pstmt.executeQuery();

         if (rs.next()) {
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
            rezDTO.setRez_status(rs.getInt("rez_status"));
            rezDTO.setLicense_num(rs.getString("license_num"));
            rezDTO.setLicense_issueDate(rs.getString("license_issueDate"));
            rezDTO.setLicense_type(rs.getString("license_type"));
         }

         // 예약 정보에 해당하는 결제정보 조회
         // sql - 결제정보 조회 동작

         sql = "select * from rez_payment pay join rez_reservation rez on pay.rez_uqNum = rez.rez_uqNum where rez.rez_uqNum=?";

         PreparedStatement pstmt2 = con.prepareStatement(sql);
         pstmt2.setInt(1, rez_uqNum);
         System.out.println(" 진짜이해가안되네" + rez_uqNum);
         ResultSet rs2 = pstmt2.executeQuery();

         if (rs2.next()) {
            payDTO = new PaymentDTO();
            // 예약 결제정보 찾음 -> 저장
            payDTO.setPay_uqNum(rs2.getString("pay_uqNum"));
            payDTO.setPay_method(rs2.getString("pay_method"));
            payDTO.setPay_date(rs2.getTimestamp("pay_date"));
            payDTO.setPay_status(rs2.getString("pay_status"));
            payDTO.setPay_total(rs2.getInt("pay_total"));

         } // if

         // 멤버 정보 저장
         sql = "select * from rez_reservation rez join member mem on rez.mem_id = mem.mem_id where rez.mem_id=?";

         PreparedStatement pstmt3 = con.prepareStatement(sql);
         pstmt3.setString(1, rezDTO.getMem_id());
         ResultSet rs3 = pstmt3.executeQuery();

         if (rs3.next()) {
            mDTO = new MemberDTO();
            mDTO.setMem_id(rezDTO.getMem_id());
            mDTO.setMem_name(rs3.getString("mem_name"));
            mDTO.setMem_phone(rs3.getString("mem_phone"));
            mDTO.setMem_birthday(rs3.getString("mem_birthday"));
            mDTO.setMem_pw(rs3.getString("mem_pw"));
         } // if

//         System.out.println(" DAO : " + rezDTO + payDTO); // *** 제대로 값이 들어갔는지 확인용. 나중에 삭제할 것
         System.out.println(" 젭알DAO : " + rezDTO);
         System.out.println(" 젭알DAO : " + payDTO);
         System.out.println(" 젭알DAO : 해당 예약정보 가져오기 완료 ");

      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         closeDB();
      }

      // totalDTO 저장
      totalDTO.add(rezDTO);
      totalDTO.add(payDTO);
      totalDTO.add(mDTO);

      return totalDTO;
   } // 예약 1개 정보 조회 - getResevationInfo(int rez_uqNum)

   
   
   /**
    * 예약+차 목록 조회 - getReservationList(String mem_id)
    */

   public ArrayList getReservationList(String mem_id, int startRow, int pageSize) {
      ArrayList reservationList = new ArrayList();

      try {
         con = getConnection();
         // sql - id값에 해당하는 예약 정보 조회
         sql = "select * from rez_reservation rez join member mem on rez.mem_id = mem.mem_id where rez.mem_id=? "
         		+ "order by rez.rez_uqNum desc limit ?,?";
         pstmt = con.prepareStatement(sql);
         pstmt.setString(1, mem_id);
         pstmt.setInt(2, startRow-1); // 시작행 - 1 
         pstmt.setInt(3, pageSize); // 개수 
         
         rs = pstmt.executeQuery();

         
         while (rs.next()) {
            // 예약 정보 저장
            // DB -> DTO -> List
            ReservationDTO rezDTO = new ReservationDTO();

            // 예약 정보
            rezDTO.setMem_id(rs.getString("mem_id"));
            rezDTO.setRez_uqNum(rs.getInt("rez_uqNum"));
            rezDTO.setRez_rentalDate(rs.getString("rez_rentalDate"));
            rezDTO.setRez_returnDate(rs.getString("rez_returnDate"));
            rezDTO.setRez_status(rs.getInt("rez_status"));
            rezDTO.setCar_code(rs.getInt("car_code"));
            rezDTO.setCar_name(rs.getString("car_name"));

            reservationList.add(rezDTO);
            System.out.println(" DAO : " + reservationList);

         } // while
            // DTO -> List

         System.out.println(" DAO : 차정보 + 예약정보 저장완료 ");

      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         closeDB();
      }

      return reservationList;
   } // 예약+ 차 목록 조회 - getResevationList(String mem_id)

   
   
   /**
    * 예약 상태 변경 - reservationCancelChange(ReservationDTO rezDTO)
    */

   // select ---> update

   public int reservationCancelChange(int rez_uqNum, String mem_id, String mem_pw) { 
      int result = 18;


      try {
         con = getConnection();
         // sql&pstmt // 셀렉트먼저 사용해서 해당 정보가 있는지 먼저 확인하기
         sql = "select mem_pw from member where mem_id=?";
         pstmt = con.prepareStatement(sql);
         pstmt.setString(1, mem_id);
         rs = pstmt.executeQuery();

         
         if (rs.next()) {
            if (mem_pw.equals(rs.getString(1))) { // dto(받은정보) rs(디비) 두개 동일하므로 비밀번호 확인이 끝났다.

         	   	 // 데이터 처리
                  sql = "update rez_reservation set rez_status=? where rez_uqNum=?";
                  PreparedStatement pstmt2 = con.prepareStatement(sql);
                  pstmt2.setInt(1, 0); // 0 : 예약취소 1: 예약완료
                  pstmt2.setInt(2, rez_uqNum);
                  
                  result = pstmt2.executeUpdate();
                  
                  // 결제정보 삭제하기
                  sql = "delete rezp from rez_payment rezp "
                        + "join rez_reservation rezr "
                        + "on rezp.rez_uqNum = rezr.rez_uqNum "
                        + "where rezr.rez_uqNum = ?";
                  PreparedStatement pstmt3 = con.prepareStatement(sql);
                  pstmt3.setInt(1, rez_uqNum);
                  pstmt3.executeUpdate();
                  System.out.println("@@@@@@@@@@@@@@@결제정보 삭제완료!");

             }
             else {
         	   result = 0;
             }
         }
          else {
            result = -1;
         }

         System.out.println(" DAO : 예약 상태 변경 완료(" + result + ")");

      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         closeDB();
      }

      return result;
   } // 예약 상태 변경 - resrvationCancelChange(ReservationDTO rezDTO)

      
      
      /**
       * 예약취소 정보 저장 - ReservationCancelSave( )
       */

      public void reservationCancelSave(ReservationDTO rezDTO, String mem_pw) {
    	  
    	  String pay_uqNum = null;

         try {

        	 con = getConnection();
             // sql&pstmt // 셀렉트먼저 사용해서 해당 정보가 있는지 먼저 확인하기
             sql = "select mem_pw from member where mem_id=?";
             pstmt = con.prepareStatement(sql);
             pstmt.setString(1, rezDTO.getMem_id());
             rs = pstmt.executeQuery();
             
             sql = "select pay_uqNum, pay_total from rez_payment where rez_uqNum=? ";
             PreparedStatement pstmt3 = con.prepareStatement(sql);
             pstmt3.setInt(1, rezDTO.getRez_uqNum());
             ResultSet rs3 = pstmt3.executeQuery();
             
             if(rs3.next()) {
            	 pay_uqNum = rs3.getString(1);
             }

            // 주문정보 저장
            
            if (rs.next()) {
                if (mem_pw.equals(rs.getString(1))) { 
                	sql = "insert into rez_cancellation(rez_uqNum,pay_uqNum,cancel_date,cancel_reason,cancel_commission) "
                			+ "values(?,?,now(),?,?)";
                	
                	PreparedStatement pstmt2 = con.prepareStatement(sql);
                	
                	pstmt2.setInt(1, rezDTO.getRez_uqNum());
                	pstmt2.setString(2, pay_uqNum);
                	pstmt2.setString(3, rezDTO.getCancel_reason());
                	pstmt2.setInt(4, rezDTO.getCancel_commission());
                	
                	pstmt2.executeUpdate();
                }
            }

             System.out.println(" DAO : 예약취소정보 저장완료 ");
          } catch (Exception e) {
             e.printStackTrace();
          } finally {
             closeDB();
          }

      } // 예약취소 정보 저장 - ReservationCancelSave(String mem_id)

   
      /**
       * 메일전숑 정보 조회 - getReservationMailInfo()
       */
      
      public ReservationDTO getReservationMailInfo(String pay_uqNum) {
         
         ReservationDTO rezDTO = null;
         try {
         con = getConnection();
         sql = "select * from rez_reservation rez where rez_uqNum=(select pay.rez_uqNum from rez_payment pay where pay.pay_uqNum=?)";
         pstmt = con.prepareStatement(sql);
         pstmt.setString(1, pay_uqNum);
         rs = pstmt.executeQuery();
         if(rs.next()) {
            rezDTO = new ReservationDTO();
            rezDTO.setRez_rentalDate(rs.getString("rez_rentalDate"));
            rezDTO.setRez_returnDate(rs.getString("rez_returnDate"));
            rezDTO.setRez_rentTime(rs.getString("rez_rentTime"));
            rezDTO.setRez_site(rs.getString("rez_Site"));
            rezDTO.setCar_name(rs.getString("car_name"));
         }
         System.out.println(" M : rezDTO : "+rezDTO);
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         closeDB();
      }
         return rezDTO;
      }
      

}
