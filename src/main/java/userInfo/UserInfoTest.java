package userInfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import model.userInfo.UserInfoBean;
import model.userInfo.UserInfoDAO;


@Controller
public class UserInfoTest {

 @Autowired
 private UserInfoDAO dao ;
 
 @ResponseBody  //@RestController可替代
 @RequestMapping("/test")
 public UserInfoBean method() {
  System.out.println("test controller");  
  UserInfoBean bean = dao.findByPrimaryKey("Micky");  
//  UserInfoBean bean = dao.remove();
  
  return bean;
  
 } 
}