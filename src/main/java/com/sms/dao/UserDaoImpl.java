package com.sms.dao;

import org.springframework.stereotype.Repository;

import com.sms.model.User;

@Repository("userDao")
public class UserDaoImpl extends AbstractDao<Integer, User> implements UserDao{

	@Override
	public void saveUser(User user) {
		persist(user);
	}

}
