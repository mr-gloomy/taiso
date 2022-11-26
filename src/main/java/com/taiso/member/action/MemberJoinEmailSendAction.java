package com.taiso.member.action;

import java.io.PrintWriter;
import java.util.Properties;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.member.db.MemberDAO;
import com.taiso.member.db.MemberDTO;


public class MemberJoinEmailSendAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println(" M : MemberEmailSendAction_execute() 호출");
		
		HttpSession session = request.getSession();
		String mem_id = (String) session.getAttribute("mem_id");
	
		MemberDAO mDAO = new MemberDAO();
		MemberDTO mDTO = mDAO.getEmail(mem_id);
		String mem_email = mDTO.getMem_email();
		System.out.println(" M : 이메일 : " +mem_email);
		
		// 사용자 인증 이메일 발송 내용
		String host = "http://localhost:8088/project_taiso/";
		String from = "welcometaiso@gmail.com";
		String to = mem_email;
		System.out.println(to+"to");
		String subject = "타이소 회원가입 이메일 인증 메일입니다."; 
		String content = "링크에 접속해 이메일 인증을 진행해주세요." +
			"<a href='" + host + "MemberJoinEmailCheckAction.me?code=" + SHA256.getSHA256(to) + "'> 이메일 인증하기 </a>";
		
		// 이메일 전송 : SMTP 이용을 위함
		Properties p = new Properties();
		p.put("mail.smtp.user", from);
		p.put("mail.smtp.host", "smtp.googlemail.com"); // google SMTP 주소
		p.put("mail.smtp.port", "465");
		p.put("mail.smtp.starttls.enable", "true");
		p.put("mail.smtp.auth", "true");
		p.put("mail.smtp.debug", "true");
		p.put("mail.smtp.socketFactory.port", "465");
		p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		p.put("mail.smtp.socketFactory.fallback", "false");
		p.put("mail.smtp.ssl.protocols", "TLSv1.2"); // 추가된 코드
		p.put("mail.smtp.ssl.enable", "true");  // 추가된 코드

		try{
			Authenticator auth = new Gmail();
		    Session ses = Session.getInstance(p, auth);
		    ses.setDebug(true);
		    MimeMessage msg = new MimeMessage(ses); 
		    msg.setSubject(subject);						// 메일 제목
		    Address fromAddr = new InternetAddress(from); 	// 보내는 사람 정보
		    msg.setFrom(fromAddr);
		    Address toAddr = new InternetAddress(to);		// 받는 사람 정보
		    msg.addRecipient(Message.RecipientType.TO, toAddr);
		    msg.setContent(content, "text/html;charset=UTF-8");
		    Transport.send(msg); 							// 메세지 전송
		    
		}catch(Exception e){
			e.printStackTrace();
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('메일 전송 중 오류가 발생했습니다.');");
			out.println("history.back();"); 
			out.println("</script>");
			out.close();
			
			session.removeAttribute("mem_id");
			
		}
		
		
		// 페이지 이동(준비)
		ActionForward forward = new ActionForward();
		forward.setPath("/MemberJoinEmail.me");
		forward.setRedirect(false);
		
		return forward;
	}

}
