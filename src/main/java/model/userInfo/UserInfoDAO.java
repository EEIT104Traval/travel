package model.userInfo;

import java.util.List;

public interface UserInfoDAO {
	
		public abstract UserInfoBean findByPrimaryKey(String accountName);

		public abstract List<UserInfoBean> findAll();

		public abstract UserInfoBean create(UserInfoBean bean);

		public abstract UserInfoBean update(byte[] password, String firstname, String lastname, 
				String identityNo, String email, java.util.Date birth, String sex, String phone,
				String address, String authority, String googleId, String facebookId,String accountName);

		public abstract boolean remove(String accountName);
		
//		public abstract boolean update(byte[] password, String firstname, String lastname, 
//				String identityNo, String email, java.util.Date birth, String sex, String phone,
//				String address, String authority, String googleId, String facebookId,String username);
//	
}
