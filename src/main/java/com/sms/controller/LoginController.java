package com.sms.controller;

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
import com.sms.model.User;
import com.sms.service.LoginService;

@Controller
@RequestMapping("/")
public class LoginController {
	
	@Autowired
	LoginService loginService;
	
	

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
			if (user.getActive() =='Y') {
				HttpSession session = request.getSession();
				session.setAttribute("user", user);
				if (user.getRole().equalsIgnoreCase(SMSConstant.ROLE_PARENT)) {
					return "index";
				}else if (user.getRole().equalsIgnoreCase(SMSConstant.ROLE_SCHOOL_ADMIN)) {
					return "schoolAdmin";
				}else if (user.getRole().equalsIgnoreCase(SMSConstant.ROLE_SYSTEM_ADMIN)) {
					return "systemAdmin";
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
}
