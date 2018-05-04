package com.sms.dao;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.sms.model.User;

@Repository("userDao")
public class UserDaoImpl extends AbstractDao<Integer, User> implements UserDao{

	@Override
	public void saveUser(User user) {
		persist(user);
	}

	@Override
	public boolean emailExist(String email) {
		Query query = getSession().createQuery("FROM User WHERE email =:email");
		query.setParameter("email", email);
		if (query.list().size() > 0) {
			return true;
		}
		return false;
	}

}
