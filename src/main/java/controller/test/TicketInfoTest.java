package controller.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import model.ticket.TicketInfoBean;
import model.ticket.TicketInfoDAO;


@Controller
public class TicketInfoTest {

 @Autowired
 private TicketInfoDAO dao ;
 
 @ResponseBody  //@RestController可替代
 @RequestMapping("/test")
 public TicketInfoBean method() {
  System.out.println("test controller");  
  TicketInfoBean bean = dao.findByPrimaryKey(001);  
  return bean;
  
 } 
}