package model.rate;

import java.util.List;

public interface RateNoticeDAO {
	public abstract RateNoticeBean findByPrimaryKey(Integer serial);

	public abstract List<RateNoticeBean> findAll();

	public abstract RateNoticeBean create(RateNoticeBean bean);

	public abstract RateNoticeBean update(Integer serial,String username,String currency,Double targetRate);

	public abstract boolean remove(Integer serial);

}
