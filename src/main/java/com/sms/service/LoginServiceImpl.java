package com.sms.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sms.dao.LoginDao;
import com.sms.model.LoginBean;
import com.sms.model.User;

@Service("loginService")
@Transactional
public class LoginServiceImpl implements LoginService{
	
	@Autowired
	LoginDao loginDao;

	@Override
	public User checkLogin(LoginBean loginBean) {
		return loginDao.checkLogin(loginBean);
	}

}
