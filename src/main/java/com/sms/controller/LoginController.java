package com.sms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sms.model.LoginBean;

@Controller
@RequestMapping("/")
public class LoginController {

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
	public String dologin() {
		return "login";
	}
}
