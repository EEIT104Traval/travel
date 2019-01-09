package controller.test.flight;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import model.flight.AirportCompareBean;
import model.flight.AirportCompareDAO;
import net.sf.json.JSONArray;

@Controller
public class InputTest {
	
	@Autowired
	AirportCompareDAO dao;
	@ResponseBody
	@RequestMapping("/select")
	public String select(HttpServletResponse response, ModelMap modelMap,
	HttpServletRequest request, HttpSession session, Model opusmodel)
	throws Exception {
	String name = request.getParameter("sc"); 
	List<AirportCompareBean> list = dao.findByAirportName(name);
	String ret = JSONArray.fromObject(list).toString();
	System.out.println("ret="+ret);
	//返回jsonArray数据
	return ret;
	}
}
