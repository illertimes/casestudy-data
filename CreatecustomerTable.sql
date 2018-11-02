USE CASESTUDY;

DROP TABLE IF EXISTS CDW_SAPP_D_CUSTOMER;

CREATE EXTERNAL TABLE IF NOT EXISTS CDW_SAPP_D_CUSTOMER
(CUST_SSN DECIMAL(9,0),
CUST_F_NAME VARCHAR(40),
CUST_M_NAME VARCHAR(40),
CUST_L_NAME VARCHAR(40),
CUST_CC_NO VARCHAR(16),
CUST_STREET VARCHAR(38),
CUST_CITY VARCHAR(30),
CUST_STATE VARCHAR(30),
CUST_COUNTRY VARCHAR(30),
CUST_ZIP DECIMAL(7,0),
CUST_PHONE VARCHAR(8),
CUST_EMAIL VARCHAR(40),
LAST_UPDATED TIMESTAMP
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/maria_dev/Credit_Card_System/Customer';