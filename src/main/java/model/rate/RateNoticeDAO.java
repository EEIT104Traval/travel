package model.rate;

import java.util.List;

public interface RateNoticeDAO {
	public abstract List<RateNoticeBean> findByAccountName(String accountName);

	public abstract List<RateNoticeBean> findAll();

	public abstract RateNoticeBean create(RateNoticeBean bean);
	
	public abstract RateBean findA(String accountName);
	
//	public abstract RateNoticeBean findB(String accountName);
	
	public abstract RateNoticeBean find(String accountName);

	public abstract RateNoticeBean update(String accountName, String currency, Double targetRate,java.util.Date deadline,java.sql.Timestamp registerDate);

	public abstract boolean remove(Integer serial);

}
