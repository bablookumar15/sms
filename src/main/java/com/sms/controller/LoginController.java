package com.sms.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sms.constant.SMSConstant;
import com.sms.model.LoginBean;
import com.sms.model.SchoolInfoBean;
import com.sms.model.User;
import com.sms.service.CommonService;
import com.sms.service.LoginService;

@Controller
@RequestMapping("/")
public class LoginController {
	
	@Autowired
	LoginService loginService;
	
	@Autowired
	CommonService commonService;

	/*
	 * load login page
	 */
	@GetMapping("/login")
	public String login(ModelMap modelMap) {
		modelMap.addAttribute("loginBean", new LoginBean());
		return "login";
	}
	
	/*
	 * do login
	 */
	@PostMapping("/login.do")
	public String dologin(@ModelAttribute("loginBean") LoginBean loginBean, ModelMap modelMap, HttpServletRequest request) {
		User user = loginService.checkLogin(loginBean);
		if (user != null) {
			if (user.isActive()) {
				HttpSession session = request.getSession();
				session.setAttribute("user", user);
				if (user.getRole().equalsIgnoreCase(SMSConstant.ROLE_PARENT)) {
					return "index";
				}else if (user.getRole().equalsIgnoreCase(SMSConstant.ROLE_SCHOOL_ADMIN)) {
					return "schoolAdmin";
				}else if (user.getRole().equalsIgnoreCase(SMSConstant.ROLE_SYSTEM_ADMIN)) {
					return "redirect:/schools";
				}
			}else {
				modelMap.addAttribute("msg", "Your Account is not Activated.");
			}
		}else {
			modelMap.addAttribute("msg", "The Email or Password is Incorrect.");
		}
		return "login";
	}
	
	/*
	 * do logout
	 */
	@GetMapping("/logout")
	public String logout(ModelMap modelMap, HttpServletRequest request) {
		modelMap.remove("loginBean");
		HttpSession session = request.getSession(false);
		if (session != null) {
			session.removeAttribute("user");
			session.invalidate();
		}
		return "index";
	}
	
	/*
	 * load after login home page
	 */
	@GetMapping("/home")
	public String home(ModelMap modelMap, HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session != null) {
			User user = (User) session.getAttribute("user");
			if (user.getRole().equalsIgnoreCase(SMSConstant.ROLE_PARENT)) {
				return "index";
			}else if (user.getRole().equalsIgnoreCase(SMSConstant.ROLE_SCHOOL_ADMIN)) {
				return "schoolAdmin";
			}else if (user.getRole().equalsIgnoreCase(SMSConstant.ROLE_SYSTEM_ADMIN)) {
				return "redirect:/schools";
			}
		}
		return "index";
	}
	
	/*
	 * load schools after system admin login
	 */
	@GetMapping("/schools")
	public String schools(ModelMap modelMap, HttpServletRequest request) throws UnsupportedEncodingException {
		List<SchoolInfoBean> schoolInfoBeans = commonService.getSchoolList();
		modelMap.addAttribute("schools", schoolInfoBeans);
		return "systemAdmin";
	}
}
