package com.sms.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tblstudent")
public class StudentRegBean {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int studentid;

}
