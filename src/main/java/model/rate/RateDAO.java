package model.rate;

import java.util.List;

public interface RateDAO {
	public abstract RateBean findByPrimaryKey(String currency);

	public abstract List<RateBean> findAll();

	public abstract RateBean create(RateBean bean);

	public abstract RateBean update(Byte[] flag,String currency,Double cashBuy,
			Double cashSell,Double spotBuy,Double spotSell,String country);

	public abstract boolean remove(String currency);
	
}

