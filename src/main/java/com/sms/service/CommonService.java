package com.sms.service;

import java.util.List;

import com.sms.model.SchoolInfoBean;
import com.sms.model.StudentRegBean;

public interface CommonService {

	void doSubmitSchool(SchoolInfoBean schoolInfoBean);

	List<SchoolInfoBean> getSchoolList(boolean b);

	SchoolInfoBean loadSchool(int id);

	boolean deleteSchool(int id);

	void doEditSchool(SchoolInfoBean schoolInfoBean);

	boolean schoolStatus(int id, boolean status);

	void doStudentReg(StudentRegBean studentRegBean);

	SchoolInfoBean getSchoolInfoByUser(int userid);

	List<StudentRegBean> getAllApplication(int userid);

	boolean accept(int id, char flag);

}
