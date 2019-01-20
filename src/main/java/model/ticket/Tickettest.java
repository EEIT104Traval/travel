package model.ticket;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Tickettest {
	public static void main(String args[]) {
		  String host = "smtp.gmail.com";
		  int port = 587;
		  final String username = "gbs8377";
		  final String password = "G0988109735";//your password
		  final String objMail = "gbs8377@gmail.com";

		  Properties props = new Properties();
		  props.put("mail.smtp.auth", "true");
		  props.put("mail.smtp.starttls.enable", "true");
		  props.put("mail.smtp.host", host);
		  props.put("mail.smtp.port", port);
		  Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			  protected PasswordAuthentication getPasswordAuthentication() {
				  return new PasswordAuthentication(username,password);
			  }});

		  try {

		   Message message = new MimeMessage(session);
		   message.setFrom(new InternetAddress("gbs8377@gmail.com"));
		   message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(objMail));
		   message.setSubject("測試寄信.");
		   message.setText("Dear Levin, \n\n 測試 測試 測試 測試 測試 測試 email !");

		   Transport transport = session.getTransport("smtp");
		   transport.connect(host, port, username, password);

		   Transport.send(message);

		   System.out.println("寄送email結束.");

		  } catch (MessagingException e) {
		   throw new RuntimeException(e);
		  }
		 }
		}