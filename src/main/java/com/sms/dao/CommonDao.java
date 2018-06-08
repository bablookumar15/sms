package com.sms.dao;

import java.util.List;

import com.sms.model.SchoolInfoBean;

public interface CommonDao {

	void doSubmitSchool(SchoolInfoBean schoolInfoBean);

	List<SchoolInfoBean> getSchoolList();

	SchoolInfoBean loadSchool(int id);

}
