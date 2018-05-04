School Management System.

---SQL Scripts for Database---

----------------------------------------------
--insert system admin---

INSERT INTO tbluser(
            userid, email, password, firstname, lastname, mobile, address, 
            role, active, createddate)
    VALUES (0,'systemadmin', 'systemadmin', 'System Admin', 'System Admin', '1234567890', 'admin address', 
            'ROLE_SYSTEM_ADMIN', 'Y', '04/05/2018');

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
  active character(1),
  createddate character varying(10),
  updateddate character varying(10),
  CONSTRAINT user_pkey PRIMARY KEY (userid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE tbluser
  OWNER TO postgres;