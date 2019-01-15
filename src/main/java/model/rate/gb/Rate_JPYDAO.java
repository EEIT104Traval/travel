package model.rate.gb;

import java.util.List;

import model.userInfo.UserInfoBean;

public interface Rate_JPYDAO {

	public abstract Rate_JPYBean findByPrimaryKey(java.util.Date updateTime);

	public abstract List<Rate_JPYBean> findAll();

	public abstract Rate_JPYBean create(Rate_JPYBean bean);

	public abstract Rate_JPYBean update(java.util.Date updateTime,String currency,Double cashBuy,
			Double cashSell,Double spotBuy,Double spotSell,String country);

	public abstract boolean remove(java.util.Date updateTime);
	
}
