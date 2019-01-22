package model.userInfo;

import javax.servlet.ServletOutputStream;

public interface UserService {
	public void export(String[] titles, ServletOutputStream out);
}
