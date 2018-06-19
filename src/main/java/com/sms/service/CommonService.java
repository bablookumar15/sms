package com.sms.service;

import java.util.List;

import com.sms.model.SchoolInfoBean;

public interface CommonService {

	void doSubmitSchool(SchoolInfoBean schoolInfoBean);

	List<SchoolInfoBean> getSchoolList();

	SchoolInfoBean loadSchool(int id);

	boolean deleteSchool(int id);

	void doEditSchool(SchoolInfoBean schoolInfoBean);

}
