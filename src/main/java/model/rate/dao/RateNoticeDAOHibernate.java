package model.rate.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.rate.RateBean;
import model.rate.RateNoticeBean;
import model.rate.RateNoticeDAO;
import model.ticket.TicketInfoBean;
import model.userInfo.UserInfoBean;

	@Repository
	public class RateNoticeDAOHibernate implements RateNoticeDAO{
			@Autowired
			private SessionFactory sessionFactory;
			
			public Session getSession() {
				return this.sessionFactory.getCurrentSession();
			}

	@Override
	public List<RateNoticeBean> findByAccountName(String accountName) {
		return this.getSession().createQuery("from RateNoticeBean where accountName='"+accountName+"'", RateNoticeBean.class).setMaxResults(50).list();
	}

	@Override
	public List<RateNoticeBean> findAll() {
		return this.getSession().createQuery("from RateNoticeBean", RateNoticeBean.class).setMaxResults(50).list();
	}

	@Override
	public RateNoticeBean create(RateNoticeBean bean) {
		if (bean != null) {
//			RateNoticeBean result = this.getSession().get(RateNoticeBean.class, bean.getSerial());
//			if (result == null) {
				this.getSession().save(bean);
				return bean;
//			}
		}
		return null;
	}

	@Override
	public RateNoticeBean update(String accountName, String currency, Double targetRate,java.util.Date deadline,java.sql.Timestamp registerDate) {
		RateNoticeBean result = this.getSession().get(RateNoticeBean.class, accountName);
		if (result != null) {
			result.setCurrency(currency);
			result.setTargetRate(targetRate);
			result.setDeadline(deadline);

			return result;
		}
		return null;
	}

	@Override
	public boolean remove(Integer serial) {
		RateNoticeBean result = this.getSession().get(RateNoticeBean.class, serial);
		if (result != null) {
			this.getSession().delete(result);
			return true;
		}
		
		return false;
	}
	
	public RateBean findA(String accountName) {
		String hql = "from RateBean where cashSell <=(select targetRate from RateNoticeBean where accountName=\'"+accountName+"\') and currency=(select currency from RateNoticeBean where accountName=\'"+accountName+"\') and updateTime = CONVERT(varchar(40), getdate()-1, 121)";
		System.out.println("查詢hql的accountName="+accountName);
		RateBean a= this.getSession().createQuery(hql,RateBean.class).uniqueResult();
//		System.out.println("有結果嗎?????="+a);
		return a;  
		
		
	}
//	public RateNoticeBean findB(String accountName) {
//	String hql = "select targetRate from RateNoticeBean where accountName=\'"+accountName+"\'";
//	return this.getSession().createQuery(hql,RateNoticeBean.class).uniqueResult();
//	}
	
	@Override
	public RateNoticeBean find(String accountName) {
		// TODO Auto-generated method stub
		return null;
	}

}
