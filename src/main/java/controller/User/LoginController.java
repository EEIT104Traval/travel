package controller.User;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import model.userInfo.UserInfoBean;
import model.userInfo.UserInfoService;

@Controller
@SessionAttributes(value="user")
public class LoginController {
	@Autowired
	private ApplicationContext context;
	@Autowired
	UserInfoService userInfoService;
	@RequestMapping(path = { "/secure/login.controller" })
	public String method(String name, String password, Model model) {
//接收資料
		Locale locale = LocaleContextHolder.getLocale();
// 驗證資料
		Map<String, String> errors = new HashMap<>();
		model.addAttribute("errors", errors);
		if (name == null || name.length() == 0) {
			errors.put("xxx1", context.getMessage("name",null, locale));
		}
		if (password == null || password.length() == 0) {
			errors.put("xxx2", context.getMessage("password",null, locale));
		}
		if (errors != null && !errors.isEmpty()) {
			return "login.error";
		}
// 呼叫model
		UserInfoBean bean = userInfoService.login(name, password);

// 呼叫view
		if (bean == null) {
			errors.put("xxx1", "Login failed");
			return "login.error";
		} else {
			model.addAttribute("user", bean);

			return "login.ok";
		}
	}
}