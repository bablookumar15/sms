package com.sms.dao;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.sms.model.SchoolInfoBean;
import com.sms.model.StudentRegBean;

@Repository("commonDao")
public class CommonDaoImpl extends AbstractDao<Integer, Object> implements CommonDao{

	@Override
	public void doSubmitSchool(SchoolInfoBean schoolInfoBean) {
		saveOrUpdate(schoolInfoBean);
	}

	@Override
	public List<SchoolInfoBean> getSchoolList(boolean b) {
		String str = "FROM SchoolInfoBean";
		if (b) {
			str = str+" WHERE active="+b+"";
		}
		Query query = getSession().createQuery(str);
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

	@Override
	public boolean deleteSchool(int id) {
		Query query = getSession().createQuery("DELETE FROM SchoolInfoBean WHERE schoolinfoid =:schoolinfoid");
		query.setParameter("schoolinfoid", id);
		int i = query.executeUpdate();
		if (i>0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean schoolStatus(int id, boolean status) {
		Query query = getSession().createQuery("UPDATE SchoolInfoBean SET  active =:active WHERE schoolinfoid =:schoolinfoid");
		query.setParameter("active", status);
		query.setParameter("schoolinfoid", id);
		int i = query.executeUpdate();
		if (i>0) {
			return true;
		}
		return false;
	}

	@Override
	public void doStudentReg(StudentRegBean studentRegBean) {
		saveOrUpdate(studentRegBean);
	}

	@Override
	public SchoolInfoBean getSchoolInfoByUser(int userid) {
		Query query = getSession().createQuery("FROM SchoolInfoBean WHERE createdby =:createdby");
		query.setParameter("createdby", userid);
		SchoolInfoBean schoolInfoBean = (SchoolInfoBean) query.uniqueResult();
		return schoolInfoBean;
	}

	@Override
	public List<StudentRegBean> getAllApplication(int userid) {
		Query query = getSession().createQuery("SELECT s FROM StudentRegBean s, SchoolInfoBean sc WHERE s.schoolinfoid=sc.schoolinfoid AND sc.createdby= :createdby AND s.active =:active AND accept='F'");
		query.setParameter("createdby", userid);
		query.setParameter("active", false);
		List<StudentRegBean> studentRegBeans = query.list();
		return studentRegBeans;
	}

	@Override
	public boolean accept(int id, char flag) {
		String string = "UPDATE StudentRegBean SET accept =:accept"; 
		if (flag=='Y') {
			string = string+",active ='"+true+"'";
		}
		string = string+" WHERE studentid=:studentid";
		Query query = getSession().createQuery(string);
		query.setParameter("accept", flag);
		query.setParameter("studentid", id);
		int i = query.executeUpdate();
		if (i>0) {
			return true;
		}
		return false;
	}
}
