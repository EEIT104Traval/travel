package controller.test.userInfo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import model.tour.GroupTourBean;
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
  return bean;
 }
 @ResponseBody
  @RequestMapping("/userInfofindALL")
  public List<UserInfoBean> findAll() {
   List<UserInfoBean> all = dao.findAll();    
   return all;       
  }
 @ResponseBody
 @RequestMapping("/userInfocreate")
 public UserInfoBean create() {
	 UserInfoBean bean1 =new UserInfoBean();
	 bean1.setUsername("Kitty2");
//	 bean.setPassword(ABC);
	 bean1.setFirstname("sun");
	 bean1.setLastname("Reese");
	 bean1.setIdentityNo("A223456789");
	 bean1.setEmail("reese@lab.com");
	 bean1.setBirth(new java.util.Date(0));
	 bean1.setSex("M");
	 bean1.setPhone("0912123123");
	 bean1.setAddress("台北市松山");
	 bean1.setAuthority("Z001");
	 bean1.setGoogleId("Z01");
	 bean1.setFacebookId("Z02");
	 UserInfoBean bean2 = dao.create(bean1);
	 return bean2;
 }
 @ResponseBody
 @RequestMapping("/userInforemove")
 public boolean remove() {
	 boolean bean3 = dao.remove("Kitty");   
	  return true;
 }
 
}
 
