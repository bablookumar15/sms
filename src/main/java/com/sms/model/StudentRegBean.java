package com.sms.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "tblstudent")
public class StudentRegBean {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int studentid;
	private int schoolinfoid;
	private String name;
	private String dob;
	private String gender;
	private String category;
	private String bloodgrp;
	private String edugrade;
	private String mothername;
	private String mqualification;
	private String mqoccupation;
	private String memail;
	private String mmobile;
	private String fathername;
	private String fqualification;
	private String fqoccupation;
	private String femail;
	private String fmobile;
	private String address;
	private String city;
	private String state;
	private String zipcode;
	private String imgdata;
	@Transient
	private MultipartFile studimg;
	private String createddate;
	private boolean active;
	
	public int getSchoolinfoid() {
		return schoolinfoid;
	}
	public void setSchoolinfoid(int schoolinfoid) {
		this.schoolinfoid = schoolinfoid;
	}
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}
	public String getCreateddate() {
		return createddate;
	}
	public void setCreateddate(String createddate) {
		this.createddate = createddate;
	}
	public int getStudentid() {
		return studentid;
	}
	public void setStudentid(int studentid) {
		this.studentid = studentid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getBloodgrp() {
		return bloodgrp;
	}
	public void setBloodgrp(String bloodgrp) {
		this.bloodgrp = bloodgrp;
	}
	public String getEdugrade() {
		return edugrade;
	}
	public void setEdugrade(String edugrade) {
		this.edugrade = edugrade;
	}
	public String getMothername() {
		return mothername;
	}
	public void setMothername(String mothername) {
		this.mothername = mothername;
	}
	public String getMqualification() {
		return mqualification;
	}
	public void setMqualification(String mqualification) {
		this.mqualification = mqualification;
	}
	public String getMqoccupation() {
		return mqoccupation;
	}
	public void setMqoccupation(String mqoccupation) {
		this.mqoccupation = mqoccupation;
	}
	public String getMemail() {
		return memail;
	}
	public void setMemail(String memail) {
		this.memail = memail;
	}
	public String getMmobile() {
		return mmobile;
	}
	public void setMmobile(String mmobile) {
		this.mmobile = mmobile;
	}
	public String getFathername() {
		return fathername;
	}
	public void setFathername(String fathername) {
		this.fathername = fathername;
	}
	public String getFqualification() {
		return fqualification;
	}
	public void setFqualification(String fqualification) {
		this.fqualification = fqualification;
	}
	public String getFqoccupation() {
		return fqoccupation;
	}
	public void setFqoccupation(String fqoccupation) {
		this.fqoccupation = fqoccupation;
	}
	public String getFemail() {
		return femail;
	}
	public void setFemail(String femail) {
		this.femail = femail;
	}
	public String getFmobile() {
		return fmobile;
	}
	public void setFmobile(String fmobile) {
		this.fmobile = fmobile;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getImgdata() {
		return imgdata;
	}
	public void setImgdata(String imgdata) {
		this.imgdata = imgdata;
	}
	public MultipartFile getStudimg() {
		return studimg;
	}
	public void setStudimg(MultipartFile studimg) {
		this.studimg = studimg;
	}

}
