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
  schoolinfoid integer PRIMARY KEY NOT NULL,,
  schoolname character varying(100),
  schoolid character varying(50),
  schoolwebsite character varying(50),
  eduboard character varying(50),
  edugrade character varying(50),
  numberofrooms character varying(10),
  schooladdress character varying(250),
  schoolarea character varying(15),
  description text,
  city character varying(30),
  state character varying(30),
  zone character varying(30),
  zipcode character varying(10),
  imgdata text,
  createddate character varying(10),
  updateddate character varying(10),
  email character varying(30),
  facilities character varying(250),
  mobile character varying(10),
  active boolean
)
WITH (
  OIDS=FALSE
);
ALTER TABLE tblschoolinfo
  OWNER TO postgres;