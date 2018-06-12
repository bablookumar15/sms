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
		try {
			byte[] encodeBase64 = Base64Utils.encode(file.getBytes());
			String base64Encoded = new String(encodeBase64, "UTF-8");
			schoolInfoBean.setImgdata(base64Encoded);
			schoolInfoBean.setCreateddate(simpleDateFormat.format(new Date()));
		} catch (IOException e) {
			e.printStackTrace();
		}
		commonDao.doSubmitSchool(schoolInfoBean);
	}

	@Override
	public List<SchoolInfoBean> getSchoolList() {
		return commonDao.getSchoolList();
	}

	@Override
	public SchoolInfoBean loadSchool(int id) {
		return commonDao.loadSchool(id);
	}

	@Override
	public boolean deleteSchool(int id) {
		return commonDao.deleteSchool(id);
	}

	

}
