package com.sms.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sms.dao.CommonDao;
import com.sms.model.SchoolInfoBean;

@Service("commonService")
@Transactional
public class CommonServiceImpl implements CommonService{
	
	@Autowired
	CommonDao commonDao;

	@Override
	public void doSubmitSchool(SchoolInfoBean schoolInfoBean) {
		commonDao.doSubmitSchool(schoolInfoBean);
	}

}
