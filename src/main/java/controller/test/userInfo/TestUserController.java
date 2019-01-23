package controller.test.userInfo;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.WebApplicationContext;

import model.userInfo.UserInfoService;

@WebServlet("/TestUserController")
public class TestUserController extends HttpServlet {
	private UserInfoService userInfoService;
	@Override
	public void init() throws ServletException {
		ApplicationContext context = (ApplicationContext)
				this.getServletContext().getAttribute(WebApplicationContext.ROOT_WEB_APPLICATION_CONTEXT_ATTRIBUTE);
		userInfoService = (UserInfoService) context.getBean("userInfoService");
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
        String fileName=new String(("UserInfo "+ new SimpleDateFormat("yyyy-MM-dd").format(new Date())).getBytes(),"UTF-8");
		response.setHeader("Content-disposition", "attachment; filename=" + fileName + ".xls");
	    response.setContentType("application/binary;charset=UTF-8");
	    try{
	        ServletOutputStream out=response.getOutputStream();
	        String[] titles = { "國家", "名稱", "數量", "購買日期","價格" };
	      userInfoService.export(titles, out, new Integer(12));
	        System.out.println("有執行");
	    } catch(Exception e){
	        e.printStackTrace();
	    }
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
