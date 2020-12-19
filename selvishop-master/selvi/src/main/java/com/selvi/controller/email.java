package com.selvi.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.annotation.Resource;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import service.SampleService;
@Controller
public class email {

	
	 @Resource(name="SampleService")
	 private SampleService SampleService;
	 
	 @RequestMapping(value = "email", method = RequestMethod.POST)
	 @ResponseBody
	 public String email(String rndstr,String tomail) throws Exception{
		  
		 String state = "";
		 
		 String host     = "smtp.worksmobile.com";
		  final String user   = "help@supersell.kr";
		  final String password  = "tbvjtpf1022";

		  String to     = tomail;

		  
		  // Get the session object
		  Properties props = new Properties();
		  props.put("mail.transport.protocol", "smtp");
		 
		  props.put("mail.smtp.host", host);
		  props.put("mail.smtp.auth", true);
		  props.put("mail.smtp.port", "465");
		  props.put("mail.smtp.ssl.enable", "true"); 
		  props.put("mail.smtp.ssl.trust", "smtp.worksmobile.com");

		 
		 

		  Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
		   protected PasswordAuthentication getPasswordAuthentication() {
		    return new PasswordAuthentication(user, password);
		   }
		  });

		  // Compose the message
		  try {
			  session.setDebug(false);
		   MimeMessage message = new MimeMessage(session);
		   message.setFrom(new InternetAddress("help@selvi.kr"));
		   message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
		   
		   // Subject
		   message.setSubject(MimeUtility.encodeText("회원가입 인증 메일입니다.","UTF-8","B"));
		   
		   // Text
		   message.setContent("인증메일입니다.<br> 아래의 주소로  접속하시면 인증이 완료됩니다. <br><br> <a href='https://selvi.kr/m_login?pass="+rndstr+"'>selvi.kr/m_login?pass="+rndstr+"</a>", "text/html; charset=UTF-8");

		   // send the message
		   Transport.send(message);
		   System.out.println("message sent successfully...");
		   state = "success";

		  } catch (MessagingException e) {
		   e.printStackTrace();
		   state = "fail";
		   
		  }
		    return state;
		 }
	 
	 //아이디 찾는곳
	
	 public String id_reply(String id,String tomail) throws Exception{
		
		
		 String host     = "smtp.worksmobile.com";
		  final String user   = "help@supersell.kr";
		  final String password  = "tbvjtpf1022";

		  String to     = tomail;

		  
		  // Get the session object
		  Properties props = new Properties();
		  props.put("mail.transport.protocol", "smtp");

		  props.put("mail.smtp.host", host);
		  props.put("mail.smtp.auth", true);
		  props.put("mail.smtp.port", "465");
		  props.put("mail.smtp.ssl.enable", true); 
		  props.put("mail.smtp.ssl.trust", "smtp.worksmobile.com");
		  
		 

		  Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
		   protected PasswordAuthentication getPasswordAuthentication() {
		    return new PasswordAuthentication(user, password);
		   }
		  });

		  // Compose the message
		  try {
			  session.setDebug(false);
		   MimeMessage message = new MimeMessage(session);
		   message.setFrom(new InternetAddress("help@selvi.kr"));
		   message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
		   
		   // Subject
		   message.setSubject(MimeUtility.encodeText("고객님의 계정 정보 입니다.","UTF-8","B"));
		   
		   // Text
		   message.setContent("안녕하세요? selvi입니다 고객님의 아이디는 "+id+"입니다.", "text/html; charset=UTF-8");

		   // send the message
		   Transport.send(message);
		   System.out.println("message sent successfully...");
		   
		   return "success";

		  } catch (MessagingException e) {
			  
		     e.printStackTrace();
		     return "id_mail_fail";
		  }
		  
		 }
	 
	 
	 
	
	public String pass_reply(String pass, String tomail) throws Exception {

		String state = "";

		String host = "smtp.worksmobile.com";
		final String user = "help@supersell.kr";
		final String password = "tbvjtpf1022";

		String to = tomail;

		// Get the session object
		Properties props = new Properties();
		props.put("mail.transport.protocol", "smtp");

		props.put("mail.smtp.host", host);
		props.put("mail.smtp.auth", true);
		props.put("mail.smtp.port", "465");
		props.put("mail.smtp.ssl.enable", true);
		props.put("mail.smtp.ssl.trust", "smtp.worksmobile.com");

		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(user, password);
			}
		});

		// Compose the message
		try {
			session.setDebug(false);
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress("help@selvi.kr"));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

			// Subject
			message.setSubject(MimeUtility.encodeText("고객님의 계정 정보입니다.", "UTF-8", "B"));

			// Text
			message.setContent("안녕하세요? selvi입니다. 고객님의 임시 비밀번호는" + pass
					+ "입니다. 하단의 사이트로 접속하여 비밀번호를 변경 해 주시기 바랍니다.<br><br> <a href='https://selvi.kr/account_reply_passchange?temp_pass="
					+ pass + "'>http://codeauto.ml/account_reply_passchange</a>", "text/html; charset=UTF-8");

			// send the message
			Transport.send(message);
			System.out.println("message sent successfully...");

			return "success";

		} catch (MessagingException e) {
			e.printStackTrace();

			return "pass_mail_fail";
		}

	}
	 
	 public void supersell_email(String word, String name, String email, String subject) throws Exception{
			
			
		 String host     = "smtp.worksmobile.com";
		  final String user   = "help@supersell.kr";
		  final String password  = "tbvjtpf1022";

		  

		  
		  // Get the session object
		  Properties props = new Properties();
		  props.put("mail.transport.protocol", "smtp");

		  props.put("mail.smtp.host", host);
		  props.put("mail.smtp.auth", true);
		  props.put("mail.smtp.port", "465");
		  props.put("mail.smtp.ssl.enable", "true"); 
		  props.put("mail.smtp.ssl.trust", "smtp.worksmobile.com");
		  
		 

		  Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
		   protected PasswordAuthentication getPasswordAuthentication() {
		    return new PasswordAuthentication(user, password);
		   }
		  });

		  // Compose the message
		  try {
			  session.setDebug(false);
		   MimeMessage message = new MimeMessage(session);
		   message.setFrom(new InternetAddress(user));
		   message.addRecipient(Message.RecipientType.TO, new InternetAddress("help@selvi.kr"));
		   
		   // Subject
		   message.setSubject(MimeUtility.encodeText(subject,"UTF-8","B"));
		   
		   // Text
		   message.setContent("보낸이 :"+name+"<br>"+word, "text/html; charset=UTF-8");

		   // send the message
		   Transport.send(message);
		   System.out.println("message sent successfully...");

		  } catch (MessagingException e) {
		   e.printStackTrace();
		  }
		  
		 }
	 
	 
	 
	 public String email_reply(String rndstr,String tomail) throws Exception{
		  
		 String state = "";
		 
		 String host     = "smtp.worksmobile.com";
		  final String user   = "help@supersell.kr";
		  final String password  = "tbvjtpf1022";

		  String to     = tomail;

		  
		  // Get the session object
		  Properties props = new Properties();
		  props.put("mail.transport.protocol", "smtp");
		 
		  props.put("mail.smtp.host", host);
		  props.put("mail.smtp.auth", true);
		  props.put("mail.smtp.port", "465");
		  props.put("mail.smtp.ssl.enable", "true"); 
		  props.put("mail.smtp.ssl.trust", "smtp.worksmobile.com");

		 
		 

		  Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
		   protected PasswordAuthentication getPasswordAuthentication() {
		    return new PasswordAuthentication(user, password);
		   }
		  });
    
		  // Compose the message
		  try {
			  session.setDebug(false);
		   MimeMessage message = new MimeMessage(session);
		   message.setFrom(new InternetAddress("help@selvi.kr"));
		   message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
		   
		   // Subject
		   message.setSubject(MimeUtility.encodeText("회원가입 인증 메일입니다.","UTF-8","B"));
		   
		   // Text
		   message.setContent("재인증메일입니다.<br> 아래의 주소로  접속하시면 인증이 완료됩니다. <br><br> <a href='https://selvi.kr/m_login?pass="+rndstr+"'>selvi.kr/m_login?pass="+rndstr+"</a>", "text/html; charset=UTF-8");

		   // send the message
		   Transport.send(message);
		   System.out.println("message sent successfully...");
		   state = "success";

		  } catch (MessagingException e) {
		   e.printStackTrace();
		   state = "fail";
		   
		  }
		    return state;
		 }
	 
	 
}
