package com.sms.dao;

import java.util.List;

import com.sms.model.SchoolInfoBean;
import com.sms.model.StudentRegBean;

public interface CommonDao {

	void doSubmitSchool(SchoolInfoBean schoolInfoBean);

	List<SchoolInfoBean> getSchoolList(boolean b);

	SchoolInfoBean loadSchool(int id);

	boolean deleteSchool(int id);

	boolean schoolStatus(int id, boolean status);

	void doStudentReg(StudentRegBean studentRegBean);

	SchoolInfoBean getSchoolInfoByUser(int userid);
}
