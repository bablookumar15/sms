package com.sms.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

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
	private String edugradeVal;
	private String schoolarea;
	private String numberofrooms;
	private String schoolwebsite;
	private String schooladdress;
	private String zone;
	private String state;
	private String city;
	private String zipcode;
	private String description;
	private String email;
	private String mobile;
	private String facilities;
	private String facilitiesVal;
	private String imgdata;
	private String createddate;
	private String updateddate;
	
	
	public String getEdugradeVal() {
		return edugradeVal;
	}
	public void setEdugradeVal(String edugradeVal) {
		this.edugradeVal = edugradeVal;
	}
	public String getFacilitiesVal() {
		return facilitiesVal;
	}
	public void setFacilitiesVal(String facilitiesVal) {
		this.facilitiesVal = facilitiesVal;
	}
	public String getCreateddate() {
		return createddate;
	}
	public void setCreateddate(String createddate) {
		this.createddate = createddate;
	}
	public String getUpdateddate() {
		return updateddate;
	}
	public void setUpdateddate(String updateddate) {
		this.updateddate = updateddate;
	}
	@Transient
	private MultipartFile schoolimg;
	
	public String getImgdata() {
		return imgdata;
	}
	public void setImgdata(String imgdata) {
		this.imgdata = imgdata;
	}
	public MultipartFile getSchoolimg() {
		return schoolimg;
	}
	public void setSchoolimg(MultipartFile schoolimg) {
		this.schoolimg = schoolimg;
	}
	private boolean active;
	
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}
	public String getFacilities() {
		return facilities;
	}
	public void setFacilities(String facilities) {
		this.facilities = facilities;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getZone() {
		return zone;
	}
	public void setZone(String zone) {
		this.zone = zone;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
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
	public String getNumberofrooms() {
		return numberofrooms;
	}
	public void setNumberofrooms(String numberofrooms) {
		this.numberofrooms = numberofrooms;
	}
	public String getSchoolwebsite() {
		return schoolwebsite;
	}
	public void setSchoolwebsite(String schoolwebsite) {
		this.schoolwebsite = schoolwebsite;
	}
	
	

}
