--------------------------------------------------------
-- Archivo creado  - domingo-marzo-08-2020   
--------------------------------------------------------
DROP SEQUENCE "APP"."S_CUSTOMER_ID";
DROP SEQUENCE "APP"."S_DEPT_ID";
DROP SEQUENCE "APP"."S_EMP_ID";
DROP SEQUENCE "APP"."S_ORD_ID";
DROP SEQUENCE "APP"."S_PRODUCT_ID";
DROP SEQUENCE "APP"."S_REGION_ID";
DROP SEQUENCE "APP"."S_WAREHOUSE_ID";
DROP TABLE "APP"."S_CUSTOMER" cascade constraints;
DROP TABLE "APP"."S_DEPT" cascade constraints;
DROP TABLE "APP"."S_EMP" cascade constraints;
DROP TABLE "APP"."S_EMP_TITLE" cascade constraints;
DROP TABLE "APP"."S_INVENTORY" cascade constraints;
DROP TABLE "APP"."S_ITEM" cascade constraints;
DROP TABLE "APP"."S_ORD" cascade constraints;
DROP TABLE "APP"."S_PRODUCT" cascade constraints;
DROP TABLE "APP"."S_REGION" cascade constraints;
DROP TABLE "APP"."S_SALARY" cascade constraints;
DROP TABLE "APP"."S_TITLE" cascade constraints;
DROP TABLE "APP"."S_WAREHOUSE" cascade constraints;
--------------------------------------------------------
--  DDL for Sequence S_CUSTOMER_ID
--------------------------------------------------------

   CREATE SEQUENCE  "APP"."S_CUSTOMER_ID"  MINVALUE 1 MAXVALUE 9999999 INCREMENT BY 1 START WITH 216 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence S_DEPT_ID
--------------------------------------------------------

   CREATE SEQUENCE  "APP"."S_DEPT_ID"  MINVALUE 1 MAXVALUE 9999999 INCREMENT BY 1 START WITH 51 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence S_EMP_ID
--------------------------------------------------------

   CREATE SEQUENCE  "APP"."S_EMP_ID"  MINVALUE 1 MAXVALUE 9999999 INCREMENT BY 1 START WITH 26 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence S_ORD_ID
--------------------------------------------------------

   CREATE SEQUENCE  "APP"."S_ORD_ID"  MINVALUE 1 MAXVALUE 9999999 INCREMENT BY 1 START WITH 113 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence S_PRODUCT_ID
--------------------------------------------------------

   CREATE SEQUENCE  "APP"."S_PRODUCT_ID"  MINVALUE 1 MAXVALUE 9999999 INCREMENT BY 1 START WITH 50537 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence S_REGION_ID
--------------------------------------------------------

   CREATE SEQUENCE  "APP"."S_REGION_ID"  MINVALUE 1 MAXVALUE 9999999 INCREMENT BY 1 START WITH 6 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence S_WAREHOUSE_ID
--------------------------------------------------------

   CREATE SEQUENCE  "APP"."S_WAREHOUSE_ID"  MINVALUE 1 MAXVALUE 9999999 INCREMENT BY 1 START WITH 10502 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table S_CUSTOMER
