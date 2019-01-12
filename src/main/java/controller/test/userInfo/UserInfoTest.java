package controller.test.userInfo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import model.userInfo.UserInfoBean;
import model.userInfo.UserInfoDAO;
import model.userInfo.UserInfoService;


@Controller
public class UserInfoTest {

 @Autowired
 private UserInfoDAO dao ;
 @Autowired
 private UserInfoService udao;
 
 @ResponseBody  //@RestController可替代
 @RequestMapping("/userInfoPK")
 public UserInfoBean method() {
  System.out.println("test controller");  
  UserInfoBean bean = dao.findByPrimaryKey("snoopy");   
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
	 bean1.setAccountName("Kitty2");
	 bean1.setPassword("ABC".getBytes());
	 bean1.setFirstname("sun");
	 bean1.setLastname("Reese");
	 bean1.setIdentityNo("A223456789");
	 bean1.setEmail("reese@lab.com");
	 bean1.setBirth(new java.util.Date(0));
	 bean1.setSex("M");
	 bean1.setPhone("0912123123");
	 bean1.setAddress("台北市松山");
	 bean1.setAuthority("Z001");
	 bean1.setGorfb("G");
	 bean1.setLoginId("Z02");
	 UserInfoBean bean2 = dao.create(bean1);
	 return bean2;
 }
 
 @ResponseBody
 @RequestMapping("/userInfoupdate")
 public UserInfoBean update() {
	 UserInfoBean update = dao.update(null,"moon","star","A112233445","reese@lab.com",new java.util.Date(),"F","0912456456","台北市南港"
			                           ,"Y001","Y01","Y02","Kitty2");		  
	 return update;	  		  
 } 
 
 @ResponseBody
 @RequestMapping("/userInforemove")
 public boolean remove() {
	 boolean bean3 = dao.remove("Kitty");   
	  return true;
 }
 
 @ResponseBody
 @RequestMapping("/userfound")
 public List<UserInfoBean> findByAccountName(String user) {
	 List<UserInfoBean> result = udao.findByAccountName("micky");
	 System.out.println(user);
		return result;
	}
 }

 
