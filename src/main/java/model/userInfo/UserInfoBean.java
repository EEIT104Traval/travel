package model.userInfo;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="UserInfo")
public class UserInfoBean {
	@Id
	private String accountName;
	private String password;
	private String firstname;
	private String lastname;
	private String identityNo;
	private String email;
	private java.util.Date birth;
	private String sex;
	private String phone;
	private String address;
	private String authority;
	private String gorfb;
	private String loginId;
	
	@Override
	public String toString() {
		return "UserInfoBean [accountName=" + accountName + ", password=" + password + ", firstname=" + firstname
				+ ", lastname=" + lastname + ", identityNo=" + identityNo + ", email=" + email + ", birth=" + birth
				+ ", sex=" + sex + ", phone=" + phone + ", address=" + address + ", authority=" + authority + ", gorfb="
				+ gorfb + ", loginId=" + loginId + "]";
	}
	public String getAccountName() {
		return accountName;
	
	}
	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getIdentityNo() {
		return identityNo;
	}
	public void setIdentityNo(String identityNo) {
		this.identityNo = identityNo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public java.util.Date getBirth() {
		return birth;
	}
	public void setBirth(java.util.Date birth) {
		this.birth = birth;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	public String getGorfb() {
		return gorfb;
	}
	public void setGorfb(String gorfb) {
		this.gorfb = gorfb;
	}
	public String getLoginId() {
		return loginId;
	}
	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}


}
