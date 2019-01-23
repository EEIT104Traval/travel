package model.userInfo;

import java.util.List;

public interface UserInfoDAO {
	
		public abstract UserInfoBean findByPrimaryKey(String accountName);
		
		public abstract UserInfoBean findByLoginId(String loginId);
		
		public abstract List<UserInfoBean> findAll();

		public abstract UserInfoBean create(UserInfoBean bean);
		
		

		public abstract UserInfoBean update(String accountName,byte[] password, String firstname, String lastname, 
				String identityNo, String email, java.util.Date birth, String sex, String phone,
				String address, String authority, String gorfb, String loginId,java.sql.Timestamp registerDate);

		public abstract boolean remove(String accountName);
		
		//--------------↓↓↓↓↓↓後台使用專區↓↓↓↓↓↓-------------
		
		public abstract UserInfoBean findByphone (String phone);

		//public abstract UserInfoBean findByLoginId(String loginId);

}
