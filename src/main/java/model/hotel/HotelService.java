package model.hotel;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
//@Service
//@Transactional
public class HotelService {
//	@Autowired
//	private _01HotelDAO hotelDAO;
//	
//	public List<_01HotelBean> select(_01HotelBean bean) {
//		List<_01HotelBean> result = null;
//		if(bean!=null && bean.getHotelNo()!=0) {
//			_01HotelBean temp = hotelDAO.findByPrimaryKey(bean.getHotelNo());
//			if(temp!=null) {
//				result = new ArrayList<_01HotelBean>();
//				result.add(temp);
//			}
//		} else {
//			result = hotelDAO.findAll(); 
//		}
//		return result;
//	}
//	public _01HotelBean insert(_01HotelBean bean) {
//		_01HotelBean result = null;
//		if(bean!=null) {
//			result = hotelDAO.create(bean);
//		}
//		return result;
//	}
//	public _01HotelBean update(_01HotelBean bean) {
//		_01HotelBean result = null;
//		if(bean!=null) {
//			result = hotelDAO.update(bean.getHotelNo(), bean.getHotelName(), bean.getAddress(),
//					bean.getPhone(), bean.getEmail(), bean.getTotalroom());
//		}
//		return result;
//	}
//	public boolean delete(_01HotelBean bean) {
//		boolean result = false;
//		if(bean!=null) {
//			result = hotelDAO.remove(bean.getHotelNo());
//		}
//		return result;
//	}
}
