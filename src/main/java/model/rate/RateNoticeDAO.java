package model.rate;

import java.util.List;

public interface RateNoticeDAO {
	public abstract RateNoticeBean findByPrimaryKey(Integer serial);

	public abstract List<RateNoticeBean> findAll();

	public abstract RateNoticeBean create(RateNoticeBean bean);

	public abstract RateNoticeBean update(String accountName, String currency, Double targetRate,java.util.Date deadline,java.sql.Timestamp registerDate);

	public abstract boolean remove(Integer serial);

}
