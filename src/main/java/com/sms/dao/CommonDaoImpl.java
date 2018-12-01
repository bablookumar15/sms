package com.sms.dao;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.sms.model.SchoolInfoBean;
import com.sms.model.StudentRegBean;
import com.sms.model.User;
import com.sms.util.Encrypt;

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
	

	@Override
	public List<StudentRegBean> getAllStudents(int userid, String flag) {
		String str = "SELECT s FROM StudentRegBean s, SchoolInfoBean sc WHERE s.schoolinfoid=sc.schoolinfoid AND sc.createdby= :createdby";
		if (flag.equalsIgnoreCase("new")) {
			str = str+" AND s.active ='"+false+"' AND accept='F'";
		}else if (flag.equalsIgnoreCase("enrolled")) {
			str = str+" AND s.active ='"+true+"' AND accept='Y'";
		}else if (flag.equalsIgnoreCase("deactive")) {
			str = str+" AND s.active ='"+false+"' AND accept='Y'";
		}else if (flag.equalsIgnoreCase("rejected")) {
			str = str+" AND s.active ='"+false+"' AND accept='N'";
		}
		Query query = getSession().createQuery(str);
		query.setParameter("createdby", userid);
		List<StudentRegBean> studentRegBeans = query.list();
		return studentRegBeans;
	}

	@Override
	public StudentRegBean getStudentFromId(int id) {
		Query query = getSession().createQuery("FROM StudentRegBean WHERE studentid=:studentid");
		query.setParameter("studentid", id);
		StudentRegBean bean = (StudentRegBean) query.uniqueResult();
		return bean;
	}

	@Override
	public List<StudentRegBean> getAllStudents(int userid) {
		Query query = getSession().createQuery("FROM StudentRegBean WHERE createdby=:createdby");
		query.setParameter("createdby", userid);
		List<StudentRegBean> studentRegBeans = query.list();
		return studentRegBeans;
	}

	@Override
	public User getUserById(int createdby) {
		Query query = getSession().createQuery("FROM User WHERE userid=:userid");
		query.setParameter("userid", createdby);
		User bean = (User) query.uniqueResult();
		return bean;
	}

	@Override
	public boolean studentStatus(int id, boolean status) {
		Query query = getSession().createQuery("UPDATE StudentRegBean SET  active =:active WHERE studentid =:studentid");
		query.setParameter("active", status);
		query.setParameter("studentid", id);
		int i = query.executeUpdate();
		if (i>0) {
			return true;
		}
		return false;
	}

	@Override
	public User getUserByEmail(String email) {
		Query query = getSession().createQuery("FROM User WHERE email=:email");
		query.setParameter("email", email);
		User bean = (User) query.uniqueResult();
		return bean;
	}

	@Override
	public void changePwd(String email, String pwd) {
		Query query = getSession().createQuery("UPDATE User SET password=:password WHERE email=:email");
		query.setParameter("password", Encrypt.encrypt(pwd));
		query.setParameter("email", email);
		query.executeUpdate();
	}

	@Override
	public List<SchoolInfoBean> searchSchool(String name_area) {
		String str = "FROM SchoolInfoBean";
		if (!name_area.isEmpty()) {
			str = str+" WHERE schoolname="+name_area+" OR schoolarea="+name_area+"";
		}
		Query query = getSession().createQuery(str);
		List<SchoolInfoBean> schoolInfoBeans = query.list();
		return schoolInfoBeans;
	}
	
}
