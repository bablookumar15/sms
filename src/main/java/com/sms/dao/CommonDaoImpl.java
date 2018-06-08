package com.sms.dao;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.sms.model.SchoolInfoBean;

@Repository("commonDao")
public class CommonDaoImpl extends AbstractDao<Integer, Object> implements CommonDao{

	@Override
	public void doSubmitSchool(SchoolInfoBean schoolInfoBean) {
		persist(schoolInfoBean);
	}

	@Override
	public List<SchoolInfoBean> getSchoolList() {
		Query query = getSession().createQuery("FROM SchoolInfoBean");
		List<SchoolInfoBean> schoolInfoBeans = query.list();
		return schoolInfoBeans;
	}

	@Override
	public SchoolInfoBean loadSchool(int id) {
		Query query = getSession().createQuery("FROM SchoolInfoBean WHERE schoolinfoid =:schoolinfoid");
		query.setParameter("schoolinfoid", id);
		SchoolInfoBean schoolInfoBean = (SchoolInfoBean) query.uniqueResult();
		return schoolInfoBean;
	}

}
