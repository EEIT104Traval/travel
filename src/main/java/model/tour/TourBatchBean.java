package model.tour;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.mapping.Set;
import org.springframework.beans.factory.annotation.Autowired;

@Entity
@Table(name="TourBatch")
public class TourBatchBean {
	@Autowired
	public static SessionFactory sessionfactory;
	public static void main(String[] args) {
		try {			
			Session session = sessionfactory.getCurrentSession();
			Transaction trx = session.beginTransaction();
			
			//select
			TourBatchBean select = session.get(TourBatchBean.class,"1001");
			System.out.println("select= "+select);
			
//			Set<EmpBean> s2 = select.emps;
//			System.out.println("s2="+s2);
			//insert
//			Deptbean insert = new Deptbean();
//			insert.setDeptid(101);
//			insert.setDeptname("878787");
//			session.save(insert);
//			System.out.println("insert= "+insert);
			
			//update
//			Deptbean update = session.get(Deptbean.class,101);			
//			update.setDeptname("787878");
//			System.out.println("update= "+update);
			
			//delete
//			Deptbean delete = session.get(Deptbean.class,501);
//			session.delete(delete);
//			Set<EmpBean> empdelete = delete.emps;
//			System.out.println("delete= "+delete);
//			System.out.println("empdelete= "+empdelete);
			
			
			trx.commit();
			session.close();
		} finally {
//			HibernateUtil.closeSessionFactory();
		}
		
	}
	
	@Id
	private Integer serialNo;
	private String tourNo;
	private Date date;
	private Integer peopleCount;
	private Integer price_adult;
	private Integer price_child;
	private Integer price_baby;
	private Integer discount;
	private String airline_go;
	private String distination_go;
	private String airline_back;
	private String distination_back;
	private String content;
	
	public Integer getSerialNo() {
		return serialNo;
	}
	public void setSerialNo(Integer serialNo) {
		this.serialNo = serialNo;
	}
	public String getTourNo() {
		return tourNo;
	}
	public void setTourNo(String tourNo) {
		this.tourNo = tourNo;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Integer getPeopleCount() {
		return peopleCount;
	}
	public void setPeopleCount(Integer peopleCount) {
		this.peopleCount = peopleCount;
	}
	public Integer getPrice_adult() {
		return price_adult;
	}
	public void setPrice_adult(Integer price_adult) {
		this.price_adult = price_adult;
	}
	public Integer getPrice_child() {
		return price_child;
	}
	public void setPrice_child(Integer price_child) {
		this.price_child = price_child;
	}
	public Integer getPrice_baby() {
		return price_baby;
	}
	public void setPrice_baby(Integer price_baby) {
		this.price_baby = price_baby;
	}
	public Integer getDiscount() {
		return discount;
	}
	public void setDiscount(Integer discount) {
		this.discount = discount;
	}
	public String getAirline_go() {
		return airline_go;
	}
	public void setAirline_go(String airline_go) {
		this.airline_go = airline_go;
	}
	public String getDistination_go() {
		return distination_go;
	}
	public void setDistination_go(String distination_go) {
		this.distination_go = distination_go;
	}
	public String getAirline_back() {
		return airline_back;
	}
	public void setAirline_back(String airline_back) {
		this.airline_back = airline_back;
	}
	public String getDistination_back() {
		return distination_back;
	}
	public void setDistination_back(String distination_back) {
		this.distination_back = distination_back;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Override
	public String toString() {
		return "TourBatchBean [ tourNo=" + tourNo + ", date=" + date + ", peopleCount="
				+ peopleCount + ", price_adult=" + price_adult + ", price_child=" + price_child + ", price_baby="
				+ price_baby + ", discount=" + discount + ", airline_go=" + airline_go + ", distination_go="
				+ distination_go + ", airline_back=" + airline_back + ", distination_back=" + distination_back
				+ ", content=" + content + "]";
	}
	
	
	
}
