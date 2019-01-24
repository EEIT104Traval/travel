/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 * https://www.google.com/settings/security/lesssecureapps
 */

package other;

/**
 *
 * @author Naveen
 */
import java.util.Date;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
public class EmailSend {

    public static void main(String args[]){
        try{
            String host ="smtp.gmail.com" ;
            String user = "sherrysherry92@gmail.com";
            String pass = "jxrkaepvctpmffcs";
            String to = "sherrysherry92@gmail.com";
            String from = "TimeToTravel";
            String subject = "Time To Travel - 訂購明細";
//            String messageText = "您的訂單明細";
            boolean sessionDebug = false;

            Properties props = System.getProperties();

            props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.smtp.host", host);
            props.put("mail.smtp.port", "587");
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.starttls.required", "true");
            props.put("mail.smtp.ssl.trust", "smtp.gmail.com");

            java.security.Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
            Session mailSession = Session.getDefaultInstance(props, null);
            mailSession.setDebug(sessionDebug);
            Message msg = new MimeMessage(mailSession);
            msg.setFrom(new InternetAddress(from));
            InternetAddress[] address = {new InternetAddress(to)};
            msg.setRecipients(Message.RecipientType.TO, address);
            msg.setSubject(subject); msg.setSentDate(new Date());
//            msg.setText(messageText);
            
            String message = "<div style='font-family: Microsoft JhengHei'>"
            +"<h1>Time To Travel</h1>"
            +"<p>Hello！訂購人，</p>"
            +"<p>我們已收到您的訂單 #20190202001</p>"
            +"<br>"
            +"<b>訂單明細</b>"
            +"<p>訂單編號：#19010922153JV4S</p>"
            +"<p>訂單日期：2019-01-09 22:15:20 +0800</p>"
            +"<p>訂購人：XXX</p>"
            +"<br>"
            +"<p>飯店名稱： 紐約市中心希爾頓酒店 (New York Hilton Midtown) - 總統轉角套房</p>"
            +"<img alt='總統轉角套房'"
            + "src='https://secure3.hilton.com/resources/media/hi/NYCNHHH/en_US/img/hotel/roomtypeimages/main/HH_prescnr01_386x310_FitToBoxSmallDimension_Center.jpg' "
            + "style='width: auto;'"+ "'/>'"
            +"<p>地址：1335 Avenue of the Americas</p>"
            +"<p>日期：2019-02-02 ~ 2019-02-04 (共2晚)</p>"
            +"<p>總金額：NT$ 149,332</p>"
            +"<hr>"
            +"<p>感謝您的訂購！</p>"
            +"<a href='http://localhost:8080/Travel/voyage/index.jsp'>修改訂單</a>"
            +"</div>"
            +"<hr>"
            +"<div style='text-align: center'>"
            +"<p>Copyright © 1999-2019 Time To Travel All rights reserved<p>"
            +"</div>"
            +"<div style=\"color:red;\">BRIDGEYE</div>";
            msg.setContent(message, "text/html; charset=utf-8");
            
           Transport transport=mailSession.getTransport("smtp");
           transport.connect(host, user, pass);
           transport.sendMessage(msg, msg.getAllRecipients());
           transport.close();
           System.out.println("message send successfully");
        }catch(Exception ex)
        {
            System.out.println(ex);
        }

    }
}
