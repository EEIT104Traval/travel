package model.hotel;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

@Service
@Transactional
public class RoomAvailableService {

	@Autowired
	private RoomAvailableDAO roomAvailableDAO = null;
	
	public List<RoomAvailableBean> searchByDate(java.util.Date date) {
		List<RoomAvailableBean> result = null;
		if (!StringUtils.isEmpty(date)) {
			List<RoomAvailableBean> tib = roomAvailableDAO.searchByDate(date);
			if (tib != null) {
				result = new ArrayList<RoomAvailableBean>();
				result.addAll(tib);
			}
		} else {
			result = roomAvailableDAO.findAll();
		}
		return result;
	}
	
	
	

}
