School Management System.

---SQL Scripts for Database---

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