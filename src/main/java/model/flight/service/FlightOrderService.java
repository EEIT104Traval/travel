package model.flight.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.flight.FlightOrderInfoBean;
import model.flight.FlightOrderInfoDAO;
import model.flight.FlightPassengerInfoBean;
import model.flight.FlightPassengerInfoDAO;
import model.flight.FlightTicketBean;
import model.flight.FlightTicketDAO;

@Service
//@Transactional
public class FlightOrderService {

	@Autowired
	FlightOrderInfoDAO FOIDAO;

	@Autowired
	FlightPassengerInfoDAO FPIDAO;

	@Autowired
	FlightTicketDAO FTDAO;

	public boolean createThreeTable(FlightOrderInfoBean FOIBean, List<FlightPassengerInfoBean> FPIBean,
			List<FlightTicketBean> FTbean) {

		if (FOIBean != null & FOIBean.getAccountName() != null) {
			FlightOrderInfoBean orderBean = FOIDAO.create(FOIBean);
			Integer orderNO = orderBean.getFlightOrderNO();
			if (FPIBean != null) {
				for (int i = 0; i < FPIBean.size(); i++) {

					FPIBean.get(i).setFlightOrderNO(orderNO);
					;
					FPIDAO.create(FPIBean.get(i));
					System.out.println("inserttopassager"+i+"次");
				}
			}
			if (FTbean != null) {
				for (int i = 0; i < FTbean.size(); i++) {
					FTbean.get(i).setFlightOrderNo(orderNO);
					FTDAO.create(FTbean.get(i));
				}
			}
			return true;
		}
		return false;
	}

}
