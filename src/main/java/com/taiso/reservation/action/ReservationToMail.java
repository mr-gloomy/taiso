package com.taiso.reservation.action;

import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Properties;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.taiso.member.db.MemberDTO;
import com.taiso.reservation.db.ReservationDAO;
import com.taiso.reservation.db.ReservationDTO;

public class ReservationToMail implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : ReservationToMail_execute()");
		
		// 세션제어(id)(로그인 체크)
		HttpSession session = request.getSession();
		String mem_id = (String) session.getAttribute("mem_id");
		
		
		ActionForward forward = new ActionForward();
		if(mem_id == null) {
			forward.setPath("./MemberLogin.me");
			forward.setRedirect(true);
			return forward;			
		}
		
		ReservationDAO rezDAO = new ReservationDAO();
		
		// 1. 회원정보 가져오기
//		MemberDTO mDTO = rezDAO.getMemberInfo(mem_id);
		ArrayList totalDTO = rezDAO.getMemberInfo(mem_id);
		MemberDTO mDTO = (MemberDTO)totalDTO.get(0);
		String mem_name = mDTO.getMem_name();
		String mem_email = mDTO.getMem_email();
		String mem_phone = mDTO.getMem_phone();
		System.out.println(" mem_email : "+mem_email);
		
		// 2. 예약정보 가져오기
		String pay_uqNum = request.getParameter("pay_uqNum");
		System.out.println(" pay_uqNum : "+pay_uqNum);
		ReservationDTO rezDTO = rezDAO.getReservationMailInfo(pay_uqNum);
		String rental_date = rezDTO.getRez_rentalDate();
		String return_date = rezDTO.getRez_returnDate();
		String rentTime = rezDTO.getRez_rentTime();
		String rez_site = rezDTO.getRez_site();
		String car_name = rezDTO.getCar_name();
		System.out.println(rentTime);
		////////////////////// 메일전송 //////////////////////
		
//    	String recipient = mem_email;
        String code = "abc";
		
        // 발신자의 메일 계정, 비밀번호 설정
        final String user = "welcometaiso@gmail.com";
        final String password = "bqdcftxqqeauylik";		
		
        // Property에 SMTP 서버 정보 설정
        Properties props = System.getProperties();
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        // id, password 설정 필요함
        props.put("mail.smtp.auth", "true");
        // 포트 587
        props.put("mail.smtp.port", "587");
        // ssl 프로토콜 설정
        props.put("mail.smtp.ssl.protocols", "TLSv1.2");

        // ======== javax.mail.Session ========
        // user(메일주소), password를 설정한 후 세션 생성
        Session session2 = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
            protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(user, password);
            }
        });

        // ======== javax.mail.Message ========
        // 수신자, 내용, 제목의 메시지 작성
        MimeMessage message = new MimeMessage(session2);
        try {
            message.setFrom(new InternetAddress(user));
            // 수신자 메일 주소
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(mem_email));
            // Subject
            message.setSubject("[TAISO] 예약/결제 완료 안내");
            // Text
//            message.setText("타이소를 이용해주셔서 감사합니다. ㅇㅇ님의 예약 내역을 알려드립니다.["+code+"]");
//            message.setContent("<h1>타이소를 이용해주셔서 감사합니다.</h1><h2>ㅇㅇ님의 예약 내역을 알려드립니다.</h2><br>["+code+"]", "text/html;charset=euc-kr");
            message.setContent("<h2>"+mem_name+"님, TAISO를 이용해주셔서 감사합니다.</h2>"
            		+ "<table><tr><th colspan=\"8\" align=\"left\">"
            		+ "<h3>주문 상세내역</h3></th></tr>"
            		+ "<tr><th>상품명</th><td>"+car_name+"</td></tr>"
    				+ "<tr><th>대여일시</th><td>"+rental_date+"&nbsp;"+rentTime+"</td></tr>"
					+ "<tr><th>반납일시</th><td>"+return_date+"&nbsp;"+rentTime+"</td></tr>", "text/html;charset=euc-kr");
//            message.setContent("<h2>타이소를 이용해주셔서 감사합니다. "+mem_id+"님의 예약 내역을 알려드립니다.", "text/html;charset=euc-kr");
            
            // ======== javax.mail.Message ========
            // 작성한 메시지 전송
            Transport.send(message);
            System.out.println(" 메일 발송 완료");
            
    		response.setContentType("text/html; charset=UTF-8");
    		PrintWriter out = response.getWriter();
			out.print("<script>");
			out.print("alert(' 메일이 발송되었습니다.');");
			out.print("history.back();");
//			out.print("location.href='./ReservationList.rez?mem_id="+mem_id+"';");
			out.print("</script>");
			out.close();

        } catch (AddressException e) {
            e.printStackTrace();
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        
//		페이지 이동
        forward.setPath("./ReservationList.rez?mem_id="+mem_id);
        forward.setRedirect(true);
        return forward;
	}

}
