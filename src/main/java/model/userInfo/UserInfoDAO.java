package model.userInfo;

import java.util.List;

public interface UserInfoDAO {
	
		public abstract UserInfoBean findByPrimaryKey(String accountName);

		public abstract List<UserInfoBean> findAll();

		public abstract UserInfoBean create(UserInfoBean bean);

		public abstract UserInfoBean update(byte[] password, String firstname, String lastname, 
				String identityNo, String email, java.util.Date birth, String sex, String phone,
				String address, String authority, String gorfb, String loginId,String accountName);

		public abstract boolean remove(String accountName);
		
		//--------------↓↓↓↓↓↓後台使用專區↓↓↓↓↓↓-------------
		public abstract List<UserInfoBean> findByaccountName(String accountName);
		
		public abstract List<UserInfoBean> findByphone (String phone);
}
