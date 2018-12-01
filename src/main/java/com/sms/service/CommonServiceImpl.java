package com.sms.service;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Base64Utils;
import org.springframework.web.multipart.MultipartFile;

import com.sms.dao.CommonDao;
import com.sms.model.SchoolInfoBean;
import com.sms.model.StudentRegBean;
import com.sms.model.User;

@Service("commonService")
@Transactional
public class CommonServiceImpl implements CommonService{
	
	@Autowired
	CommonDao commonDao;
	
	@Autowired
	SimpleDateFormat simpleDateFormat;

	@Override
	public void doSubmitSchool(SchoolInfoBean schoolInfoBean) {
		MultipartFile file = schoolInfoBean.getSchoolimg();
		if (!file.isEmpty()) {
			try {
				byte[] encodeBase64 = Base64Utils.encode(file.getBytes());
				String base64Encoded = new String(encodeBase64, "UTF-8");
				schoolInfoBean.setImgdata(base64Encoded);
				
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		schoolInfoBean.setCreateddate(simpleDateFormat.format(new Date()));
		commonDao.doSubmitSchool(schoolInfoBean);
	}
	
	@Override
	public void doEditSchool(SchoolInfoBean schoolInfoBean) {
		schoolInfoBean.setUpdateddate(simpleDateFormat.format(new Date()));
		commonDao.doSubmitSchool(schoolInfoBean);
	}

	@Override
	public List<SchoolInfoBean> getSchoolList(boolean b) {
		return commonDao.getSchoolList(b);
	}

	@Override
	public SchoolInfoBean loadSchool(int id) {
		return commonDao.loadSchool(id);
	}

	@Override
	public boolean deleteSchool(int id) {
		return commonDao.deleteSchool(id);
	}

	@Override
	public boolean schoolStatus(int id, boolean status) {
		return commonDao.schoolStatus(id, status);
	}

	@Override
	public void doStudentReg(StudentRegBean studentRegBean) {
		studentRegBean.setCreateddate(simpleDateFormat.format(new Date()));
		commonDao.doStudentReg(studentRegBean);
	}

	@Override
	public SchoolInfoBean getSchoolInfoByUser(int userid) {
		return commonDao.getSchoolInfoByUser(userid);
	}

	@Override
	public boolean accept(int id, char flag) {
		return commonDao.accept(id, flag);
	}

	@Override
	public List<StudentRegBean> getAllStudents(int userid, String flag) {
		return commonDao.getAllStudents(userid, flag);
	}

	@Override
	public StudentRegBean getStudentFromId(int id) {
		return commonDao.getStudentFromId(id);
	}

	@Override
	public List<StudentRegBean> getAllStudents(int userid) {
		return commonDao.getAllStudents(userid);
	}

	@Override
	public User getUserById(int createdby) {
		return commonDao.getUserById(createdby);
	}

	@Override
	public void doEditStudent(StudentRegBean studentRegBean) {
		studentRegBean.setUpdatedate(simpleDateFormat.format(new Date()));
		commonDao.doStudentReg(studentRegBean);
	}

	@Override
	public boolean studentStatus(int id, boolean status) {
		return commonDao.studentStatus(id,status);
	}

	@Override
	public User getUserByEmail(String email) {
		return commonDao.getUserByEmail(email);
	}

	@Override
	public void changePwd(String email, String pwd) {
		commonDao.changePwd(email, pwd);
	}

	@Override
	public List<SchoolInfoBean> searchSchool(String name_area) {
		return commonDao.searchSchool(name_area);
	}

}
