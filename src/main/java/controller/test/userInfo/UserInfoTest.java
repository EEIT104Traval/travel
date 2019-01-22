package controller.test.userInfo;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import model.ticket.TicketInfoBean;
import model.userInfo.UserInfoBean;
import model.userInfo.UserInfoDAO;
import model.userInfo.UserInfoService;


@Controller
public class UserInfoTest {
	@Autowired
	ServletContext servletContext;
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
	 bean1.setRegisterDate(new Timestamp(System.currentTimeMillis()));
	 UserInfoBean bean2 = dao.create(bean1);
	 return bean2;
 }
 
// @ResponseBody
// @RequestMapping("/userInfoupdate")
//// @RequestMapping("/Travel/login")
// public UserInfoBean update() {
//	 UserInfoBean update = dao.update("David",123,"moon","star","A112233445","reese@lab.com",new java.util.Date(),"F","0912456456","台北市南港"
//			                           ,"Y001","C01","22345678",new java.util.Date());		  
//	 return update;	  		  
// } 
 
 @ResponseBody
 @RequestMapping("/userInforemove")
 public boolean remove() {
	 boolean bean3 = dao.remove("Kitty");   
	  return true;
 }
 
 @ResponseBody
 @RequestMapping("/userfound")
 public UserInfoBean findByAccountName(String user) {
	 UserInfoBean result = udao.findByAccountName("micky");
	 System.out.println(user);
		return result;
	}
 
 @ResponseBody
 @RequestMapping("/userphone")
 public UserInfoBean findByphone(String phone) {
	 
	 UserInfoBean result = dao.findByphone("0987654321");
	 System.out.println(phone);
		return result;
	}
 
// public boolean qupdate() {
//	 udao.orderModify();
//	 
//	 return false;
// }
 
 
 
// --------------------------------
//	@RequestMapping("???????")
//	public String UPrate() throws IOException {
//
//		File f = new File("桌面上檔案路徑");
//		BufferedReader br = new BufferedReader(new InputStreamReader(new FileInputStream(f), "UTF-8"));
//
//		br.readLine();
//
//		String xx = null;
//		while ((xx = br.readLine()) != null) {
//			你的bean bean = new Bean();
//			String[] x = xx.split((","));
//
//			bean.setTicketName(x[1]);
//			bean.setValidity(Integer.parseInt(x[2]));
//			bean.setAdultTicketPrice(Integer.parseInt(x[3]));
//			bean.setChildTicketPrice(Integer.parseInt(x[4]));
//			bean.setAdultTicketSellQ(Integer.parseInt(x[5]));
//			
//			TicketInfoBean bean2 = create(bean);
//			System.out.println("bean2" + bean2);
//		}
//		br.close();
//		return "上傳成功";
//	}
// 
 

 }

 
