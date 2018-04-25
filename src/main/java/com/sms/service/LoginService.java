package com.sms.service;

import com.sms.model.LoginBean;
import com.sms.model.User;

public interface LoginService {

	User checkLogin(LoginBean loginBean);

}
