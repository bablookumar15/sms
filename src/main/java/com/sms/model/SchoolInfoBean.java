package com.sms.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tblschoolinfo")
public class SchoolInfoBean {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int schoolinfoid;
	private String schoolname;
	private String eduboard;
	private String schoolid;
	private String edugrade;
	private String schoolarea;
	private int numberofrooms;
	private String schoolwebsite;
	private String schooladdress;
	
	public String getSchooladdress() {
		return schooladdress;
	}
	public void setSchooladdress(String schooladdress) {
		this.schooladdress = schooladdress;
	}
	public int getSchoolinfoid() {
		return schoolinfoid;
	}
	public void setSchoolinfoid(int schoolinfoid) {
		this.schoolinfoid = schoolinfoid;
	}
	public String getSchoolname() {
		return schoolname;
	}
	public void setSchoolname(String schoolname) {
		this.schoolname = schoolname;
	}
	public String getEduboard() {
		return eduboard;
	}
	public void setEduboard(String eduboard) {
		this.eduboard = eduboard;
	}
	public String getSchoolid() {
		return schoolid;
	}
	public void setSchoolid(String schoolid) {
		this.schoolid = schoolid;
	}
	public String getEdugrade() {
		return edugrade;
	}
	public void setEdugrade(String edugrade) {
		this.edugrade = edugrade;
	}
	public String getSchoolarea() {
		return schoolarea;
	}
	public void setSchoolarea(String schoolarea) {
		this.schoolarea = schoolarea;
	}
	public int getNumberofrooms() {
		return numberofrooms;
	}
	public void setNumberofrooms(int numberofrooms) {
		this.numberofrooms = numberofrooms;
	}
	public String getSchoolwebsite() {
		return schoolwebsite;
	}
	public void setSchoolwebsite(String schoolwebsite) {
		this.schoolwebsite = schoolwebsite;
	}
	
	

}
