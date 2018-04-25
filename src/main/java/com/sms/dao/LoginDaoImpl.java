package com.sms.dao;

import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Repository;

import com.sms.model.LoginBean;
import com.sms.model.User;

@Repository("loginDao")
public class LoginDaoImpl extends AbstractDao<Integer, LoginBean> implements LoginDao{
	
	@Autowired 
	PasswordEncoder passwordEncoder;

	@Override
	public User checkLogin(LoginBean loginBean) {
		Query query = getSession().createSQLQuery("SELECT * FROM User WHERE email =:email && password =:password");
		query.setParameter("email", loginBean.getUsername());
		query.setParameter("password", passwordEncoder.encode(loginBean.getPassword()));
		User user = (User) query.uniqueResult();
		return user;
	}

}
