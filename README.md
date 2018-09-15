School Management System.

---SQL Scripts for Database---

----------------------------------------------
--insert system admin---

INSERT INTO tbluser(
            userid, email, password, firstname, lastname, mobile, address, 
            role, active, createddate)
    VALUES (0,'system@admin.com', 'LgXISfsYZ1ECckyIdMcdxg==', 'System Admin', 'System Admin', '1234567890', 'admin address', 
            'ROLE_SYSTEM_ADMIN', true, '04/05/2018');

------------------------------------------
CREATE SEQUENCE hibernate_sequence
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE hibernate_sequence
  OWNER TO postgres;
--------------------------------------------------

-- Table: tbluser

-- DROP TABLE tbluser;

CREATE TABLE tbluser
(
  userid integer NOT NULL,
  email character varying(50),
  password character varying(100),
  firstname character varying(50),
  lastname character varying(50),
  mobile character varying(10),
  address text,
  role character varying(20),
  active boolean,
  createddate character varying(10),
  updateddate character varying(10),
  CONSTRAINT user_pkey PRIMARY KEY (userid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE tbluser
  OWNER TO postgres;
--------------------------------------------------
-- Table: tblschoolinfo

-- DROP TABLE tblschoolinfo;

CREATE TABLE tblschoolinfo
(
  schoolinfoid integer NOT NULL,
  schoolname character varying(100),
  schoolid character varying(50),
  schoolwebsite character varying(50),
  eduboard character varying(50),
  edugrade character varying(250),
  numberofrooms character varying(10),
  schooladdress character varying(250),
  schoolarea character varying(15),
  description text,
  city character varying(30),
  state character varying(30),
  zone character varying(30),
  zipcode character varying(10),
  email character varying(30),
  mobile character varying(10),
  facilities character varying(250),
  active boolean,
  imgdata text,
  createddate character varying(10),
  updateddate character varying(10),
  facilitiesval character varying(250),
  edugradeval character varying(250),
  createdby integer,
  schoolname character varying(250),
  CONSTRAINT tblschoolinfo_pkey PRIMARY KEY (schoolinfoid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE tblschoolinfo
  OWNER TO postgres;
 ----------------------------------------------------------------
 ----------------------------------------------------------------
 -- Table: tblstudent

-- DROP TABLE tblstudent;

CREATE TABLE tblstudent
(
  studentid integer NOT NULL,
  name character varying(100),
  dob character varying(10),
  gender character varying(10),
  category character varying(10),
  bloodgrp character varying(5),
  edugrade character varying(20),
  mothername character varying(100),
  mqualification character varying(20),
  mqoccupation character varying(20),
  memail character varying(50),
  mmobile character varying(10),
  fathername character varying(100),
  fqualification character varying(20),
  fqoccupation character varying(20),
  femail character varying(50),
  fmobile character varying(10),
  address character varying(250),
  city character varying(30),
  state character varying(30),
  zipcode character varying(10),
  imgdata text,
  createddate character varying(20),
  active boolean,
  schoolinfoid integer,
  age integer,
  accept character(1),
  createdby integer,
  CONSTRAINT tblstudent_pkey PRIMARY KEY (studentid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE tblstudent
  OWNER TO postgres;
 