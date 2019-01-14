package misc;

import java.util.Properties;

import javax.naming.NamingException;
import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jndi.JndiObjectFactoryBean;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;

import model.flight.AirlineCompareBean;
import model.flight.AirportCompareBean;
import model.flight.FlightOrderInfoBean;
import model.flight.FlightPassengerInfoBean;
import model.flight.FlightTicketBean;
import model.hotel.HotelBean;
import model.hotel.HotelOrderDetailsBean;
import model.hotel.RoomAvailableBean;
import model.hotel.RoomTypeBean;
import model.hotel.RoomTypePicBean;
import model.rate.RateBean;
import model.rate.RateNoticeBean;
import model.rate.Rate_JPYBean;
import model.rate.Rate_USDBean;
import model.ticket.TicketInfoBean;
import model.ticket.TicketOrderInfoBean;
import model.tour.GroupTourBean;
import model.tour.TourBatchBean;
import model.tour.TourMemberInfoBean;
import model.tour.TourOrderInfoBean;
import model.tour.TourPictureBean;
import model.tour.TourTagsBean;
import model.userInfo.UserInfoBean;

@Configuration
@ComponentScan(basePackages={"model"})
public class SpringJavaConfiguration {
	@Bean
	public DataSource dataSource() {
		try {
			JndiObjectFactoryBean bean = new JndiObjectFactoryBean();
			bean.setJndiName("java:comp/env/jdbc/travel");
			bean.setProxyInterface(DataSource.class);
			bean.afterPropertiesSet();
			return (DataSource) bean.getObject();
		} catch (IllegalArgumentException | NamingException e) {
			e.printStackTrace();
			throw new ExceptionInInitializerError(e);
		}
	}

	@Bean
	public SessionFactory sessionFactory() {
		LocalSessionFactoryBuilder builder = new LocalSessionFactoryBuilder(dataSource());
		builder.addAnnotatedClasses(UserInfoBean.class,GroupTourBean.class,TourBatchBean.class,TourTagsBean.class,
				TourMemberInfoBean.class,TourPictureBean.class, TicketInfoBean.class, TicketOrderInfoBean.class,
				HotelBean.class ,FlightOrderInfoBean.class,FlightPassengerInfoBean.class,FlightTicketBean.class,
				AirlineCompareBean.class,AirportCompareBean.class,
				RateBean.class,Rate_USDBean.class,Rate_JPYBean.class,RateNoticeBean.class, TourOrderInfoBean.class,
				RoomTypeBean.class, RoomTypePicBean.class, RoomAvailableBean.class, HotelOrderDetailsBean.class);


		Properties props = new Properties();
		props.setProperty("hibernate.dialect", "org.hibernate.dialect.SQLServerDialect");
//		props.setProperty("hibernate.show_sql", "true");
		props.setProperty("hibernate.current_session_context_class", "thread");
		builder.addProperties(props);

		return builder.buildSessionFactory();
	}
}
