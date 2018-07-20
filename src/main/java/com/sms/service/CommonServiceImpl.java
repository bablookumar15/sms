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
	public List<StudentRegBean> getAllApplication(int userid) {
		return commonDao.getAllApplication(userid);
	}

}
