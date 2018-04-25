package com.sms.dao;

import com.sms.model.LoginBean;
import com.sms.model.User;

public interface LoginDao {

	User checkLogin(LoginBean loginBean);

}
