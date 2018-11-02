SELECT c.ssn as CUST_SSN, c.first_name as CUST_F_NAME, c.middle_name as CUST_M_NAME, c.last_name as CUST_L_NAME,
											cc.credit_card_no as CUST_CC_NO, CONCAT(CONCAT(c.apt_no, ' '), c.street_name) as CUST_STREET,
                                            c.city as CUST_CITY, s.name as CUST_STATE, Countries.name as CUST_COUNTRY, c.zip as CUST_ZIP, c.phone as CUST_PHONE,
                                            c.email as CUST_EMAIL, c.LAST_UPDATED
FROM Customer c 
LEFT JOIN CreditCard cc ON (c.id=cc.customer)
LEFT JOIN State s ON (c.state=s.id)
LEFT JOIN Countries ON (s.country_id=Countries.id);