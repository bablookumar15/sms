package com.sms.dao;

import org.springframework.stereotype.Repository;

import com.sms.model.SchoolInfoBean;

@Repository("commonDao")
public class CommonDaoImpl extends AbstractDao<Integer, Object> implements CommonDao{

	@Override
	public void doSubmitSchool(SchoolInfoBean schoolInfoBean) {
		persist(schoolInfoBean);
	}

}
