package com.sms.dao;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.sms.model.LoginBean;
import com.sms.model.User;

@Repository("loginDao")
public class LoginDaoImpl extends AbstractDao<Integer, LoginBean> implements LoginDao{

	@Override
	public User checkLogin(LoginBean loginBean) {
		Query query = getSession().createQuery("FROM User WHERE email =:email AND password =:password");
		query.setParameter("email", loginBean.getUsername());
		query.setParameter("password", loginBean.getPassword());
		User user = (User) query.uniqueResult();
		return user;
	}

}
