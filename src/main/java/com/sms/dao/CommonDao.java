package com.sms.dao;

import java.util.List;

import com.sms.model.SchoolInfoBean;
import com.sms.model.StudentRegBean;
import com.sms.model.User;

public interface CommonDao {

	void doSubmitSchool(SchoolInfoBean schoolInfoBean);

	List<SchoolInfoBean> getSchoolList(boolean b);

	SchoolInfoBean loadSchool(int id);

	boolean deleteSchool(int id);

	boolean schoolStatus(int id, boolean status);

	void doStudentReg(StudentRegBean studentRegBean);

	SchoolInfoBean getSchoolInfoByUser(int userid);

	boolean accept(int id, char flag);

	List<StudentRegBean> getAllStudents(int userid, String flag);

	StudentRegBean getStudentFromId(int id);

	List<StudentRegBean> getAllStudents(int userid);

	User getUserById(int createdby);

	boolean studentStatus(int id, boolean status);

	User getUserByEmail(String email);

	void changePwd(String email, String pwd);

	List<SchoolInfoBean> searchSchool(String name_area, String standard, String facility);

	List<User> getSchoolAdminWithNoSchool();

	List<String> getAllZones();
	List<String> getAllDistricts();

	List<SchoolInfoBean> getSchoolByDistrict(List<String> districts);

	List<SchoolInfoBean> getSchoolByZone(List<String> zones);
}
