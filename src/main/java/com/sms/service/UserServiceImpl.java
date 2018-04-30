package com.sms.service;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sms.dao.UserDao;
import com.sms.model.SignupBean;
import com.sms.model.User;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDao userDao;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");

	@Override
	public void doSignup(SignupBean signupBean) {
		User user = new User();
		user.setEmail(signupBean.getEmail());
		user.setPassword(passwordEncoder.encode(signupBean.getPassword()));
		user.setFirstname(signupBean.getFirstname());
		user.setLastname(signupBean.getLastname());
		user.setMobile(signupBean.getMobile());
		user.setAddress(signupBean.getAddress());
		user.setCreateddate(format.format(new Date()));
		String role = signupBean.getRole();
		if (role.equalsIgnoreCase("1")) {
			user.setRole("ROLE_SCHOOL_ADMIN");
		}else if (role.equalsIgnoreCase("2")) {
			user.setRole("ROLE_PARENT");
		}
		userDao.saveUser(user);
	}

}
