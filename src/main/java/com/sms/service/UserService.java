package com.sms.service;

import com.sms.model.SignupBean;

public interface UserService {

	void doSignup(SignupBean signupBean);

	boolean emailExist(String email);

}
