package model.rate.gb;

import java.util.List;

public interface Rate_USDDAO {
	public abstract Rate_USDBean findByPrimaryKey(java.util.Date updateTime);

	public abstract List<Rate_USDBean> findAll();

	public abstract Rate_USDBean create(Rate_USDBean bean);

	public abstract Rate_USDBean update(java.util.Date updateTime,String currency,Double cashBuy,
			Double cashSell,Double spotBuy,Double spotSell,String country);

	public abstract boolean remove(java.util.Date updateTime);
	
}
