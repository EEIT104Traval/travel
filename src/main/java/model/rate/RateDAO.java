package model.rate;

import java.util.List;

public interface RateDAO {
	public abstract RateBean findByPrimaryKey(Integer serial);

	public abstract List<RateBean> findAll();

	public abstract RateBean create(RateBean bean);

	public abstract RateBean update(Integer serial,String currency,java.util.Date updateTime,Double cashBuy,
			Double cashSell,Double spotBuy,Double spotSell,String country);

	public abstract boolean remove(Integer serial);
	
}