--------------------------------------------------------

  CREATE TABLE "APP"."S_CUSTOMER" 
   (	"ID" NUMBER(5,0), 
	"NAME" VARCHAR2(30 BYTE), 
	"PHONE" VARCHAR2(15 BYTE), 
	"ADDRESS" VARCHAR2(200 BYTE), 
	"CITY" VARCHAR2(20 BYTE), 
	"STATE" VARCHAR2(20 BYTE), 
	"COUNTRY" VARCHAR2(25 BYTE), 
	"ZIP_CODE" VARCHAR2(10 BYTE), 
	"CREDIT_RATING" VARCHAR2(9 BYTE), 
	"SALES_REP_ID" NUMBER(7,0), 
	"REGION_ID" NUMBER(7,0), 
	"COMMENTS" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table S_DEPT
--------------------------------------------------------

  CREATE TABLE "APP"."S_DEPT" 
   (	"ID" NUMBER(7,0), 
	"NAME" VARCHAR2(15 BYTE), 
	"REGION_ID" NUMBER(7,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table S_EMP
--------------------------------------------------------

  CREATE TABLE "APP"."S_EMP" 
   (	"ID" NUMBER(7,0), 
	"LAST_NAME" VARCHAR2(15 BYTE), 
	"FIRST_NAME" VARCHAR2(15 BYTE), 
	"USERID" VARCHAR2(8 BYTE), 
	"START_DATE" DATE, 
	"COMMENTS" VARCHAR2(255 BYTE), 
	"SALARY" NUMBER(11,2), 
	"COMMISSION_PCT" NUMBER(4,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table S_EMP_TITLE
--------------------------------------------------------

  CREATE TABLE "APP"."S_EMP_TITLE" 
   (	"EMP_ID" NUMBER(7,0), 
	"TITLE" VARCHAR2(25 BYTE), 
	"START_DATE" DATE, 
	"DEPT_ID" NUMBER(22,0), 
	"REGION_ID" NUMBER(22,0), 
	"MANAGER_ID" NUMBER(7,0), 
	"CONSEC" NUMBER(7,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table S_INVENTORY
--------------------------------------------------------

  CREATE TABLE "APP"."S_INVENTORY" 
   (	"PRODUCT_ID" NUMBER(7,0), 
	"WAREHOUSE_ID" NUMBER(7,0), 
	"AMOUNT_IN_STOCK" NUMBER(9,0), 
	"REORDER_POINT" NUMBER(9,0), 
	"MAX_IN_STOCK" NUMBER(9,0), 
	"OUT_OF_STOCK_EXPLANATION" VARCHAR2(255 BYTE), 
	"RESTOCK_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table S_ITEM
--------------------------------------------------------

  CREATE TABLE "APP"."S_ITEM" 
   (	"ORD_ID" NUMBER(7,0), 
	"ITEM_ID" NUMBER(7,0), 
	"PRODUCT_ID" NUMBER(7,0), 
	"PRICE" NUMBER(11,2), 
	"QUANTITY" NUMBER(9,0), 
	"QUANTITY_SHIPPED" NUMBER(9,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table S_ORD
--------------------------------------------------------

  CREATE TABLE "APP"."S_ORD" 
   (	"ID" NUMBER(7,0), 
	"CUSTOMER_ID" NUMBER(7,0), 
	"DATE_ORDERED" DATE, 
	"DATE_SHIPPED" DATE, 
	"SALES_REP_ID" NUMBER(7,0), 
	"TOTAL" NUMBER(11,2), 
	"PAYMENT_TYPE" VARCHAR2(6 BYTE), 
	"ORDER_FILLED" VARCHAR2(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table S_PRODUCT
--------------------------------------------------------

  CREATE TABLE "APP"."S_PRODUCT" 
   (	"ID" NUMBER(7,0), 
	"NAME" VARCHAR2(50 BYTE), 
	"SHORT_DESC" VARCHAR2(255 BYTE), 
	"SUGGESTED_WHLSL_PRICE" NUMBER(11,2), 
	"WHLSL_UNITS" VARCHAR2(25 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table S_REGION
--------------------------------------------------------

  CREATE TABLE "APP"."S_REGION" 
   (	"ID" NUMBER(7,0), 
	"NAME" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table S_SALARY
--------------------------------------------------------

  CREATE TABLE "APP"."S_SALARY" 
   (	"CONSEC" NUMBER(7,0), 
	"DATEPAYMENT" DATE, 
	"PAYMENT" NUMBER(10,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table S_TITLE
--------------------------------------------------------

  CREATE TABLE "APP"."S_TITLE" 
   (	"TITLE" VARCHAR2(25 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table S_WAREHOUSE
--------------------------------------------------------

  CREATE TABLE "APP"."S_WAREHOUSE" 
   (	"ID" NUMBER(7,0), 
	"REGION_ID" NUMBER(7,0), 
	"ADDRESS" LONG, 
	"CITY" VARCHAR2(30 BYTE), 
	"STATE" VARCHAR2(20 BYTE), 
	"COUNTRY" VARCHAR2(30 BYTE), 
	"ZIP_CODE" VARCHAR2(75 BYTE), 
	"PHONE" VARCHAR2(25 BYTE), 
	"MANAGER_ID" NUMBER(7,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into APP.S_CUSTOMER
SET DEFINE OFF;
Insert into APP.S_CUSTOMER (ID,NAME,PHONE,ADDRESS,CITY,STATE,COUNTRY,ZIP_CODE,CREDIT_RATING,SALES_REP_ID,REGION_ID,COMMENTS) values ('201','Unisports','55-2066101','72 Via Bahia','Sao Paolo',null,'Brazil',null,'EXCELLENT','12','2','Customer usually orders large amounts and has a high order total.  This is okay as long as the credit rating remains excellent.');
Insert into APP.S_CUSTOMER (ID,NAME,PHONE,ADDRESS,CITY,STATE,COUNTRY,ZIP_CODE,CREDIT_RATING,SALES_REP_ID,REGION_ID,COMMENTS) values ('202','Simms Atheletics','81-20101','6741 Takashi Blvd.','Osaka',null,'Japan',null,'POOR','14','4','Customer should always pay by cash until his credit rating improves.');
Insert into APP.S_CUSTOMER (ID,NAME,PHONE,ADDRESS,CITY,STATE,COUNTRY,ZIP_CODE,CREDIT_RATING,SALES_REP_ID,REGION_ID,COMMENTS) values ('203','Delhi Sports','91-10351','11368 Chanakya','New Delhi',null,'India',null,'GOOD','14','4','Customer specializes in baseball equipment and is the largest retailer in India.');
Insert into APP.S_CUSTOMER (ID,NAME,PHONE,ADDRESS,CITY,STATE,COUNTRY,ZIP_CODE,CREDIT_RATING,SALES_REP_ID,REGION_ID,COMMENTS) values ('204','Womansport','1-206-104-0103','281 King Street','Seattle','Washington','USA','98101','EXCELLENT','11','1','Customer specializes in Soccer');
Insert into APP.S_CUSTOMER (ID,NAME,PHONE,ADDRESS,CITY,STATE,COUNTRY,ZIP_CODE,CREDIT_RATING,SALES_REP_ID,REGION_ID,COMMENTS) values ('205','Kam''s Sporting Goods','852-3692888','15 Henessey Road','Hong Kong',null,null,null,'EXCELLENT','15','4',null);
Insert into APP.S_CUSTOMER (ID,NAME,PHONE,ADDRESS,CITY,STATE,COUNTRY,ZIP_CODE,CREDIT_RATING,SALES_REP_ID,REGION_ID,COMMENTS) values ('206','Sportique','33-2257201','172 Rue de Rivoli','Cannes',null,'France',null,'EXCELLENT','15','5','Customer specializes in Soccer.  Likes to order accessories in bright colors.');
Insert into APP.S_CUSTOMER (ID,NAME,PHONE,ADDRESS,CITY,STATE,COUNTRY,ZIP_CODE,CREDIT_RATING,SALES_REP_ID,REGION_ID,COMMENTS) values ('207','Sweet Rock Sports','234-6036201','6 Saint Antoine','Lagos',null,'Nigeria',null,'GOOD',null,'3',null);
Insert into APP.S_CUSTOMER (ID,NAME,PHONE,ADDRESS,CITY,STATE,COUNTRY,ZIP_CODE,CREDIT_RATING,SALES_REP_ID,REGION_ID,COMMENTS) values ('208','Muench Sports','49-527454','435 Gruenestrasse','Stuttgart',null,'Germany',null,'GOOD','15','5','Customer usually pays small orders by cash and large orders on credit.');
Insert into APP.S_CUSTOMER (ID,NAME,PHONE,ADDRESS,CITY,STATE,COUNTRY,ZIP_CODE,CREDIT_RATING,SALES_REP_ID,REGION_ID,COMMENTS) values ('209','Beisbol Si!','809-352689','792 Playa Del Mar','San Pedro de Macon''s',null,'Dominican Republic',null,'EXCELLENT','11','1',null);
Insert into APP.S_CUSTOMER (ID,NAME,PHONE,ADDRESS,CITY,STATE,COUNTRY,ZIP_CODE,CREDIT_RATING,SALES_REP_ID,REGION_ID,COMMENTS) values ('210','Futbol Sonora','52-404562','3 Via Saguaro','Nogales',null,'Mexico',null,'EXCELLENT','12','2','Customer is difficult to reach by phone.  Try mail.');
Insert into APP.S_CUSTOMER (ID,NAME,PHONE,ADDRESS,CITY,STATE,COUNTRY,ZIP_CODE,CREDIT_RATING,SALES_REP_ID,REGION_ID,COMMENTS) values ('211','Kuhn''s Sports','42-111292','7 Modrany','Prague',null,'Czechoslovakia',null,'EXCELLENT','15','5',null);
Insert into APP.S_CUSTOMER (ID,NAME,PHONE,ADDRESS,CITY,STATE,COUNTRY,ZIP_CODE,CREDIT_RATING,SALES_REP_ID,REGION_ID,COMMENTS) values ('212','Hamada Sport','20-1209211','57A Corniche','Alexandria',null,'Egypt',null,'EXCELLENT','13','3','Customer orders sea and water equipment.');
Insert into APP.S_CUSTOMER (ID,NAME,PHONE,ADDRESS,CITY,STATE,COUNTRY,ZIP_CODE,CREDIT_RATING,SALES_REP_ID,REGION_ID,COMMENTS) values ('213','Big John''s Sports Emporium','1-415-555-6281','4783 18th Street','San Francisco','CA','USA','94117','EXCELLENT','11','1','Customer has a dependable credit record.');
Insert into APP.S_CUSTOMER (ID,NAME,PHONE,ADDRESS,CITY,STATE,COUNTRY,ZIP_CODE,CREDIT_RATING,SALES_REP_ID,REGION_ID,COMMENTS) values ('214','Ojibway Retail','1-716-555-7171','415 Main Street','Buffalo','NY','USA','14202','POOR','11','1',null);
Insert into APP.S_CUSTOMER (ID,NAME,PHONE,ADDRESS,CITY,STATE,COUNTRY,ZIP_CODE,CREDIT_RATING,SALES_REP_ID,REGION_ID,COMMENTS) values ('215','Sporta Russia','7-3892456','6000 Yekatamina','Saint Petersburg',null,'Russia',null,'POOR','15','5','This customer is very friendly, but has difficulty paying bills.  Insist upon cash.');
REM INSERTING into APP.S_DEPT
SET DEFINE OFF;
Insert into APP.S_DEPT (ID,NAME,REGION_ID) values ('50','Administration','1');
Insert into APP.S_DEPT (ID,NAME,REGION_ID) values ('10','Finance','1');
Insert into APP.S_DEPT (ID,NAME,REGION_ID) values ('40','Operations','1');
Insert into APP.S_DEPT (ID,NAME,REGION_ID) values ('40','Operations','2');
Insert into APP.S_DEPT (ID,NAME,REGION_ID) values ('40','Operations','3');
Insert into APP.S_DEPT (ID,NAME,REGION_ID) values ('40','Operations','4');
Insert into APP.S_DEPT (ID,NAME,REGION_ID) values ('40','Operations','5');
Insert into APP.S_DEPT (ID,NAME,REGION_ID) values ('30','Sales','1');
Insert into APP.S_DEPT (ID,NAME,REGION_ID) values ('30','Sales','2');
Insert into APP.S_DEPT (ID,NAME,REGION_ID) values ('30','Sales','3');
Insert into APP.S_DEPT (ID,NAME,REGION_ID) values ('30','Sales','4');
Insert into APP.S_DEPT (ID,NAME,REGION_ID) values ('30','Sales','5');
REM INSERTING into APP.S_EMP
SET DEFINE OFF;
Insert into APP.S_EMP (ID,LAST_NAME,FIRST_NAME,USERID,START_DATE,COMMENTS,SALARY,COMMISSION_PCT) values ('1','Velasquez','Carmen','cvelasqu',to_date('03/03/08','DD/MM/RR'),null,'2500',null);
Insert into APP.S_EMP (ID,LAST_NAME,FIRST_NAME,USERID,START_DATE,COMMENTS,SALARY,COMMISSION_PCT) values ('2','Ngao','LaDoris','lngao',to_date('08/03/09','DD/MM/RR'),null,'1450',null);
Insert into APP.S_EMP (ID,LAST_NAME,FIRST_NAME,USERID,START_DATE,COMMENTS,SALARY,COMMISSION_PCT) values ('3','Nagayama','Midori','mnagayam',to_date('17/06/11','DD/MM/RR'),null,'1400',null);
Insert into APP.S_EMP (ID,LAST_NAME,FIRST_NAME,USERID,START_DATE,COMMENTS,SALARY,COMMISSION_PCT) values ('4','Quick-To-See','Mark','mquickto',to_date('07/04/09','DD/MM/RR'),null,'1450',null);
Insert into APP.S_EMP (ID,LAST_NAME,FIRST_NAME,USERID,START_DATE,COMMENTS,SALARY,COMMISSION_PCT) values ('5','Ropeburn','Audry','aropebur',to_date('04/03/09','DD/MM/RR'),null,'1550',null);
Insert into APP.S_EMP (ID,LAST_NAME,FIRST_NAME,USERID,START_DATE,COMMENTS,SALARY,COMMISSION_PCT) values ('6','Urguhart','Molly','murguhar',to_date('18/01/10','DD/MM/RR'),null,'1200',null);
Insert into APP.S_EMP (ID,LAST_NAME,FIRST_NAME,USERID,START_DATE,COMMENTS,SALARY,COMMISSION_PCT) values ('7','Menchu','Roberta','rmenchu',to_date('14/05/09','DD/MM/RR'),null,'1250',null);
Insert into APP.S_EMP (ID,LAST_NAME,FIRST_NAME,USERID,START_DATE,COMMENTS,SALARY,COMMISSION_PCT) values ('8','Biri','Ben','bbiri',to_date('07/04/09','DD/MM/RR'),null,'1100',null);
Insert into APP.S_EMP (ID,LAST_NAME,FIRST_NAME,USERID,START_DATE,COMMENTS,SALARY,COMMISSION_PCT) values ('9','Catchpole','Antoinette','acatchpo',to_date('09/02/01','DD/MM/RR'),null,'1300',null);
Insert into APP.S_EMP (ID,LAST_NAME,FIRST_NAME,USERID,START_DATE,COMMENTS,SALARY,COMMISSION_PCT) values ('10','Havel','Marta','mhavel',to_date('27/02/10','DD/MM/RR'),null,'1307',null);
Insert into APP.S_EMP (ID,LAST_NAME,FIRST_NAME,USERID,START_DATE,COMMENTS,SALARY,COMMISSION_PCT) values ('11','Magee','Colin','cmagee',to_date('14/05/09','DD/MM/RR'),null,'1400','10');
Insert into APP.S_EMP (ID,LAST_NAME,FIRST_NAME,USERID,START_DATE,COMMENTS,SALARY,COMMISSION_PCT) values ('12','Giljum','Henry','hgiljum',to_date('18/01/01','DD/MM/RR'),null,'1490','12,5');
Insert into APP.S_EMP (ID,LAST_NAME,FIRST_NAME,USERID,START_DATE,COMMENTS,SALARY,COMMISSION_PCT) values ('13','Sedeghi','Yasmin','ysedeghi',to_date('18/02/10','DD/MM/RR'),null,'1515','10');
Insert into APP.S_EMP (ID,LAST_NAME,FIRST_NAME,USERID,START_DATE,COMMENTS,SALARY,COMMISSION_PCT) values ('14','Nguyen','Mai','mnguyen',to_date('22/01/01','DD/MM/RR'),null,'1525','15');
Insert into APP.S_EMP (ID,LAST_NAME,FIRST_NAME,USERID,START_DATE,COMMENTS,SALARY,COMMISSION_PCT) values ('15','Dumas','Andre','adumas',to_date('09/10/10','DD/MM/RR'),null,'1450','17,5');
Insert into APP.S_EMP (ID,LAST_NAME,FIRST_NAME,USERID,START_DATE,COMMENTS,SALARY,COMMISSION_PCT) values ('16','Mandell','Elena','emandell',to_date('07/02/01','DD/MM/RR'),null,'1400',null);
Insert into APP.S_EMP (ID,LAST_NAME,FIRST_NAME,USERID,START_DATE,COMMENTS,SALARY,COMMISSION_PCT) values ('17','Smith','George','gsmith',to_date('08/03/09','DD/MM/RR'),null,'940',null);
Insert into APP.S_EMP (ID,LAST_NAME,FIRST_NAME,USERID,START_DATE,COMMENTS,SALARY,COMMISSION_PCT) values ('18','Nozaki','Akira','anozaki',to_date('09/02/10','DD/MM/RR'),null,'1200',null);
Insert into APP.S_EMP (ID,LAST_NAME,FIRST_NAME,USERID,START_DATE,COMMENTS,SALARY,COMMISSION_PCT) values ('19','Patel','Vikram','vpatel',to_date('06/08/10','DD/MM/RR'),null,'795',null);
Insert into APP.S_EMP (ID,LAST_NAME,FIRST_NAME,USERID,START_DATE,COMMENTS,SALARY,COMMISSION_PCT) values ('20','Newman','Chad','cnewman',to_date('21/07/10','DD/MM/RR'),null,'750',null);
Insert into APP.S_EMP (ID,LAST_NAME,FIRST_NAME,USERID,START_DATE,COMMENTS,SALARY,COMMISSION_PCT) values ('21','Markarian','Alexander','amarkari',to_date('26/05/10','DD/MM/RR'),null,'850',null);
Insert into APP.S_EMP (ID,LAST_NAME,FIRST_NAME,USERID,START_DATE,COMMENTS,SALARY,COMMISSION_PCT) values ('22','Chang','Eddie','echang',to_date('30/11/09','DD/MM/RR'),null,'800',null);
Insert into APP.S_EMP (ID,LAST_NAME,FIRST_NAME,USERID,START_DATE,COMMENTS,SALARY,COMMISSION_PCT) values ('23','Patel','Radha','rpatel',to_date('17/10/09','DD/MM/RR'),null,'795',null);
Insert into APP.S_EMP (ID,LAST_NAME,FIRST_NAME,USERID,START_DATE,COMMENTS,SALARY,COMMISSION_PCT) values ('24','Dancs','Bela','bdancs',to_date('17/03/10','DD/MM/RR'),null,'860',null);
Insert into APP.S_EMP (ID,LAST_NAME,FIRST_NAME,USERID,START_DATE,COMMENTS,SALARY,COMMISSION_PCT) values ('25','Schwartz','Sylvie','sschwart',to_date('09/05/10','DD/MM/RR'),null,'1100',null);
REM INSERTING into APP.S_EMP_TITLE
SET DEFINE OFF;
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('1','President',null,'50','1',null,'1');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('1','President',null,'50','1',null,'2');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('1','President',null,'50','1',null,'3');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('1','President',null,'50','1',null,'4');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('1','President',null,'50','1',null,'5');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('1','President',null,'50','1',null,'6');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('1','President',null,'50','1',null,'7');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('1','President',null,'50','1',null,'8');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('1','President',null,'50','1',null,'9');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('1','President',null,'50','1',null,'10');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('1','President',null,'50','1',null,'11');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('2','VP, Operations',null,'40','1','1','12');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('2','VP, Operations',null,'40','1','1','13');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('2','VP, Operations',null,'40','1','1','14');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('2','VP, Operations',null,'40','1','1','15');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('2','VP, Operations',null,'40','1','1','16');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('2','VP, Operations',null,'40','1','1','17');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('2','VP, Operations',null,'40','1','1','18');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('2','VP, Operations',null,'40','1','1','19');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('2','VP, Operations',null,'40','1','1','20');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('2','VP, Operations',null,'40','1','1','21');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('2','VP, Operations',null,'40','1','1','22');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('2','VP, Operations',null,'40','1','1','23');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('2','VP, Operations',null,'40','1','1','24');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('3','VP, Sales',null,'30','1','1','25');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('3','VP, Sales',null,'30','1','1','26');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('3','VP, Sales',null,'30','1','1','27');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('3','VP, Sales',null,'30','1','1','28');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('3','VP, Sales',null,'30','1','1','29');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('3','VP, Sales',null,'30','1','1','30');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('3','VP, Sales',null,'30','1','1','31');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('3','VP, Sales',null,'30','1','1','32');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('3','VP, Sales',null,'30','1','1','33');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('3','VP, Sales',null,'30','1','1','34');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('3','VP, Sales',null,'30','1','1','35');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('3','VP, Sales',null,'30','1','1','36');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('4','VP, Finance',null,'10','1','1','37');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('4','VP, Finance',null,'10','1','1','38');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('4','VP, Finance',null,'10','1','1','39');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('4','VP, Finance',null,'10','1','1','40');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('4','VP, Finance',null,'10','1','1','41');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('4','VP, Finance',null,'10','1','1','42');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('4','VP, Finance',null,'10','1','1','43');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('4','VP, Finance',null,'10','1','1','44');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('4','VP, Finance',null,'10','1','1','45');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('4','VP, Finance',null,'10','1','1','46');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('4','VP, Finance',null,'10','1','1','47');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('4','VP, Finance',null,'10','1','1','48');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('5','VP, Administration',null,'50','1','1','49');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('5','VP, Administration',null,'50','1','1','50');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('5','VP, Administration',null,'50','1','1','51');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('5','VP, Administration',null,'50','1','1','52');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('5','VP, Administration',null,'50','1','1','53');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('5','VP, Administration',null,'50','1','1','54');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('5','VP, Administration',null,'50','1','1','55');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('5','VP, Administration',null,'50','1','1','57');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('5','VP, Administration',null,'50','1','1','58');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('5','VP, Administration',null,'50','1','1','59');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('5','VP, Administration',null,'50','1','1','60');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('5','VP, Administration',null,'50','1','1','61');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('6','Warehouse Manager',null,'40','1','2','62');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('6','Warehouse Manager',null,'40','1','2','63');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('6','Warehouse Manager',null,'40','1','2','64');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('6','Warehouse Manager',null,'40','1','2','65');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('6','Warehouse Manager',null,'40','1','2','66');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('6','Warehouse Manager',null,'40','1','2','67');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('6','Warehouse Manager',null,'40','1','2','68');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('6','Warehouse Manager',null,'40','1','2','69');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('6','Warehouse Manager',null,'40','1','2','70');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('6','Warehouse Manager',null,'40','1','2','71');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('6','Warehouse Manager',null,'40','1','2','72');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('6','Warehouse Manager',null,'40','1','2','73');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('7','Warehouse Manager',null,'40','2','2','74');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('7','Warehouse Manager',null,'40','2','2','75');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('7','Warehouse Manager',null,'40','2','2','76');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('7','Warehouse Manager',null,'40','2','2','77');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('7','Warehouse Manager',null,'40','2','2','78');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('7','Warehouse Manager',null,'40','2','2','79');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('7','Warehouse Manager',null,'40','2','2','80');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('7','Warehouse Manager',null,'40','2','2','81');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('7','Warehouse Manager',null,'40','2','2','82');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('7','Warehouse Manager',null,'40','2','2','83');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('7','Warehouse Manager',null,'40','2','2','84');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('7','Warehouse Manager',null,'40','2','2','85');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('8','Warehouse Manager',null,'40','3','2','86');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('8','Warehouse Manager',null,'40','3','2','87');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('8','Warehouse Manager',null,'40','3','2','88');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('8','Warehouse Manager',null,'40','3','2','89');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('8','Warehouse Manager',null,'40','3','2','90');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('8','Warehouse Manager',null,'40','3','2','91');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('8','Warehouse Manager',null,'40','3','2','92');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('8','Warehouse Manager',null,'40','3','2','93');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('8','Warehouse Manager',null,'40','3','2','94');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('8','Warehouse Manager',null,'40','3','2','95');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('8','Warehouse Manager',null,'40','3','2','96');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('8','Warehouse Manager',null,'40','3','2','97');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('9','Warehouse Manager',null,'40','4','2','98');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('9','Warehouse Manager',null,'40','4','2','99');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('9','Warehouse Manager',null,'40','4','2','100');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('9','Warehouse Manager',null,'40','4','2','101');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('9','Warehouse Manager',null,'40','4','2','102');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('9','Warehouse Manager',null,'40','4','2','103');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('9','Warehouse Manager',null,'40','4','2','104');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('9','Warehouse Manager',null,'40','4','2','105');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('9','Warehouse Manager',null,'40','4','2','106');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('9','Warehouse Manager',null,'40','4','2','107');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('9','Warehouse Manager',null,'40','4','2','108');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('9','Warehouse Manager',null,'40','4','2','109');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('10','Warehouse Manager',null,'40','5','2','110');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('10','Warehouse Manager',null,'40','5','2','111');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('10','Warehouse Manager',null,'40','5','2','112');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('10','Warehouse Manager',null,'40','5','2','113');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('10','Warehouse Manager',null,'40','5','2','114');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('10','Warehouse Manager',null,'40','5','2','115');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('10','Warehouse Manager',null,'40','5','2','116');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('10','Warehouse Manager',null,'40','5','2','117');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('10','Warehouse Manager',null,'40','5','2','118');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('10','Warehouse Manager',null,'40','5','2','119');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('10','Warehouse Manager',null,'40','5','2','120');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('10','Warehouse Manager',null,'40','5','2','121');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('11','Sales Representative',null,'30','1','3','122');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('11','Sales Representative',null,'30','1','3','123');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('11','Sales Representative',null,'30','1','3','124');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('11','Sales Representative',null,'30','1','3','125');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('11','Sales Representative',null,'30','1','3','126');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('11','Sales Representative',null,'30','1','3','127');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('11','Sales Representative',null,'30','1','3','128');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('11','Sales Representative',null,'30','1','3','129');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('11','Sales Representative',null,'30','1','3','130');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('11','Sales Representative',null,'30','1','3','131');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('11','Sales Representative',null,'30','1','3','132');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('11','Sales Representative',null,'30','1','3','133');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('12','Sales Representative',null,'30','2','3','290');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('12','Sales Representative',null,'30','2','3','291');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('12','Sales Representative',null,'30','2','3','292');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('12','Sales Representative',null,'30','2','3','293');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('12','Sales Representative',null,'30','2','3','294');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('12','Sales Representative',null,'30','2','3','295');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('12','Sales Representative',null,'30','2','3','296');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('12','Sales Representative',null,'30','2','3','297');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('12','Sales Representative',null,'30','2','3','298');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('12','Sales Representative',null,'30','2','3','299');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('12','Sales Representative',null,'30','2','3','300');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('12','Sales Representative',null,'30','2','3','301');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('13','Sales Representative',null,'30','3','3','134');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('13','Sales Representative',null,'30','3','3','135');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('13','Sales Representative',null,'30','3','3','136');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('13','Sales Representative',null,'30','3','3','137');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('13','Sales Representative',null,'30','3','3','138');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('13','Sales Representative',null,'30','3','3','139');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('13','Sales Representative',null,'30','3','3','140');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('13','Sales Representative',null,'30','3','3','141');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('13','Sales Representative',null,'30','3','3','142');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('13','Sales Representative',null,'30','3','3','143');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('13','Sales Representative',null,'30','3','3','144');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('13','Sales Representative',null,'30','3','3','145');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('14','Sales Representative',null,'30','4','3','146');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('14','Sales Representative',null,'30','4','3','147');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('14','Sales Representative',null,'30','4','3','148');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('14','Sales Representative',null,'30','4','3','149');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('14','Sales Representative',null,'30','4','3','150');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('14','Sales Representative',null,'30','4','3','151');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('14','Sales Representative',null,'30','4','3','152');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('14','Sales Representative',null,'30','4','3','153');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('14','Sales Representative',null,'30','4','3','154');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('14','Sales Representative',null,'30','4','3','155');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('14','Sales Representative',null,'30','4','3','156');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('14','Sales Representative',null,'30','4','3','157');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('15','Sales Representative',null,'30','5','3','158');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('15','Sales Representative',null,'30','5','3','159');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('15','Sales Representative',null,'30','5','3','160');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('15','Sales Representative',null,'30','5','3','161');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('15','Sales Representative',null,'30','5','3','162');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('15','Sales Representative',null,'30','5','3','163');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('15','Sales Representative',null,'30','5','3','164');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('15','Sales Representative',null,'30','5','3','165');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('15','Sales Representative',null,'30','5','3','166');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('15','Sales Representative',null,'30','5','3','167');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('15','Sales Representative',null,'30','5','3','168');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('15','Sales Representative',null,'30','5','3','169');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('16','Stock Clerk',null,'40','1','6','170');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('16','Stock Clerk',null,'40','1','6','171');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('16','Stock Clerk',null,'40','1','6','172');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('16','Stock Clerk',null,'40','1','6','173');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('16','Stock Clerk',null,'40','1','6','174');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('16','Stock Clerk',null,'40','1','6','175');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('16','Stock Clerk',null,'40','1','6','176');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('16','Stock Clerk',null,'40','1','6','177');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('16','Stock Clerk',null,'40','1','6','178');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('16','Stock Clerk',null,'40','1','6','179');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('16','Stock Clerk',null,'40','1','6','180');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('16','Stock Clerk',null,'40','1','6','181');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('17','Stock Clerk',null,'40','1','6','182');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('17','Stock Clerk',null,'40','1','6','183');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('17','Stock Clerk',null,'40','1','6','184');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('17','Stock Clerk',null,'40','1','6','185');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('17','Stock Clerk',null,'40','1','6','186');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('17','Stock Clerk',null,'40','1','6','187');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('17','Stock Clerk',null,'40','1','6','188');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('17','Stock Clerk',null,'40','1','6','189');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('17','Stock Clerk',null,'40','1','6','190');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('17','Stock Clerk',null,'40','1','6','191');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('17','Stock Clerk',null,'40','1','6','192');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('17','Stock Clerk',null,'40','1','6','193');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('18','Stock Clerk',null,'40','2','7','194');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('18','Stock Clerk',null,'40','2','7','195');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('18','Stock Clerk',null,'40','2','7','196');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('18','Stock Clerk',null,'40','2','7','197');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('18','Stock Clerk',null,'40','2','7','198');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('18','Stock Clerk',null,'40','2','7','199');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('18','Stock Clerk',null,'40','2','7','200');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('18','Stock Clerk',null,'40','2','7','201');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('18','Stock Clerk',null,'40','2','7','202');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('18','Stock Clerk',null,'40','2','7','203');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('18','Stock Clerk',null,'40','2','7','204');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('18','Stock Clerk',null,'40','2','7','205');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('19','Stock Clerk',null,'40','2','7','206');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('19','Stock Clerk',null,'40','2','7','207');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('19','Stock Clerk',null,'40','2','7','208');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('19','Stock Clerk',null,'40','2','7','209');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('19','Stock Clerk',null,'40','2','7','210');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('19','Stock Clerk',null,'40','2','7','211');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('19','Stock Clerk',null,'40','2','7','212');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('19','Stock Clerk',null,'40','2','7','213');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('19','Stock Clerk',null,'40','2','7','214');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('19','Stock Clerk',null,'40','2','7','215');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('19','Stock Clerk',null,'40','2','7','216');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('19','Stock Clerk',null,'40','2','7','217');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('20','Stock Clerk',null,'40','3','8','218');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('20','Stock Clerk',null,'40','3','8','219');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('20','Stock Clerk',null,'40','3','8','220');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('20','Stock Clerk',null,'40','3','8','221');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('20','Stock Clerk',null,'40','3','8','222');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('20','Stock Clerk',null,'40','3','8','223');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('20','Stock Clerk',null,'40','3','8','224');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('20','Stock Clerk',null,'40','3','8','225');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('20','Stock Clerk',null,'40','3','8','226');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('20','Stock Clerk',null,'40','3','8','227');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('20','Stock Clerk',null,'40','3','8','228');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('20','Stock Clerk',null,'40','3','8','229');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('21','Stock Clerk',null,'40','3','8','230');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('21','Stock Clerk',null,'40','3','8','231');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('21','Stock Clerk',null,'40','3','8','232');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('21','Stock Clerk',null,'40','3','8','233');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('21','Stock Clerk',null,'40','3','8','234');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('21','Stock Clerk',null,'40','3','8','235');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('21','Stock Clerk',null,'40','3','8','236');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('21','Stock Clerk',null,'40','3','8','237');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('21','Stock Clerk',null,'40','3','8','238');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('21','Stock Clerk',null,'40','3','8','239');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('21','Stock Clerk',null,'40','3','8','240');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('21','Stock Clerk',null,'40','3','8','241');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('22','Stock Clerk',null,'40','4','9','242');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('22','Stock Clerk',null,'40','4','9','243');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('22','Stock Clerk',null,'40','4','9','244');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('22','Stock Clerk',null,'40','4','9','245');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('22','Stock Clerk',null,'40','4','9','246');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('22','Stock Clerk',null,'40','4','9','247');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('22','Stock Clerk',null,'40','4','9','248');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('22','Stock Clerk',null,'40','4','9','249');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('22','Stock Clerk',null,'40','4','9','250');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('22','Stock Clerk',null,'40','4','9','251');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('22','Stock Clerk',null,'40','4','9','252');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('22','Stock Clerk',null,'40','4','9','253');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('23','Stock Clerk',null,'30','4','9','254');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('23','Stock Clerk',null,'30','4','9','255');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('23','Stock Clerk',null,'30','4','9','256');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('23','Stock Clerk',null,'30','4','9','257');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('23','Stock Clerk',null,'30','4','9','258');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('23','Stock Clerk',null,'30','4','9','259');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('23','Stock Clerk',null,'30','4','9','260');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('23','Stock Clerk',null,'30','4','9','261');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('23','Stock Clerk',null,'30','4','9','262');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('23','Stock Clerk',null,'30','4','9','263');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('23','Stock Clerk',null,'30','4','9','264');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('23','Stock Clerk',null,'30','4','9','265');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('24','Stock Clerk',null,'40','5','10','266');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('24','Stock Clerk',null,'40','5','10','267');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('24','Stock Clerk',null,'40','5','10','268');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('24','Stock Clerk',null,'40','5','10','269');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('24','Stock Clerk',null,'40','5','10','270');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('24','Stock Clerk',null,'40','5','10','271');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('24','Stock Clerk',null,'40','5','10','272');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('24','Stock Clerk',null,'40','5','10','273');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('24','Stock Clerk',null,'40','5','10','274');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('24','Stock Clerk',null,'40','5','10','275');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('24','Stock Clerk',null,'40','5','10','276');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('24','Stock Clerk',null,'40','5','10','277');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('25','Stock Clerk',null,'40','5','10','278');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('25','Stock Clerk',null,'40','5','10','279');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('25','Stock Clerk',null,'40','5','10','280');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('25','Stock Clerk',null,'40','5','10','281');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('25','Stock Clerk',null,'40','5','10','282');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('25','Stock Clerk',null,'40','5','10','283');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('25','Stock Clerk',null,'40','5','10','284');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('25','Stock Clerk',null,'40','5','10','285');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('25','Stock Clerk',null,'40','5','10','286');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('25','Stock Clerk',null,'40','5','10','287');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('25','Stock Clerk',null,'40','5','10','288');
Insert into APP.S_EMP_TITLE (EMP_ID,TITLE,START_DATE,DEPT_ID,REGION_ID,MANAGER_ID,CONSEC) values ('25','Stock Clerk',null,'40','5','10','289');
REM INSERTING into APP.S_INVENTORY
SET DEFINE OFF;
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('10011','101','650','625','1100',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('10012','101','600','560','1000',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('10013','101','400','400','700',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('10021','101','500','425','740',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('10022','101','300','200','350',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('10023','101','400','300','525',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('20106','101','993','625','1000',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('20108','101','700','700','1225',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('20201','101','802','800','1400',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('20510','101','1389','850','1400',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('20512','101','850','850','1450',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('30321','101','2000','1500','2500',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('30326','101','2100','2000','3500',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('30421','101','1822','1800','3150',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('30426','101','2250','2000','3500',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('30433','101','650','600','1050',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('32779','101','2120','1250','2200',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('32861','101','505','500','875',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('40421','101','578','350','600',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('40422','101','0','350','600','Phenomenal sales...',to_date('08/02/03','DD/MM/RR'));
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('41010','101','250','250','437',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('41020','101','471','450','750',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('41050','101','501','450','750',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('41080','101','400','400','700',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('41100','101','350','350','600',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('50169','101','2530','1500','2600',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('50273','101','233','200','350',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('50417','101','518','500','875',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('50418','101','244','100','275',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('50419','101','230','120','310',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('50530','101','669','400','700',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('50532','101','0','100','175','Wait for Spring.',to_date('12/04/03','DD/MM/RR'));
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('50536','101','173','100','175',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('20106','201','220','150','260',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('20108','201','166','150','260',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('20201','201','320','200','350',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('20510','201','175','100','175',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('20512','201','162','100','175',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('30321','201','96','80','140',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('30326','201','147','120','210',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('30421','201','102','80','140',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('30426','201','200','120','210',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('30433','201','130','130','230',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('32779','201','180','150','260',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('32861','201','132','80','140',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('50169','201','225','220','385',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('50273','201','75','60','100',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('50417','201','82','60','100',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('50418','201','98','60','100',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('50419','201','77','60','100',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('50530','201','62','60','100',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('50532','201','67','60','100',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('50536','201','97','60','100',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('20510','301','69','40','100',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('20512','301','28','20','50',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('30321','301','85','80','140',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('30421','301','102','80','140',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('30433','301','35','20','35',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('32779','301','102','95','175',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('32861','301','57','50','100',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('40421','301','70','40','70',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('40422','301','65','40','70',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('41010','301','59','40','70',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('41020','301','61','40','70',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('41050','301','49','40','70',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('41080','301','50','40','70',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('41100','301','42','40','70',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('20510','401','88','50','100',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('20512','401','75','75','140',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('30321','401','102','80','140',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('30326','401','113','80','140',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('30421','401','85','80','140',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('30426','401','135','80','140',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('30433','401','0','100','175','A defective shipment was sent to Hong Kong and needed to be returned. The soonest ACME can turn this around is early February.',to_date('07/09/02','DD/MM/RR'));
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('32779','401','135','100','175',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('32861','401','250','150','250',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('40421','401','47','40','70',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('40422','401','50','40','70',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('41010','401','80','70','220',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('41020','401','91','70','220',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('41050','401','169','70','220',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('41080','401','100','70','220',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('41100','401','75','70','220',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('50169','401','240','200','350',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('50273','401','224','150','280',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('50417','401','130','120','210',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('50418','401','156','100','175',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('50419','401','151','150','280',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('50530','401','119','100','175',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('50532','401','233','200','350',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('50536','401','138','100','175',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('10012','10501','300','300','525',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('10013','10501','314','300','525',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('10022','10501','502','300','525',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('10023','10501','500','300','525',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('20106','10501','150','100','175',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('20108','10501','222','200','350',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('20201','10501','275','200','350',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('20510','10501','57','50','87',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('20512','10501','62','50','87',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('30321','10501','194','150','275',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('30326','10501','277','250','440',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('30421','10501','190','150','275',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('30426','10501','423','250','450',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('30433','10501','273','200','350',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('32779','10501','280','200','350',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('32861','10501','288','200','350',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('40421','10501','97','80','140',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('40422','10501','90','80','140',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('41010','10501','151','140','245',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('41020','10501','224','140','245',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('41050','10501','157','140','245',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('41080','10501','159','140','245',null,null);
Insert into APP.S_INVENTORY (PRODUCT_ID,WAREHOUSE_ID,AMOUNT_IN_STOCK,REORDER_POINT,MAX_IN_STOCK,OUT_OF_STOCK_EXPLANATION,RESTOCK_DATE) values ('41100','10501','141','140','245',null,null);
REM INSERTING into APP.S_ITEM
SET DEFINE OFF;
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('100','1','10011','135','500','500');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('100','2','10013','380','400','400');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('100','3','10021','14','500','500');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('100','5','30326','582','600','600');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('100','7','41010','8','250','250');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('100','6','30433','20','450','450');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('100','4','10023','36','400','400');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('101','1','30421','16','15','15');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('101','3','41010','8','20','20');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('101','5','50169','4,29','40','40');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('101','6','50417','80','27','27');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('101','7','50530','45','50','50');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('101','4','41100','45','35','35');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('101','2','40422','50','30','30');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('102','1','20108','28','100','100');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('102','2','20201','123','45','45');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('103','1','30433','20','15','15');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('103','2','32779','7','11','11');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('104','1','20510','9','7','7');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('104','4','30421','16','35','35');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('104','2','20512','8','12','12');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('104','3','30321','1669','19','19');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('105','1','50273','22,89','16','16');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('105','3','50532','47','28','28');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('105','2','50419','80','13','13');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('106','1','20108','28','46','46');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('106','4','50273','22,89','75','75');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('106','5','50418','75','98','98');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('106','6','50419','80','27','27');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('106','2','20201','123','21','21');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('106','3','50169','4,29','125','125');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('107','1','20106','11','50','50');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('107','3','20201','115','130','130');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('107','5','30421','16','55','55');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('107','4','30321','1669','75','75');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('107','2','20108','28','22','22');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('108','1','20510','9','9','9');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('108','6','41080','35','50','50');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('108','7','41100','45','42','42');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('108','5','32861','60','57','57');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('108','2','20512','8','18','18');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('108','4','32779','7','60','60');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('108','3','30321','1669','85','85');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('109','1','10011','140','150','150');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('109','5','30426','18,25','500','500');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('109','7','50418','75','43','43');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('109','6','32861','60','50','50');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('109','4','30326','582','1500','1500');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('109','2','10012','175','600','600');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('109','3','10022','21,95','300','300');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('110','1','50273','22,89','17','17');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('110','2','50536','50','23','23');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('111','1','40421','65','27','27');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('111','2','41080','35','29','29');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('97','1','20106','9','1000','1000');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('97','2','30321','1500','50','50');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('98','1','40421','85','7','7');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('99','1','20510','9','18','18');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('99','2','20512','8','25','25');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('99','3','50417','80','53','53');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('99','4','50530','45','69','69');
Insert into APP.S_ITEM (ORD_ID,ITEM_ID,PRODUCT_ID,PRICE,QUANTITY,QUANTITY_SHIPPED) values ('112','1','20106','11','50','50');
REM INSERTING into APP.S_ORD
SET DEFINE OFF;
Insert into APP.S_ORD (ID,CUSTOMER_ID,DATE_ORDERED,DATE_SHIPPED,SALES_REP_ID,TOTAL,PAYMENT_TYPE,ORDER_FILLED) values ('100','204',to_date('31/08/11','DD/MM/RR'),to_date('10/09/11','DD/MM/RR'),'11','601100','CREDIT','Y');
Insert into APP.S_ORD (ID,CUSTOMER_ID,DATE_ORDERED,DATE_SHIPPED,SALES_REP_ID,TOTAL,PAYMENT_TYPE,ORDER_FILLED) values ('101','205',to_date('31/08/11','DD/MM/RR'),to_date('15/09/11','DD/MM/RR'),'14','8056,6','CREDIT','Y');
Insert into APP.S_ORD (ID,CUSTOMER_ID,DATE_ORDERED,DATE_SHIPPED,SALES_REP_ID,TOTAL,PAYMENT_TYPE,ORDER_FILLED) values ('102','206',to_date('01/09/11','DD/MM/RR'),to_date('08/09/11','DD/MM/RR'),'15','8335','CREDIT','Y');
Insert into APP.S_ORD (ID,CUSTOMER_ID,DATE_ORDERED,DATE_SHIPPED,SALES_REP_ID,TOTAL,PAYMENT_TYPE,ORDER_FILLED) values ('103','208',to_date('02/09/11','DD/MM/RR'),to_date('22/09/11','DD/MM/RR'),'15','377','CASH','Y');
Insert into APP.S_ORD (ID,CUSTOMER_ID,DATE_ORDERED,DATE_SHIPPED,SALES_REP_ID,TOTAL,PAYMENT_TYPE,ORDER_FILLED) values ('104','208',to_date('03/09/11','DD/MM/RR'),to_date('23/09/11','DD/MM/RR'),'15','32430','CREDIT','Y');
Insert into APP.S_ORD (ID,CUSTOMER_ID,DATE_ORDERED,DATE_SHIPPED,SALES_REP_ID,TOTAL,PAYMENT_TYPE,ORDER_FILLED) values ('105','209',to_date('04/09/11','DD/MM/RR'),to_date('18/09/11','DD/MM/RR'),'11','2722,24','CREDIT','Y');
Insert into APP.S_ORD (ID,CUSTOMER_ID,DATE_ORDERED,DATE_SHIPPED,SALES_REP_ID,TOTAL,PAYMENT_TYPE,ORDER_FILLED) values ('106','210',to_date('07/09/11','DD/MM/RR'),to_date('15/09/11','DD/MM/RR'),'12','15634','CREDIT','Y');
Insert into APP.S_ORD (ID,CUSTOMER_ID,DATE_ORDERED,DATE_SHIPPED,SALES_REP_ID,TOTAL,PAYMENT_TYPE,ORDER_FILLED) values ('107','211',to_date('07/09/11','DD/MM/RR'),to_date('21/09/11','DD/MM/RR'),'15','142171','CREDIT','Y');
Insert into APP.S_ORD (ID,CUSTOMER_ID,DATE_ORDERED,DATE_SHIPPED,SALES_REP_ID,TOTAL,PAYMENT_TYPE,ORDER_FILLED) values ('108','212',to_date('07/09/11','DD/MM/RR'),to_date('10/09/11','DD/MM/RR'),'13','149570','CREDIT','Y');
Insert into APP.S_ORD (ID,CUSTOMER_ID,DATE_ORDERED,DATE_SHIPPED,SALES_REP_ID,TOTAL,PAYMENT_TYPE,ORDER_FILLED) values ('109','213',to_date('08/09/11','DD/MM/RR'),to_date('28/09/11','DD/MM/RR'),'11','1020935','CREDIT','Y');
Insert into APP.S_ORD (ID,CUSTOMER_ID,DATE_ORDERED,DATE_SHIPPED,SALES_REP_ID,TOTAL,PAYMENT_TYPE,ORDER_FILLED) values ('110','214',to_date('09/09/11','DD/MM/RR'),to_date('21/09/11','DD/MM/RR'),'11','1539,13','CASH','Y');
Insert into APP.S_ORD (ID,CUSTOMER_ID,DATE_ORDERED,DATE_SHIPPED,SALES_REP_ID,TOTAL,PAYMENT_TYPE,ORDER_FILLED) values ('111','204',to_date('09/09/11','DD/MM/RR'),to_date('21/09/11','DD/MM/RR'),'11','2770','CASH','Y');
Insert into APP.S_ORD (ID,CUSTOMER_ID,DATE_ORDERED,DATE_SHIPPED,SALES_REP_ID,TOTAL,PAYMENT_TYPE,ORDER_FILLED) values ('97','201',to_date('28/08/11','DD/MM/RR'),to_date('17/09/11','DD/MM/RR'),'12','84000','CREDIT','Y');
Insert into APP.S_ORD (ID,CUSTOMER_ID,DATE_ORDERED,DATE_SHIPPED,SALES_REP_ID,TOTAL,PAYMENT_TYPE,ORDER_FILLED) values ('98','202',to_date('31/08/11','DD/MM/RR'),to_date('10/09/11','DD/MM/RR'),'14','595','CASH','Y');
Insert into APP.S_ORD (ID,CUSTOMER_ID,DATE_ORDERED,DATE_SHIPPED,SALES_REP_ID,TOTAL,PAYMENT_TYPE,ORDER_FILLED) values ('99','203',to_date('31/08/11','DD/MM/RR'),to_date('18/09/11','DD/MM/RR'),'14','7707','CREDIT','Y');
Insert into APP.S_ORD (ID,CUSTOMER_ID,DATE_ORDERED,DATE_SHIPPED,SALES_REP_ID,TOTAL,PAYMENT_TYPE,ORDER_FILLED) values ('112','210',to_date('31/08/11','DD/MM/RR'),to_date('10/09/11','DD/MM/RR'),'12','550','CREDIT','Y');
REM INSERTING into APP.S_PRODUCT
SET DEFINE OFF;
Insert into APP.S_PRODUCT (ID,NAME,SHORT_DESC,SUGGESTED_WHLSL_PRICE,WHLSL_UNITS) values ('10011','Bunny Boot','Beginner''s ski boot','150',null);
Insert into APP.S_PRODUCT (ID,NAME,SHORT_DESC,SUGGESTED_WHLSL_PRICE,WHLSL_UNITS) values ('10012','Ace Ski Boot','Intermediate ski boot','200',null);
Insert into APP.S_PRODUCT (ID,NAME,SHORT_DESC,SUGGESTED_WHLSL_PRICE,WHLSL_UNITS) values ('10013','Pro Ski Boot','Advanced ski boot','410',null);
Insert into APP.S_PRODUCT (ID,NAME,SHORT_DESC,SUGGESTED_WHLSL_PRICE,WHLSL_UNITS) values ('10021','Bunny Ski Pole','Beginner''s ski pole','16,25',null);
Insert into APP.S_PRODUCT (ID,NAME,SHORT_DESC,SUGGESTED_WHLSL_PRICE,WHLSL_UNITS) values ('10022','Ace Ski Pole','Intermediate ski pole','21,95',null);
Insert into APP.S_PRODUCT (ID,NAME,SHORT_DESC,SUGGESTED_WHLSL_PRICE,WHLSL_UNITS) values ('10023','Pro Ski Pole','Advanced ski pole','40,95',null);
Insert into APP.S_PRODUCT (ID,NAME,SHORT_DESC,SUGGESTED_WHLSL_PRICE,WHLSL_UNITS) values ('20106','Junior Soccer Ball','Junior soccer ball','11',null);
Insert into APP.S_PRODUCT (ID,NAME,SHORT_DESC,SUGGESTED_WHLSL_PRICE,WHLSL_UNITS) values ('20108','World Cup Soccer Ball','World cup soccer ball','28',null);
Insert into APP.S_PRODUCT (ID,NAME,SHORT_DESC,SUGGESTED_WHLSL_PRICE,WHLSL_UNITS) values ('20201','World Cup Net','World cup net','123',null);
Insert into APP.S_PRODUCT (ID,NAME,SHORT_DESC,SUGGESTED_WHLSL_PRICE,WHLSL_UNITS) values ('20510','Black Hawk Knee Pads','Knee pads, pair','9',null);
Insert into APP.S_PRODUCT (ID,NAME,SHORT_DESC,SUGGESTED_WHLSL_PRICE,WHLSL_UNITS) values ('20512','Black Hawk Elbow Pads','Elbow pads, pair','8',null);
Insert into APP.S_PRODUCT (ID,NAME,SHORT_DESC,SUGGESTED_WHLSL_PRICE,WHLSL_UNITS) values ('30321','Grand Prix Bicycle','Road bicycle','1669',null);
Insert into APP.S_PRODUCT (ID,NAME,SHORT_DESC,SUGGESTED_WHLSL_PRICE,WHLSL_UNITS) values ('30326','Himalaya Bicycle','Mountain bicycle','582',null);
Insert into APP.S_PRODUCT (ID,NAME,SHORT_DESC,SUGGESTED_WHLSL_PRICE,WHLSL_UNITS) values ('30421','Grand Prix Bicycle Tires','Road bicycle tires','16',null);
Insert into APP.S_PRODUCT (ID,NAME,SHORT_DESC,SUGGESTED_WHLSL_PRICE,WHLSL_UNITS) values ('30426','Himalaya Tires','Mountain bicycle tires','18,25',null);
Insert into APP.S_PRODUCT (ID,NAME,SHORT_DESC,SUGGESTED_WHLSL_PRICE,WHLSL_UNITS) values ('30433','New Air Pump','Tire pump','20',null);
Insert into APP.S_PRODUCT (ID,NAME,SHORT_DESC,SUGGESTED_WHLSL_PRICE,WHLSL_UNITS) values ('32779','Slaker Water Bottle','Water bottle','7',null);
Insert into APP.S_PRODUCT (ID,NAME,SHORT_DESC,SUGGESTED_WHLSL_PRICE,WHLSL_UNITS) values ('32861','Safe-T Helmet','Bicycle helmet','60',null);
Insert into APP.S_PRODUCT (ID,NAME,SHORT_DESC,SUGGESTED_WHLSL_PRICE,WHLSL_UNITS) values ('40421','Alexeyer Pro Lifting Bar','Straight bar','65',null);
Insert into APP.S_PRODUCT (ID,NAME,SHORT_DESC,SUGGESTED_WHLSL_PRICE,WHLSL_UNITS) values ('40422','Pro Curling Bar','Curling bar','50',null);
Insert into APP.S_PRODUCT (ID,NAME,SHORT_DESC,SUGGESTED_WHLSL_PRICE,WHLSL_UNITS) values ('41010','Prostar 10 Pound Weight','Ten pound weight','8',null);
Insert into APP.S_PRODUCT (ID,NAME,SHORT_DESC,SUGGESTED_WHLSL_PRICE,WHLSL_UNITS) values ('41020','Prostar 20 Pound Weight','Twenty pound weight','12',null);
Insert into APP.S_PRODUCT (ID,NAME,SHORT_DESC,SUGGESTED_WHLSL_PRICE,WHLSL_UNITS) values ('41050','Prostar 50 Pound Weight','Fifty pound weight','25',null);
Insert into APP.S_PRODUCT (ID,NAME,SHORT_DESC,SUGGESTED_WHLSL_PRICE,WHLSL_UNITS) values ('41080','Prostar 80 Pound Weight','Eighty pound weight','35',null);
Insert into APP.S_PRODUCT (ID,NAME,SHORT_DESC,SUGGESTED_WHLSL_PRICE,WHLSL_UNITS) values ('41100','Prostar 100 Pound Weight','One hundred pound weight','45',null);
Insert into APP.S_PRODUCT (ID,NAME,SHORT_DESC,SUGGESTED_WHLSL_PRICE,WHLSL_UNITS) values ('50169','Major League Baseball','Baseball','4,29',null);
Insert into APP.S_PRODUCT (ID,NAME,SHORT_DESC,SUGGESTED_WHLSL_PRICE,WHLSL_UNITS) values ('50273','Chapman Helmet','Batting helmet','22,89',null);
Insert into APP.S_PRODUCT (ID,NAME,SHORT_DESC,SUGGESTED_WHLSL_PRICE,WHLSL_UNITS) values ('50417','Griffey Glove','Outfielder''s glove','80',null);
Insert into APP.S_PRODUCT (ID,NAME,SHORT_DESC,SUGGESTED_WHLSL_PRICE,WHLSL_UNITS) values ('50418','Alomar Glove','Infielder''s glove','75',null);
Insert into APP.S_PRODUCT (ID,NAME,SHORT_DESC,SUGGESTED_WHLSL_PRICE,WHLSL_UNITS) values ('50419','Steinbach Glove','Catcher''s glove','80',null);
Insert into APP.S_PRODUCT (ID,NAME,SHORT_DESC,SUGGESTED_WHLSL_PRICE,WHLSL_UNITS) values ('50530','Cabrera Bat','Thirty inch bat','45',null);
Insert into APP.S_PRODUCT (ID,NAME,SHORT_DESC,SUGGESTED_WHLSL_PRICE,WHLSL_UNITS) values ('50532','Puckett Bat','Thirty-two inch bat','47',null);
Insert into APP.S_PRODUCT (ID,NAME,SHORT_DESC,SUGGESTED_WHLSL_PRICE,WHLSL_UNITS) values ('50536','Winfield Bat','Thirty-six inch bat','50',null);
REM INSERTING into APP.S_REGION
SET DEFINE OFF;
Insert into APP.S_REGION (ID,NAME) values ('3','Africa / Middle East');
Insert into APP.S_REGION (ID,NAME) values ('4','Asia');
Insert into APP.S_REGION (ID,NAME) values ('5','Europe');
Insert into APP.S_REGION (ID,NAME) values ('1','North America');
Insert into APP.S_REGION (ID,NAME) values ('2','South America');
REM INSERTING into APP.S_SALARY
SET DEFINE OFF;
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('1',to_date('30/01/11','DD/MM/RR'),'15000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('2',to_date('28/02/11','DD/MM/RR'),'15000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('3',to_date('30/03/11','DD/MM/RR'),'25000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('4',to_date('30/04/11','DD/MM/RR'),'25000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('5',to_date('30/05/11','DD/MM/RR'),'25000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('6',to_date('30/06/11','DD/MM/RR'),'25000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('7',to_date('30/07/11','DD/MM/RR'),'25000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('8',to_date('30/08/11','DD/MM/RR'),'30000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('9',to_date('30/09/11','DD/MM/RR'),'30000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('10',to_date('30/10/11','DD/MM/RR'),'31000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('11',to_date('30/11/11','DD/MM/RR'),'31000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('12',to_date('30/12/11','DD/MM/RR'),'37000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('13',to_date('30/01/11','DD/MM/RR'),'7000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('14',to_date('28/02/11','DD/MM/RR'),'7000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('15',to_date('30/03/11','DD/MM/RR'),'7000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('16',to_date('30/04/11','DD/MM/RR'),'7000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('17',to_date('30/05/11','DD/MM/RR'),'7000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('18',to_date('30/06/11','DD/MM/RR'),'7000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('19',to_date('30/07/11','DD/MM/RR'),'9000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('20',to_date('30/08/11','DD/MM/RR'),'9000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('21',to_date('30/09/11','DD/MM/RR'),'9000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('22',to_date('30/10/11','DD/MM/RR'),'9000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('23',to_date('30/11/11','DD/MM/RR'),'9000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('24',to_date('28/12/11','DD/MM/RR'),'9000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('25',to_date('30/01/11','DD/MM/RR'),'7500');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('26',to_date('28/02/11','DD/MM/RR'),'7500');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('27',to_date('30/03/11','DD/MM/RR'),'7500');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('28',to_date('30/04/11','DD/MM/RR'),'7500');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('29',to_date('30/05/11','DD/MM/RR'),'8000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('30',to_date('30/06/11','DD/MM/RR'),'8000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('31',to_date('30/07/11','DD/MM/RR'),'9000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('32',to_date('30/08/11','DD/MM/RR'),'9000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('33',to_date('30/09/11','DD/MM/RR'),'9000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('34',to_date('30/10/11','DD/MM/RR'),'9000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('35',to_date('30/11/11','DD/MM/RR'),'9000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('36',to_date('30/12/11','DD/MM/RR'),'9000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('37',to_date('30/01/11','DD/MM/RR'),'6000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('38',to_date('28/02/11','DD/MM/RR'),'7500');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('39',to_date('30/03/11','DD/MM/RR'),'7500');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('40',to_date('30/04/11','DD/MM/RR'),'7500');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('41',to_date('30/05/11','DD/MM/RR'),'8500');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('42',to_date('30/06/11','DD/MM/RR'),'8000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('43',to_date('30/07/11','DD/MM/RR'),'8700');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('44',to_date('30/08/11','DD/MM/RR'),'8700');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('45',to_date('30/09/11','DD/MM/RR'),'9000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('46',to_date('30/10/11','DD/MM/RR'),'9000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('47',to_date('30/11/11','DD/MM/RR'),'9000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('48',to_date('30/12/11','DD/MM/RR'),'9400');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('49',to_date('30/01/11','DD/MM/RR'),'5000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('50',to_date('28/02/11','DD/MM/RR'),'5500');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('51',to_date('30/03/11','DD/MM/RR'),'5500');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('52',to_date('30/04/11','DD/MM/RR'),'5500');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('53',to_date('30/05/11','DD/MM/RR'),'6500');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('54',to_date('30/06/11','DD/MM/RR'),'6000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('55',to_date('30/07/11','DD/MM/RR'),'6700');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('57',to_date('30/08/11','DD/MM/RR'),'6700');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('58',to_date('30/09/11','DD/MM/RR'),'7000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('59',to_date('30/10/11','DD/MM/RR'),'7000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('60',to_date('30/11/11','DD/MM/RR'),'7000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('61',to_date('30/12/11','DD/MM/RR'),'7400');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('62',to_date('30/01/11','DD/MM/RR'),'320');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('63',to_date('28/02/11','DD/MM/RR'),'320');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('64',to_date('30/03/11','DD/MM/RR'),'320');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('65',to_date('30/04/11','DD/MM/RR'),'320');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('66',to_date('30/05/11','DD/MM/RR'),'320');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('67',to_date('30/06/11','DD/MM/RR'),'512');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('68',to_date('30/07/11','DD/MM/RR'),'512');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('69',to_date('30/08/11','DD/MM/RR'),'513');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('70',to_date('30/09/11','DD/MM/RR'),'610');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('71',to_date('30/10/11','DD/MM/RR'),'610');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('72',to_date('30/11/11','DD/MM/RR'),'620');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('73',to_date('30/12/11','DD/MM/RR'),'630');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('74',to_date('30/01/11','DD/MM/RR'),'320');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('75',to_date('28/02/11','DD/MM/RR'),'325');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('76',to_date('30/03/11','DD/MM/RR'),'320');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('77',to_date('30/04/11','DD/MM/RR'),'332');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('78',to_date('30/05/11','DD/MM/RR'),'320');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('79',to_date('30/06/11','DD/MM/RR'),'512');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('80',to_date('30/07/11','DD/MM/RR'),'512');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('81',to_date('30/08/11','DD/MM/RR'),'527');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('82',to_date('30/09/11','DD/MM/RR'),'630');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('83',to_date('30/10/11','DD/MM/RR'),'610');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('84',to_date('30/11/11','DD/MM/RR'),'635');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('85',to_date('30/12/11','DD/MM/RR'),'680');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('86',to_date('30/01/11','DD/MM/RR'),'324');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('87',to_date('28/02/11','DD/MM/RR'),'326');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('88',to_date('30/03/11','DD/MM/RR'),'350');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('89',to_date('30/04/11','DD/MM/RR'),'382');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('90',to_date('30/05/11','DD/MM/RR'),'387');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('91',to_date('30/06/11','DD/MM/RR'),'500');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('92',to_date('30/07/11','DD/MM/RR'),'512');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('93',to_date('30/08/11','DD/MM/RR'),'517');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('94',to_date('30/09/11','DD/MM/RR'),'700');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('95',to_date('30/10/11','DD/MM/RR'),'610');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('96',to_date('30/11/11','DD/MM/RR'),'624');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('97',to_date('30/12/11','DD/MM/RR'),'701');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('98',to_date('30/01/11','DD/MM/RR'),'314');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('99',to_date('28/02/11','DD/MM/RR'),'226');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('100',to_date('30/03/11','DD/MM/RR'),'550');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('101',to_date('30/04/11','DD/MM/RR'),'482');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('102',to_date('30/05/11','DD/MM/RR'),'287');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('103',to_date('30/06/11','DD/MM/RR'),'300');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('104',to_date('30/07/11','DD/MM/RR'),'312');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('105',to_date('30/08/11','DD/MM/RR'),'517');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('106',to_date('30/09/11','DD/MM/RR'),'500');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('107',to_date('30/10/11','DD/MM/RR'),'510');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('108',to_date('30/11/11','DD/MM/RR'),'524');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('109',to_date('30/12/11','DD/MM/RR'),'501');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('110',to_date('30/01/11','DD/MM/RR'),'414');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('111',to_date('28/02/11','DD/MM/RR'),'426');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('112',to_date('30/03/11','DD/MM/RR'),'450');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('113',to_date('30/04/11','DD/MM/RR'),'482');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('114',to_date('30/05/11','DD/MM/RR'),'487');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('115',to_date('30/06/11','DD/MM/RR'),'400');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('116',to_date('30/07/11','DD/MM/RR'),'412');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('117',to_date('30/08/11','DD/MM/RR'),'417');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('118',to_date('30/09/11','DD/MM/RR'),'600');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('119',to_date('30/10/11','DD/MM/RR'),'610');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('120',to_date('30/11/11','DD/MM/RR'),'624');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('121',to_date('30/12/11','DD/MM/RR'),'601');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('122',to_date('30/01/11','DD/MM/RR'),'800');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('123',to_date('28/02/11','DD/MM/RR'),'826');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('124',to_date('30/03/11','DD/MM/RR'),'850');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('125',to_date('30/04/11','DD/MM/RR'),'982');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('126',to_date('30/05/11','DD/MM/RR'),'987');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('127',to_date('30/06/11','DD/MM/RR'),'980');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('128',to_date('30/07/11','DD/MM/RR'),'982');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('129',to_date('30/08/11','DD/MM/RR'),'917');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('130',to_date('30/09/11','DD/MM/RR'),'900');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('131',to_date('30/10/11','DD/MM/RR'),'910');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('132',to_date('30/11/11','DD/MM/RR'),'924');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('133',to_date('30/12/11','DD/MM/RR'),'901');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('290',to_date('30/01/11','DD/MM/RR'),'820');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('291',to_date('28/02/11','DD/MM/RR'),'802');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('292',to_date('30/03/11','DD/MM/RR'),'802');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('293',to_date('30/04/11','DD/MM/RR'),'800');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('294',to_date('30/05/11','DD/MM/RR'),'800');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('295',to_date('30/06/11','DD/MM/RR'),'780');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('296',to_date('30/07/11','DD/MM/RR'),'782');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('297',to_date('30/08/11','DD/MM/RR'),'717');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('298',to_date('30/09/11','DD/MM/RR'),'700');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('299',to_date('30/10/11','DD/MM/RR'),'710');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('300',to_date('30/11/11','DD/MM/RR'),'824');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('301',to_date('30/12/11','DD/MM/RR'),'801');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('134',to_date('30/01/11','DD/MM/RR'),'700');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('135',to_date('28/02/11','DD/MM/RR'),'726');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('136',to_date('30/03/11','DD/MM/RR'),'750');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('137',to_date('30/04/11','DD/MM/RR'),'972');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('138',to_date('30/05/11','DD/MM/RR'),'977');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('139',to_date('30/06/11','DD/MM/RR'),'970');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('140',to_date('30/07/11','DD/MM/RR'),'972');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('141',to_date('30/08/11','DD/MM/RR'),'900');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('142',to_date('30/09/11','DD/MM/RR'),'900');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('143',to_date('30/10/11','DD/MM/RR'),'900');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('144',to_date('30/11/11','DD/MM/RR'),'904');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('145',to_date('30/12/11','DD/MM/RR'),'901');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('146',to_date('30/01/11','DD/MM/RR'),'900');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('147',to_date('28/02/11','DD/MM/RR'),'926');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('148',to_date('30/03/11','DD/MM/RR'),'950');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('149',to_date('30/04/11','DD/MM/RR'),'982');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('150',to_date('30/05/11','DD/MM/RR'),'987');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('151',to_date('30/06/11','DD/MM/RR'),'980');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('152',to_date('30/07/11','DD/MM/RR'),'982');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('153',to_date('30/08/11','DD/MM/RR'),'1017');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('154',to_date('30/09/11','DD/MM/RR'),'1000');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('155',to_date('30/10/11','DD/MM/RR'),'1010');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('156',to_date('30/11/11','DD/MM/RR'),'1024');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('157',to_date('30/12/11','DD/MM/RR'),'1001');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('158',to_date('30/01/11','DD/MM/RR'),'700');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('159',to_date('28/02/11','DD/MM/RR'),'826');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('160',to_date('30/03/11','DD/MM/RR'),'750');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('161',to_date('30/04/11','DD/MM/RR'),'882');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('162',to_date('30/05/11','DD/MM/RR'),'787');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('163',to_date('30/06/11','DD/MM/RR'),'880');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('164',to_date('30/07/11','DD/MM/RR'),'782');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('165',to_date('30/08/11','DD/MM/RR'),'817');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('166',to_date('30/09/11','DD/MM/RR'),'700');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('167',to_date('30/10/11','DD/MM/RR'),'810');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('168',to_date('30/11/11','DD/MM/RR'),'724');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('169',to_date('30/12/11','DD/MM/RR'),'801');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('170',to_date('30/01/11','DD/MM/RR'),'700');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('171',to_date('28/02/11','DD/MM/RR'),'826');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('172',to_date('30/03/11','DD/MM/RR'),'750');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('173',to_date('30/04/11','DD/MM/RR'),'882');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('174',to_date('30/05/11','DD/MM/RR'),'787');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('175',to_date('30/06/11','DD/MM/RR'),'880');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('176',to_date('30/07/11','DD/MM/RR'),'782');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('177',to_date('30/08/11','DD/MM/RR'),'817');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('178',to_date('30/09/11','DD/MM/RR'),'700');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('179',to_date('30/10/11','DD/MM/RR'),'810');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('180',to_date('30/11/11','DD/MM/RR'),'724');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('181',to_date('30/12/11','DD/MM/RR'),'801');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('182',to_date('30/01/11','DD/MM/RR'),'700');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('183',to_date('28/02/11','DD/MM/RR'),'826');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('184',to_date('30/03/11','DD/MM/RR'),'750');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('185',to_date('30/04/11','DD/MM/RR'),'882');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('186',to_date('30/05/11','DD/MM/RR'),'787');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('187',to_date('30/06/11','DD/MM/RR'),'880');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('188',to_date('30/07/11','DD/MM/RR'),'782');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('189',to_date('30/08/11','DD/MM/RR'),'817');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('190',to_date('30/09/11','DD/MM/RR'),'700');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('191',to_date('30/10/11','DD/MM/RR'),'810');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('192',to_date('30/11/11','DD/MM/RR'),'724');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('193',to_date('30/12/11','DD/MM/RR'),'801');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('194',to_date('30/01/11','DD/MM/RR'),'700');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('195',to_date('28/02/11','DD/MM/RR'),'826');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('196',to_date('30/03/11','DD/MM/RR'),'750');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('197',to_date('30/04/11','DD/MM/RR'),'882');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('198',to_date('30/05/11','DD/MM/RR'),'787');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('199',to_date('30/06/11','DD/MM/RR'),'880');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('200',to_date('30/07/11','DD/MM/RR'),'782');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('201',to_date('30/08/11','DD/MM/RR'),'817');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('202',to_date('30/09/11','DD/MM/RR'),'700');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('203',to_date('30/10/11','DD/MM/RR'),'810');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('204',to_date('30/11/11','DD/MM/RR'),'724');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('205',to_date('30/12/11','DD/MM/RR'),'801');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('206',to_date('30/01/11','DD/MM/RR'),'700');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('207',to_date('28/02/11','DD/MM/RR'),'826');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('208',to_date('30/03/11','DD/MM/RR'),'750');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('209',to_date('30/04/11','DD/MM/RR'),'882');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('210',to_date('30/05/11','DD/MM/RR'),'787');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('211',to_date('30/06/11','DD/MM/RR'),'880');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('212',to_date('30/07/11','DD/MM/RR'),'782');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('213',to_date('30/08/11','DD/MM/RR'),'817');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('214',to_date('30/09/11','DD/MM/RR'),'700');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('215',to_date('30/10/11','DD/MM/RR'),'810');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('216',to_date('30/11/11','DD/MM/RR'),'724');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('217',to_date('30/12/11','DD/MM/RR'),'801');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('218',to_date('30/01/11','DD/MM/RR'),'700');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('219',to_date('28/02/11','DD/MM/RR'),'826');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('220',to_date('30/03/11','DD/MM/RR'),'750');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('221',to_date('30/04/11','DD/MM/RR'),'882');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('222',to_date('30/05/11','DD/MM/RR'),'787');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('223',to_date('30/06/11','DD/MM/RR'),'880');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('224',to_date('30/07/11','DD/MM/RR'),'782');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('225',to_date('30/08/11','DD/MM/RR'),'817');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('226',to_date('30/09/11','DD/MM/RR'),'700');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('227',to_date('30/10/11','DD/MM/RR'),'810');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('228',to_date('30/11/11','DD/MM/RR'),'724');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('229',to_date('30/12/11','DD/MM/RR'),'801');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('230',to_date('30/01/11','DD/MM/RR'),'700');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('231',to_date('28/02/11','DD/MM/RR'),'826');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('232',to_date('30/03/11','DD/MM/RR'),'750');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('233',to_date('30/04/11','DD/MM/RR'),'882');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('234',to_date('30/05/11','DD/MM/RR'),'787');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('235',to_date('30/06/11','DD/MM/RR'),'880');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('236',to_date('30/07/11','DD/MM/RR'),'782');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('237',to_date('30/08/11','DD/MM/RR'),'817');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('238',to_date('30/09/11','DD/MM/RR'),'700');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('239',to_date('30/10/11','DD/MM/RR'),'810');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('240',to_date('30/11/11','DD/MM/RR'),'724');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('241',to_date('30/12/11','DD/MM/RR'),'801');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('242',to_date('30/01/11','DD/MM/RR'),'700');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('243',to_date('28/02/11','DD/MM/RR'),'826');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('244',to_date('30/03/11','DD/MM/RR'),'750');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('245',to_date('30/04/11','DD/MM/RR'),'882');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('246',to_date('30/05/11','DD/MM/RR'),'787');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('247',to_date('30/06/11','DD/MM/RR'),'880');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('248',to_date('30/07/11','DD/MM/RR'),'782');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('249',to_date('30/08/11','DD/MM/RR'),'817');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('250',to_date('30/09/11','DD/MM/RR'),'700');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('251',to_date('30/10/11','DD/MM/RR'),'810');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('252',to_date('30/11/11','DD/MM/RR'),'724');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('253',to_date('30/12/11','DD/MM/RR'),'801');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('254',to_date('30/01/11','DD/MM/RR'),'700');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('255',to_date('28/02/11','DD/MM/RR'),'826');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('256',to_date('30/03/11','DD/MM/RR'),'750');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('257',to_date('30/04/11','DD/MM/RR'),'882');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('258',to_date('30/05/11','DD/MM/RR'),'787');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('259',to_date('30/06/11','DD/MM/RR'),'880');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('260',to_date('30/07/11','DD/MM/RR'),'782');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('261',to_date('30/08/11','DD/MM/RR'),'817');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('262',to_date('30/09/11','DD/MM/RR'),'700');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('263',to_date('30/10/11','DD/MM/RR'),'810');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('264',to_date('30/11/11','DD/MM/RR'),'724');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('265',to_date('30/12/11','DD/MM/RR'),'801');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('266',to_date('30/01/11','DD/MM/RR'),'700');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('267',to_date('28/02/11','DD/MM/RR'),'826');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('268',to_date('30/03/11','DD/MM/RR'),'750');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('269',to_date('30/04/11','DD/MM/RR'),'882');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('270',to_date('30/05/11','DD/MM/RR'),'787');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('271',to_date('30/06/11','DD/MM/RR'),'880');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('272',to_date('30/07/11','DD/MM/RR'),'782');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('273',to_date('30/08/11','DD/MM/RR'),'817');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('274',to_date('30/09/11','DD/MM/RR'),'700');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('275',to_date('30/10/11','DD/MM/RR'),'810');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('276',to_date('30/11/11','DD/MM/RR'),'724');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('277',to_date('30/12/11','DD/MM/RR'),'801');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('278',to_date('30/01/11','DD/MM/RR'),'700');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('279',to_date('28/02/11','DD/MM/RR'),'826');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('280',to_date('30/03/11','DD/MM/RR'),'750');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('281',to_date('30/04/11','DD/MM/RR'),'882');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('282',to_date('30/05/11','DD/MM/RR'),'787');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('283',to_date('30/06/11','DD/MM/RR'),'880');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('284',to_date('30/07/11','DD/MM/RR'),'782');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('285',to_date('30/08/11','DD/MM/RR'),'817');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('286',to_date('30/09/11','DD/MM/RR'),'700');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('287',to_date('30/10/11','DD/MM/RR'),'810');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('288',to_date('30/11/11','DD/MM/RR'),'724');
Insert into APP.S_SALARY (CONSEC,DATEPAYMENT,PAYMENT) values ('289',to_date('30/12/11','DD/MM/RR'),'801');
REM INSERTING into APP.S_TITLE
SET DEFINE OFF;
Insert into APP.S_TITLE (TITLE) values ('President');
Insert into APP.S_TITLE (TITLE) values ('Sales Representative');
Insert into APP.S_TITLE (TITLE) values ('Stock Clerk');
Insert into APP.S_TITLE (TITLE) values ('VP, Administration');
Insert into APP.S_TITLE (TITLE) values ('VP, Finance');
Insert into APP.S_TITLE (TITLE) values ('VP, Operations');
Insert into APP.S_TITLE (TITLE) values ('VP, Sales');
Insert into APP.S_TITLE (TITLE) values ('Warehouse Manager');
REM INSERTING into APP.S_WAREHOUSE
SET DEFINE OFF;
Insert into APP.S_WAREHOUSE (ID,REGION_ID,ADDRESS,CITY,STATE,COUNTRY,ZIP_CODE,PHONE,MANAGER_ID) values ('101','1','283 King Street','Seattle','WA','USA',null,null,'6');
Insert into APP.S_WAREHOUSE (ID,REGION_ID,ADDRESS,CITY,STATE,COUNTRY,ZIP_CODE,PHONE,MANAGER_ID) values ('10501','5','5 Modrany','Bratislava',null,'Czechozlovakia',null,null,'10');
Insert into APP.S_WAREHOUSE (ID,REGION_ID,ADDRESS,CITY,STATE,COUNTRY,ZIP_CODE,PHONE,MANAGER_ID) values ('201','2','68 Via Centrale','Sao Paolo',null,'Brazil',null,null,'7');
Insert into APP.S_WAREHOUSE (ID,REGION_ID,ADDRESS,CITY,STATE,COUNTRY,ZIP_CODE,PHONE,MANAGER_ID) values ('301','3','6921 King Way','Lagos',null,'Nigeria',null,null,'8');
Insert into APP.S_WAREHOUSE (ID,REGION_ID,ADDRESS,CITY,STATE,COUNTRY,ZIP_CODE,PHONE,MANAGER_ID) values ('401','4','86 Chu Street','Hong Kong',null,null,null,null,'9');
--------------------------------------------------------
--  DDL for Index S_INVENTORY_PRO_IDX
--------------------------------------------------------

  CREATE INDEX "APP"."S_INVENTORY_PRO_IDX" ON "APP"."S_INVENTORY" ("PRODUCT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index S_INVENTORY_WAR_IDX
--------------------------------------------------------

  CREATE INDEX "APP"."S_INVENTORY_WAR_IDX" ON "APP"."S_INVENTORY" ("WAREHOUSE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index S_ITEM_ORDID_PRODID_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "APP"."S_ITEM_ORDID_PRODID_UK" ON "APP"."S_ITEM" ("ORD_ID", "PRODUCT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index S_ITEM_ORDID_ITEMID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "APP"."S_ITEM_ORDID_ITEMID_PK" ON "APP"."S_ITEM" ("ORD_ID", "ITEM_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index S_WAREHOUSE_REG_IDX
--------------------------------------------------------

  CREATE INDEX "APP"."S_WAREHOUSE_REG_IDX" ON "APP"."S_WAREHOUSE" ("REGION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index S_CUSTOMER_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "APP"."S_CUSTOMER_ID_PK" ON "APP"."S_CUSTOMER" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index S_EMP_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "APP"."S_EMP_ID_PK" ON "APP"."S_EMP" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index S_TITLE_TITLE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "APP"."S_TITLE_TITLE_PK" ON "APP"."S_TITLE" ("TITLE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index S_CUSTOMER_SAL_IDX
--------------------------------------------------------

  CREATE INDEX "APP"."S_CUSTOMER_SAL_IDX" ON "APP"."S_CUSTOMER" ("SALES_REP_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index S_ORD_SAL_IDX
--------------------------------------------------------

  CREATE INDEX "APP"."S_ORD_SAL_IDX" ON "APP"."S_ORD" ("SALES_REP_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index S_PRODUCT_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "APP"."S_PRODUCT_ID_PK" ON "APP"."S_PRODUCT" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index S_WAREHOUSE_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "APP"."S_WAREHOUSE_ID_PK" ON "APP"."S_WAREHOUSE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index S_ITEM_ORD_IDX
--------------------------------------------------------

  CREATE INDEX "APP"."S_ITEM_ORD_IDX" ON "APP"."S_ITEM" ("ORD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index S_DEPT_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "APP"."S_DEPT_ID_PK" ON "APP"."S_DEPT" ("REGION_ID", "ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index S_EMP_USERID_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "APP"."S_EMP_USERID_UK" ON "APP"."S_EMP" ("USERID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index S_EMP_TITLE_EMP_ID_CONSEC_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "APP"."S_EMP_TITLE_EMP_ID_CONSEC_ID" ON "APP"."S_EMP_TITLE" ("EMP_ID", "CONSEC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index S_DEPT_NAME_REGION_ID_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "APP"."S_DEPT_NAME_REGION_ID_UK" ON "APP"."S_DEPT" ("NAME", "REGION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index S_ORD_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "APP"."S_ORD_ID_PK" ON "APP"."S_ORD" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index S_PRODUCT_NAME_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "APP"."S_PRODUCT_NAME_UK" ON "APP"."S_PRODUCT" ("NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index S_WAREHOUSE_MAN_IDX
--------------------------------------------------------

  CREATE INDEX "APP"."S_WAREHOUSE_MAN_IDX" ON "APP"."S_WAREHOUSE" ("MANAGER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index S_INVENTORY_PRODID_WARID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "APP"."S_INVENTORY_PRODID_WARID_PK" ON "APP"."S_INVENTORY" ("PRODUCT_ID", "WAREHOUSE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SALARY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "APP"."SALARY_PK" ON "APP"."S_SALARY" ("CONSEC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index S_ITEM_PRO_IDX
--------------------------------------------------------

  CREATE INDEX "APP"."S_ITEM_PRO_IDX" ON "APP"."S_ITEM" ("PRODUCT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index S_REGION_NAME_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "APP"."S_REGION_NAME_UK" ON "APP"."S_REGION" ("NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index S_REGION_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "APP"."S_REGION_ID_PK" ON "APP"."S_REGION" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index S_ORD_CUS_IDX
--------------------------------------------------------

  CREATE INDEX "APP"."S_ORD_CUS_IDX" ON "APP"."S_ORD" ("CUSTOMER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index S_CUSTOMER_REG_IDX
--------------------------------------------------------

  CREATE INDEX "APP"."S_CUSTOMER_REG_IDX" ON "APP"."S_CUSTOMER" ("REGION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table S_ORD
--------------------------------------------------------

  ALTER TABLE "APP"."S_ORD" MODIFY ("ID" CONSTRAINT "S_ORD_ID_NN" NOT NULL ENABLE);
  ALTER TABLE "APP"."S_ORD" MODIFY ("CUSTOMER_ID" CONSTRAINT "S_ORD_CUSTOMER_ID_NN" NOT NULL ENABLE);
  ALTER TABLE "APP"."S_ORD" ADD CONSTRAINT "S_ORD_PAYMENT_TYPE_CK" CHECK (payment_type in ('CASH', 'CREDIT')) ENABLE;
  ALTER TABLE "APP"."S_ORD" ADD CONSTRAINT "S_ORD_ORDER_FILLED_CK" CHECK (order_filled in ('Y', 'N')) ENABLE;
  ALTER TABLE "APP"."S_ORD" ADD CONSTRAINT "S_ORD_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table S_CUSTOMER
--------------------------------------------------------

  ALTER TABLE "APP"."S_CUSTOMER" MODIFY ("ID" CONSTRAINT "S_CUSTOMER_ID_NN" NOT NULL ENABLE);
  ALTER TABLE "APP"."S_CUSTOMER" MODIFY ("NAME" CONSTRAINT "S_CUSTOMER_NAME_NN" NOT NULL ENABLE);
  ALTER TABLE "APP"."S_CUSTOMER" ADD CONSTRAINT "S_CUSTOMER_CREDIT_RATING_CK" CHECK (credit_rating IN ('EXCELLENT', 'GOOD', 'POOR')) ENABLE;
  ALTER TABLE "APP"."S_CUSTOMER" ADD CONSTRAINT "S_CUSTOMER_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table S_EMP
--------------------------------------------------------

  ALTER TABLE "APP"."S_EMP" MODIFY ("ID" CONSTRAINT "S_EMP_ID_NN" NOT NULL ENABLE);
  ALTER TABLE "APP"."S_EMP" MODIFY ("LAST_NAME" CONSTRAINT "S_EMP_LAST_NAME_NN" NOT NULL ENABLE);
  ALTER TABLE "APP"."S_EMP" ADD CONSTRAINT "S_EMP_COMMISSION_PCT_CK" CHECK (commission_pct IN (10, 12.5, 15, 17.5, 20)) ENABLE;
  ALTER TABLE "APP"."S_EMP" ADD CONSTRAINT "S_EMP_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "APP"."S_EMP" ADD CONSTRAINT "S_EMP_USERID_UK" UNIQUE ("USERID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table S_TITLE
--------------------------------------------------------

  ALTER TABLE "APP"."S_TITLE" MODIFY ("TITLE" CONSTRAINT "S_TITLE_TITLE_NN" NOT NULL ENABLE);
  ALTER TABLE "APP"."S_TITLE" ADD CONSTRAINT "S_TITLE_TITLE_PK" PRIMARY KEY ("TITLE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table S_SALARY
--------------------------------------------------------

  ALTER TABLE "APP"."S_SALARY" MODIFY ("CONSEC" NOT NULL ENABLE);
  ALTER TABLE "APP"."S_SALARY" MODIFY ("DATEPAYMENT" NOT NULL ENABLE);
  ALTER TABLE "APP"."S_SALARY" ADD CONSTRAINT "SALARY_PK" PRIMARY KEY ("CONSEC")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table S_WAREHOUSE
--------------------------------------------------------

  ALTER TABLE "APP"."S_WAREHOUSE" MODIFY ("ID" CONSTRAINT "S_WAREHOUSE_ID_NN" NOT NULL ENABLE);
  ALTER TABLE "APP"."S_WAREHOUSE" MODIFY ("REGION_ID" CONSTRAINT "S_WAREHOUSE_REGION_ID_NN" NOT NULL ENABLE);
  ALTER TABLE "APP"."S_WAREHOUSE" ADD CONSTRAINT "S_WAREHOUSE_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table S_DEPT
--------------------------------------------------------

  ALTER TABLE "APP"."S_DEPT" MODIFY ("ID" CONSTRAINT "S_DEPT_ID_NN" NOT NULL ENABLE);
  ALTER TABLE "APP"."S_DEPT" MODIFY ("NAME" CONSTRAINT "S_DEPT_NAME_NN" NOT NULL ENABLE);
  ALTER TABLE "APP"."S_DEPT" ADD CONSTRAINT "S_DEPT_ID_PK" PRIMARY KEY ("REGION_ID", "ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "APP"."S_DEPT" ADD CONSTRAINT "S_DEPT_NAME_REGION_ID_UK" UNIQUE ("NAME", "REGION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table S_PRODUCT
--------------------------------------------------------

  ALTER TABLE "APP"."S_PRODUCT" MODIFY ("ID" CONSTRAINT "S_PRODUCT_ID_NN" NOT NULL ENABLE);
  ALTER TABLE "APP"."S_PRODUCT" MODIFY ("NAME" CONSTRAINT "S_PRODUCT_NAME_NN" NOT NULL ENABLE);
  ALTER TABLE "APP"."S_PRODUCT" ADD CONSTRAINT "S_PRODUCT_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "APP"."S_PRODUCT" ADD CONSTRAINT "S_PRODUCT_NAME_UK" UNIQUE ("NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table S_INVENTORY
--------------------------------------------------------

  ALTER TABLE "APP"."S_INVENTORY" MODIFY ("PRODUCT_ID" CONSTRAINT "S_INVENTORY_PRODUCT_ID_NN" NOT NULL ENABLE);
  ALTER TABLE "APP"."S_INVENTORY" MODIFY ("WAREHOUSE_ID" CONSTRAINT "S_INVENTORY_WAREHOUSE_ID_NN" NOT NULL ENABLE);
  ALTER TABLE "APP"."S_INVENTORY" ADD CONSTRAINT "S_INVENTORY_PRODID_WARID_PK" PRIMARY KEY ("PRODUCT_ID", "WAREHOUSE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table S_REGION
--------------------------------------------------------

  ALTER TABLE "APP"."S_REGION" MODIFY ("ID" CONSTRAINT "S_REGION_ID_NN" NOT NULL ENABLE);
  ALTER TABLE "APP"."S_REGION" MODIFY ("NAME" CONSTRAINT "S_REGION_NAME_NN" NOT NULL ENABLE);
  ALTER TABLE "APP"."S_REGION" ADD CONSTRAINT "S_REGION_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "APP"."S_REGION" ADD CONSTRAINT "S_REGION_NAME_UK" UNIQUE ("NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table S_EMP_TITLE
--------------------------------------------------------

  ALTER TABLE "APP"."S_EMP_TITLE" MODIFY ("EMP_ID" NOT NULL ENABLE);
  ALTER TABLE "APP"."S_EMP_TITLE" MODIFY ("DEPT_ID" NOT NULL ENABLE);
  ALTER TABLE "APP"."S_EMP_TITLE" MODIFY ("REGION_ID" NOT NULL ENABLE);
  ALTER TABLE "APP"."S_EMP_TITLE" MODIFY ("CONSEC" NOT NULL ENABLE);
  ALTER TABLE "APP"."S_EMP_TITLE" ADD CONSTRAINT "S_EMP_TITLE_EMP_ID_CONSEC_ID" PRIMARY KEY ("EMP_ID", "CONSEC")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table S_ITEM
--------------------------------------------------------

  ALTER TABLE "APP"."S_ITEM" MODIFY ("ORD_ID" CONSTRAINT "S_ITEM_ORD_ID_NN" NOT NULL ENABLE);
  ALTER TABLE "APP"."S_ITEM" MODIFY ("ITEM_ID" CONSTRAINT "S_ITEM_ITEM_ID_NN" NOT NULL ENABLE);
  ALTER TABLE "APP"."S_ITEM" MODIFY ("PRODUCT_ID" CONSTRAINT "S_ITEM_PRODUCT_ID_NN" NOT NULL ENABLE);
  ALTER TABLE "APP"."S_ITEM" ADD CONSTRAINT "S_ITEM_ORDID_ITEMID_PK" PRIMARY KEY ("ORD_ID", "ITEM_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "APP"."S_ITEM" ADD CONSTRAINT "S_ITEM_ORDID_PRODID_UK" UNIQUE ("ORD_ID", "PRODUCT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table S_CUSTOMER
--------------------------------------------------------

  ALTER TABLE "APP"."S_CUSTOMER" ADD CONSTRAINT "S_SALES_REP_ID_FK" FOREIGN KEY ("SALES_REP_ID")
	  REFERENCES "APP"."S_EMP" ("ID") ENABLE;
  ALTER TABLE "APP"."S_CUSTOMER" ADD CONSTRAINT "S_CUSTOMER_REGION_ID_FK" FOREIGN KEY ("REGION_ID")
	  REFERENCES "APP"."S_REGION" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table S_DEPT
--------------------------------------------------------

  ALTER TABLE "APP"."S_DEPT" ADD CONSTRAINT "S_DEPT_REGION_ID_FK" FOREIGN KEY ("REGION_ID")
	  REFERENCES "APP"."S_REGION" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table S_EMP_TITLE
--------------------------------------------------------

  ALTER TABLE "APP"."S_EMP_TITLE" ADD CONSTRAINT "S_EMP_TITLE_S_EMP_FK" FOREIGN KEY ("EMP_ID")
	  REFERENCES "APP"."S_EMP" ("ID") ENABLE;
  ALTER TABLE "APP"."S_EMP_TITLE" ADD CONSTRAINT "S_EMP_TITLE_S_TITLE_FK" FOREIGN KEY ("TITLE")
	  REFERENCES "APP"."S_TITLE" ("TITLE") ENABLE;
  ALTER TABLE "APP"."S_EMP_TITLE" ADD CONSTRAINT "S_EMP_TITLE_S_DEPT_FK" FOREIGN KEY ("REGION_ID", "DEPT_ID")
	  REFERENCES "APP"."S_DEPT" ("REGION_ID", "ID") ENABLE;
  ALTER TABLE "APP"."S_EMP_TITLE" ADD CONSTRAINT "S_EMP_TITLE_S_SALARY_FK" FOREIGN KEY ("CONSEC")
	  REFERENCES "APP"."S_SALARY" ("CONSEC") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table S_INVENTORY
--------------------------------------------------------

  ALTER TABLE "APP"."S_INVENTORY" ADD CONSTRAINT "S_INVENTORY_PRODUCT_ID_FK" FOREIGN KEY ("PRODUCT_ID")
	  REFERENCES "APP"."S_PRODUCT" ("ID") ENABLE;
  ALTER TABLE "APP"."S_INVENTORY" ADD CONSTRAINT "S_INVENTORY_WAREHOUSE_ID_FK" FOREIGN KEY ("WAREHOUSE_ID")
	  REFERENCES "APP"."S_WAREHOUSE" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table S_ITEM
--------------------------------------------------------

  ALTER TABLE "APP"."S_ITEM" ADD CONSTRAINT "S_ITEM_ORD_ID_FK" FOREIGN KEY ("ORD_ID")
	  REFERENCES "APP"."S_ORD" ("ID") ENABLE;
  ALTER TABLE "APP"."S_ITEM" ADD CONSTRAINT "S_ITEM_PRODUCT_ID_FK" FOREIGN KEY ("PRODUCT_ID")
	  REFERENCES "APP"."S_PRODUCT" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table S_ORD
--------------------------------------------------------

  ALTER TABLE "APP"."S_ORD" ADD CONSTRAINT "S_ORD_CUSTOMER_ID_FK" FOREIGN KEY ("CUSTOMER_ID")
	  REFERENCES "APP"."S_CUSTOMER" ("ID") ENABLE;
  ALTER TABLE "APP"."S_ORD" ADD CONSTRAINT "S_ORD_SALES_REP_ID_FK" FOREIGN KEY ("SALES_REP_ID")
	  REFERENCES "APP"."S_EMP" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table S_WAREHOUSE
--------------------------------------------------------

  ALTER TABLE "APP"."S_WAREHOUSE" ADD CONSTRAINT "S_WAREHOUSE_MANAGER_ID_FK" FOREIGN KEY ("MANAGER_ID")
	  REFERENCES "APP"."S_EMP" ("ID") ENABLE;
  ALTER TABLE "APP"."S_WAREHOUSE" ADD CONSTRAINT "S_WAREHOUSE_REGION_ID_FK" FOREIGN KEY ("REGION_ID")
	  REFERENCES "APP"."S_REGION" ("ID") ENABLE;
