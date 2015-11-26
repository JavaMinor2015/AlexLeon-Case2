--------------------------------------------------------
--  File created - Thursday-November-26-2015   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence RDW_LOG_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "GMS"."RDW_LOG_SEQUENCE"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 20 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table CAR
--------------------------------------------------------

  CREATE TABLE "GMS"."CAR" 
   (	"ID" NUMBER(19,0), 
	"MODEL" VARCHAR2(255 BYTE), 
	"NUMBERPLATE" VARCHAR2(255 BYTE), 
	"TYPE" VARCHAR2(255 BYTE), 
	"DRIVER_ID" NUMBER(19,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DRIVER
--------------------------------------------------------

  CREATE TABLE "GMS"."DRIVER" 
   (	"ID" NUMBER(19,0), 
	"CITY" VARCHAR2(255 BYTE), 
	"EMAIL" VARCHAR2(255 BYTE), 
	"FIRSTNAME" VARCHAR2(255 BYTE), 
	"INSERTION" VARCHAR2(255 BYTE), 
	"LASTNAME" VARCHAR2(255 BYTE), 
	"PHONE" VARCHAR2(255 BYTE), 
	"STREETNAME" VARCHAR2(255 BYTE), 
	"STREETNUMBER" VARCHAR2(255 BYTE), 
	"ZIPCODE" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table LEASECOMPANY
--------------------------------------------------------

  CREATE TABLE "GMS"."LEASECOMPANY" 
   (	"ID" NUMBER(19,0), 
	"CITY" VARCHAR2(255 BYTE), 
	"EMAIL" VARCHAR2(255 BYTE), 
	"NAME" VARCHAR2(255 BYTE), 
	"PHONE" VARCHAR2(255 BYTE), 
	"STREETNAME" VARCHAR2(255 BYTE), 
	"STREETNUMBER" VARCHAR2(255 BYTE), 
	"ZIPCODE" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MAINTENANCEASSIGNMENT
--------------------------------------------------------

  CREATE TABLE "GMS"."MAINTENANCEASSIGNMENT" 
   (	"ID" NUMBER(19,0), 
	"APK" NUMBER(1,0) DEFAULT 0, 
	"MILEAGE" NUMBER(10,0), 
	"PLANNEDDATE" TIMESTAMP (6), 
	"PROBLEM" VARCHAR2(255 BYTE), 
	"SPOTCHECK" NUMBER(1,0) DEFAULT NULL, 
	"STATUS" NUMBER(10,0), 
	"CAR_ID" NUMBER(19,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MAINTENANCEWORK
--------------------------------------------------------

  CREATE TABLE "GMS"."MAINTENANCEWORK" 
   (	"ID" NUMBER(19,0), 
	"COMMENTS" VARCHAR2(255 BYTE), 
	"FINISHEDON" TIMESTAMP (6), 
	"STARTEDON" TIMESTAMP (6), 
	"WORKHOURS" NUMBER(19,4), 
	"ASSIGNMENT_ID" NUMBER(19,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table RDW_LOG
--------------------------------------------------------

  CREATE TABLE "GMS"."RDW_LOG" 
   (	"ID" NUMBER, 
	"CAR_ID" NUMBER(19,0), 
	"MESSAGE" VARCHAR2(100 BYTE), 
	"TIMESTAMP" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SEQUENCE
--------------------------------------------------------

  CREATE TABLE "GMS"."SEQUENCE" 
   (	"SEQ_NAME" VARCHAR2(50 BYTE), 
	"SEQ_COUNT" NUMBER(38,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into GMS.CAR
SET DEFINE OFF;
Insert into GMS.CAR (ID,MODEL,NUMBERPLATE,TYPE,DRIVER_ID) values (2,'Vectra','TX-ER-14','Vauxhall',1);
REM INSERTING into GMS.DRIVER
SET DEFINE OFF;
Insert into GMS.DRIVER (ID,CITY,EMAIL,FIRSTNAME,INSERTION,LASTNAME,PHONE,STREETNAME,STREETNUMBER,ZIPCODE) values (1,'that never sleeps','john@company.com','John',null,'Doe','2147871995','Rodeo Drive','5A','1111AA');
REM INSERTING into GMS.LEASECOMPANY
SET DEFINE OFF;
REM INSERTING into GMS.MAINTENANCEASSIGNMENT
SET DEFINE OFF;
Insert into GMS.MAINTENANCEASSIGNMENT (ID,APK,MILEAGE,PLANNEDDATE,PROBLEM,SPOTCHECK,STATUS,CAR_ID) values (3,1,1234566,to_timestamp('05-DEC-15 03.26.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),'APK',null,0,2);
Insert into GMS.MAINTENANCEASSIGNMENT (ID,APK,MILEAGE,PLANNEDDATE,PROBLEM,SPOTCHECK,STATUS,CAR_ID) values (4,1,2,to_timestamp('05-DEC-15 03.26.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),'APK',null,0,2);
Insert into GMS.MAINTENANCEASSIGNMENT (ID,APK,MILEAGE,PLANNEDDATE,PROBLEM,SPOTCHECK,STATUS,CAR_ID) values (5,1,234534,to_timestamp('05-DEC-15 03.26.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),'PAK',null,0,2);
Insert into GMS.MAINTENANCEASSIGNMENT (ID,APK,MILEAGE,PLANNEDDATE,PROBLEM,SPOTCHECK,STATUS,CAR_ID) values (6,1,123453,to_timestamp('05-DEC-15 03.26.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),'asd',1,0,2);
Insert into GMS.MAINTENANCEASSIGNMENT (ID,APK,MILEAGE,PLANNEDDATE,PROBLEM,SPOTCHECK,STATUS,CAR_ID) values (7,1,123453,to_timestamp('05-DEC-15 03.26.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),'asd',null,0,2);
Insert into GMS.MAINTENANCEASSIGNMENT (ID,APK,MILEAGE,PLANNEDDATE,PROBLEM,SPOTCHECK,STATUS,CAR_ID) values (8,1,123453,to_timestamp('05-DEC-15 03.26.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),'asd',1,0,2);
Insert into GMS.MAINTENANCEASSIGNMENT (ID,APK,MILEAGE,PLANNEDDATE,PROBLEM,SPOTCHECK,STATUS,CAR_ID) values (9,1,123453,to_timestamp('05-DEC-15 03.26.00.000000000 PM','DD-MON-RR HH.MI.SSXFF AM'),'asd',null,0,2);
REM INSERTING into GMS.MAINTENANCEWORK
SET DEFINE OFF;
REM INSERTING into GMS.RDW_LOG
SET DEFINE OFF;
Insert into GMS.RDW_LOG (ID,CAR_ID,MESSAGE,TIMESTAMP) values (0,2,'Inspection not requested',to_date('26-NOV-15','DD-MON-RR'));
Insert into GMS.RDW_LOG (ID,CAR_ID,MESSAGE,TIMESTAMP) values (1,2,'Inspection not requested',to_date('26-NOV-15','DD-MON-RR'));
Insert into GMS.RDW_LOG (ID,CAR_ID,MESSAGE,TIMESTAMP) values (2,2,'Inspection requested',to_date('26-NOV-15','DD-MON-RR'));
Insert into GMS.RDW_LOG (ID,CAR_ID,MESSAGE,TIMESTAMP) values (3,2,'Inspection requested',to_date('26-NOV-15','DD-MON-RR'));
REM INSERTING into GMS.SEQUENCE
SET DEFINE OFF;
Insert into GMS.SEQUENCE (SEQ_NAME,SEQ_COUNT) values ('SEQ_GEN_TABLE',50);
--------------------------------------------------------
--  DDL for Index RDW_LOG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GMS"."RDW_LOG_PK" ON "GMS"."RDW_LOG" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table RDW_LOG
--------------------------------------------------------

  ALTER TABLE "GMS"."RDW_LOG" ADD CONSTRAINT "RDW_LOG_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "GMS"."RDW_LOG" MODIFY ("TIMESTAMP" NOT NULL ENABLE);
  ALTER TABLE "GMS"."RDW_LOG" MODIFY ("MESSAGE" NOT NULL ENABLE);
  ALTER TABLE "GMS"."RDW_LOG" MODIFY ("CAR_ID" NOT NULL ENABLE);
  ALTER TABLE "GMS"."RDW_LOG" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LEASECOMPANY
--------------------------------------------------------

  ALTER TABLE "GMS"."LEASECOMPANY" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "GMS"."LEASECOMPANY" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MAINTENANCEWORK
--------------------------------------------------------

  ALTER TABLE "GMS"."MAINTENANCEWORK" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "GMS"."MAINTENANCEWORK" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DRIVER
--------------------------------------------------------

  ALTER TABLE "GMS"."DRIVER" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "GMS"."DRIVER" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CAR
--------------------------------------------------------

  ALTER TABLE "GMS"."CAR" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "GMS"."CAR" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MAINTENANCEASSIGNMENT
--------------------------------------------------------

  ALTER TABLE "GMS"."MAINTENANCEASSIGNMENT" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "GMS"."MAINTENANCEASSIGNMENT" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SEQUENCE
--------------------------------------------------------

  ALTER TABLE "GMS"."SEQUENCE" ADD PRIMARY KEY ("SEQ_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "GMS"."SEQUENCE" MODIFY ("SEQ_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table CAR
--------------------------------------------------------

  ALTER TABLE "GMS"."CAR" ADD CONSTRAINT "FK_CAR_DRIVER_ID" FOREIGN KEY ("DRIVER_ID")
	  REFERENCES "GMS"."DRIVER" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MAINTENANCEASSIGNMENT
--------------------------------------------------------

  ALTER TABLE "GMS"."MAINTENANCEASSIGNMENT" ADD CONSTRAINT "MAINTENANCEASSIGNMENT_CAR_ID" FOREIGN KEY ("CAR_ID")
	  REFERENCES "GMS"."CAR" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MAINTENANCEWORK
--------------------------------------------------------

  ALTER TABLE "GMS"."MAINTENANCEWORK" ADD CONSTRAINT "MAINTENANCEWORK_ASSIGNMENT_ID" FOREIGN KEY ("ASSIGNMENT_ID")
	  REFERENCES "GMS"."MAINTENANCEASSIGNMENT" ("ID") ENABLE;
--------------------------------------------------------
--  DDL for Trigger APK_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "GMS"."APK_TRIGGER" BEFORE
  INSERT OR
  UPDATE ON MAINTENANCEASSIGNMENT FOR EACH ROW DECLARE BLA NUMBER;
  BEGIN
    IF :OLD.SPOTCHECK = :NEW.SPOTCHECK THEN
      RETURN;
    END IF;
    IF :NEW.SPOTCHECK = 0 THEN
      DBMS_OUTPUT.put_line('BLA_0');
      BLA := GARAGE.UPDATE_LOG_NO_CHECK(:OLD.CAR_ID);
      DBMS_OUTPUT.put_line('YES');
    ELSIF :NEW.SPOTCHECK = 1 THEN
      DBMS_OUTPUT.put_line('BLA_1');
      BLA := GARAGE.UPDATE_LOG_YES_CHECK(:OLD.CAR_ID);
      DBMS_OUTPUT.put_line('NO');
    END IF;
  END;
/
ALTER TRIGGER "GMS"."APK_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Package GARAGE
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "GMS"."GARAGE" AS 

  /* TODO enter package declarations (types, exceptions, methods etc) here */ 
  FUNCTION UPDATE_LOG_NO_CHECK(
    P_CAR_ID IN NUMBER) 
    RETURN NUMBER;
  FUNCTION UPDATE_LOG_YES_CHECK(
    P_CAR_ID IN NUMBER) 
    RETURN NUMBER;
END GARAGE;

/
--------------------------------------------------------
--  DDL for Package Body GARAGE
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "GMS"."GARAGE" AS

  FUNCTION UPDATE_LOG_NO_CHECK(
    P_CAR_ID IN NUMBER) 
    RETURN NUMBER AS
  BEGIN
    -- TODO: Implementation required for FUNCTION GARAGE.UPDATE_LOG_NO_CHECK
    INSERT INTO RDW_LOG ("ID", "CAR_ID", "MESSAGE", "TIMESTAMP") VALUES (RDW_LOG_SEQUENCE.NEXTVAL, P_CAR_ID, 'Inspection not requested', SYSDATE);
    RETURN P_CAR_ID;
  END UPDATE_LOG_NO_CHECK;

  FUNCTION UPDATE_LOG_YES_CHECK(
    P_CAR_ID IN NUMBER) 
    RETURN NUMBER AS
  BEGIN
    -- TODO: Implementation required for FUNCTION GARAGE.UPDATE_LOG_YES_CHECK
    INSERT INTO RDW_LOG ("ID", "CAR_ID", "MESSAGE", "TIMESTAMP") VALUES (RDW_LOG_SEQUENCE.NEXTVAL, P_CAR_ID, 'Inspection requested', SYSDATE);
    RETURN P_CAR_ID;
  END UPDATE_LOG_YES_CHECK;

END GARAGE;

/