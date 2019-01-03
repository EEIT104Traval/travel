package model.tour;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

@Entity
@Table(name="GroupTour")
public class GroupTourBean {
	@Id
	private String tourNo;	
	private String country;
	private String tourName;
	private String destination;
	private Integer tourDays;
	private Integer guaranteedCount;
	private Integer fullPeopleCount;
	private Integer clickCount;
	private String content;
	
	@Autowired
	public static SessionFactory sessionfactory;
	public static void main(String[] args) {
		try {			
			Session session = sessionfactory.getCurrentSession();
			Transaction trx = session.beginTransaction();
			
			//select
			GroupTourBean select = session.get(GroupTourBean.class,"1001");
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
	
	public String getTourNo() {
		return tourNo;
	}
	public void setTourNo(String tourNo) {
		this.tourNo = tourNo;
	}
	
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getTourName() {
		return tourName;
	}
	public void setTourName(String tourName) {
		this.tourName = tourName;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public Integer getTourDays() {
		return tourDays;
	}
	public void setTourDays(Integer tourDays) {
		this.tourDays = tourDays;
	}
	public Integer getGuaranteedCount() {
		return guaranteedCount;
	}
	public void setGuaranteedCount(Integer guaranteedCount) {
		this.guaranteedCount = guaranteedCount;
	}
	public Integer getFullPeopleCount() {
		return fullPeopleCount;
	}
	public void setFullPeopleCount(Integer fullPeopleCount) {
		this.fullPeopleCount = fullPeopleCount;
	}
	public Integer getClickCount() {
		return clickCount;
	}
	public void setClickCount(Integer clickCount) {
		this.clickCount = clickCount;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	@Override
	public String toString() {
		return "GroupTourBean [tourNo=" + tourNo + ", tag=" + ", country=" + country + ", tourName=" + tourName
				+ ", destination=" + destination + ", tourDays=" + tourDays + ", guaranteedCount=" + guaranteedCount
				+ ", fullPeopleCount=" + fullPeopleCount + ", clickCount=" + clickCount + ", content=" + content + "]";
	}
	
	
	
}
