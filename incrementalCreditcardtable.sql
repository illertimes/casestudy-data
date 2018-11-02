USE CASESTUDY;

set hive.exec.dynamic.partition.mode=nonstrict;

INSERT INTO TABLE CDW_SAPP_F_CREDIT_CARD
PARTITION (TRANSACTION_TYPE)
SELECT TRANSACTION_ID,
CUST_CC_NO,
TIMEID,
CUST_SSN,
BRANCH_CODE,
TRANSACTION_VALUE,
TRANSACTION_TYPE
FROM TEMP_CDW_SAPP_F_CREDIT_CARD;