package controller.test.hotel;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.WebApplicationContext;

import model.hotel.HotelBean;
import model.hotel.HotelService;

//@WebServlet("/voyage/hotels.controller")
public class HotelServlet extends HttpServlet {
	private static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
	private HotelService hotelService;

	@Override
	public void init() throws ServletException {
		ApplicationContext context = (ApplicationContext) this.getServletContext()
				.getAttribute(WebApplicationContext.ROOT_WEB_APPLICATION_CONTEXT_ATTRIBUTE);
		hotelService = (HotelService) context.getBean("hotelService");
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		// 接收資料
		String country = request.getParameter("country");
		System.out.println(country);

//		HotelBean hotelBean = new HotelBean();
//		hotelBean.setCountry(country);
//		List<HotelBean> hotelList = hotelService.searchByCountry(hotelBean);
//		System.out.println(hotelList.toString());

		// 驗證資料
		Map<String, String> errors = new HashMap<>();
		request.setAttribute("errors", errors);

//      轉換資料
//		int id = 0;
//		if(country != null && country.length() != 0) {
//			try {
//				id = Integer.parseInt(country);
//			} catch (NumberFormatException e) {
//				e.printStackTrace();
//				errors.put("id", "id must be an integer");
//			}
//		}

//		double price = 0;
//		if(temp2 != null && temp2.length() != 0) {
//			try {
//				price = Double.parseDouble(temp2);
//			} catch (NumberFormatException e) {
//				e.printStackTrace();
//				errors.put("price", "price must be a number");
//			}
//		}

//		java.util.Date make = null;
//		if(temp3 != null && temp3.length() != 0) {
//			try {
//				make = simpleDateFormat.parse(temp3);
//			} catch (ParseException e) {
//				e.printStackTrace();
//				errors.put("make", "make must be a date of YYYY-MM-DD");
//			}
//		}

//		int expire = 0;
//		if(temp4 != null && temp4.length() != 0) {
//			try {
//				expire = Integer.parseInt(temp4);
//			} catch (NumberFormatException e) {
//				e.printStackTrace();
//				errors.put("expire", "expire must be an integer");
//			}
//		}

		if (errors != null && !errors.isEmpty()) {
			request.getRequestDispatcher("/voyage/hotel/hotels.jsp").forward(request, response);
			return;
		}

		// 呼叫model
		HotelBean bean = new HotelBean();
		bean.setCountry(country);

		// 呼叫view
//		session.setAttribute("hotelList", hotelList);
		response.sendRedirect("hotel/hotelSearch.jsp");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req, resp);
	}
}
