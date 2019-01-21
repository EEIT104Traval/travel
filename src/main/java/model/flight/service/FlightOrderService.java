package model.flight.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.flight.FlightOrderInfoBean;
import model.flight.FlightOrderInfoDAO;
import model.flight.FlightPassengerInfoBean;
import model.flight.FlightPassengerInfoDAO;
import model.flight.FlightTicketBean;
import model.flight.FlightTicketDAO;
@Service
public class FlightOrderService {

	
	@Autowired
	FlightOrderInfoDAO FOIDAO;
	
	@Autowired
	FlightPassengerInfoDAO FPIDAO;
	
	@Autowired
	FlightTicketDAO FTDAO;
	
	public void createThreeTable(FlightOrderInfoBean FOIBean,List<FlightPassengerInfoBean> FPIBean,List<FlightTicketBean> FTbean) {
		
		
		FlightOrderInfoBean orderBean = FOIDAO.create(FOIBean);
		Integer orderNO = orderBean.getFlightOrderNO();
		for(int i =0;i<FPIBean.size();i++) {
			
			FPIBean.get(i).setFlightOrderNO(orderNO);;
			FPIDAO.create(FPIBean.get(i));
		}
		for(int i =0;i<FTbean.size();i++) {
			FTbean.get(i).setFlightOrderNo(orderNO);
			FTDAO.create(FTbean.get(i));
		}
		
		
		
	}
	
	
	
	
}
