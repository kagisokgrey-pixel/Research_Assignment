-- Databricks notebook source
CREATE TABLE branch_sandton_accounts (
    account_id     VARCHAR(10),
    account_holder VARCHAR(100)
);

CREATE TABLE branch_rosebank_accounts (
    account_id     VARCHAR(10),
    account_holder VARCHAR(100)
);

INSERT INTO branch_sandton_accounts VALUES
    ('A001', 'Nomvula Dlamini'),
    ('A002', 'David Mokoena'),
    ('A003', 'Lerato Sithole'),
    ('A004', 'Peter Nkosi');

INSERT INTO branch_rosebank_accounts VALUES
    ('A003', 'Lerato Sithole'),
    ('A004', 'Peter Nkosi'),
    ('A005', 'Zanele Khumalo'),
    ('A006', 'Thabo Motha');


CREATE TABLE savings_products (
    product_code VARCHAR(10),
    product_name VARCHAR(100)
);

CREATE TABLE current_products (
    product_code VARCHAR(10),
    product_name VARCHAR(100)
);

INSERT INTO savings_products VALUES
    ('SV01', 'Basic Savings'),
    ('SV02', 'Premium Savings'),
    ('SV03', 'Youth Savings'),
    ('SV04', 'Business Savings');

INSERT INTO current_products VALUES
    ('CR01', 'Standard Current'),
    ('CR02', 'Gold Current'),
    ('SV03', 'Youth Savings'),
    ('CR03', 'Business Current');


CREATE TABLE retail_banking_staff (
    staff_id   VARCHAR(10),
    staff_name VARCHAR(100)
);

CREATE TABLE corporate_banking_staff (
    staff_id   VARCHAR(10),
    staff_name VARCHAR(100)
);

INSERT INTO retail_banking_staff VALUES
    ('S001', 'Mpho Radebe'),
    ('S002', 'Brian Tshabalala'),
    ('S003', 'Aisha Patel'),
    ('S004', 'Kabelo Moabelo');

INSERT INTO corporate_banking_staff VALUES
    ('S003', 'Aisha Patel'),
    ('S005', 'Nandi Dube'),
    ('S006', 'Sipho Khumalo'),
    ('S004', 'Kabelo Moabelo');


CREATE TABLE mobile_branch_cities (
    city_code VARCHAR(10),
    city_name VARCHAR(100)
);

CREATE TABLE digital_branch_cities (
    city_code VARCHAR(10),
    city_name VARCHAR(100)
);

INSERT INTO mobile_branch_cities VALUES
    ('C01', 'Johannesburg'),
    ('C02', 'Pretoria'),
    ('C03', 'Cape Town'),
    ('C04', 'Durban');

INSERT INTO digital_branch_cities VALUES
    ('C03', 'Cape Town'),
    ('C05', 'Polokwane'),
    ('C06', 'Port Elizabeth'),
    ('C01', 'Johannesburg');


CREATE TABLE push_notification_targets (
    customer_id   VARCHAR(10),
    customer_name VARCHAR(100)
);

CREATE TABLE inapp_banner_targets (
    customer_id   VARCHAR(10),
    customer_name VARCHAR(100)
);

INSERT INTO push_notification_targets VALUES
    ('C1001', 'Nomsa Zwane'),
    ('C1002', 'Andile Buthelezi'),
    ('C1003', 'Fatima Mahomed'),
    ('C1004', 'Ryno van Zyl');

INSERT INTO inapp_banner_targets VALUES
    ('C1003', 'Fatima Mahomed'),
    ('C1005', 'Thandeka Cele'),
    ('C1006', 'Samuel Nkosi'),
    ('C1002', 'Andile Buthelezi');


CREATE TABLE atm01_transactions (
    txn_id     VARCHAR(10),
    account_id VARCHAR(10),
    amount     DECIMAL(10,2)
);

CREATE TABLE atm02_transactions (
    txn_id     VARCHAR(10),
    account_id VARCHAR(10),
    amount     DECIMAL(10,2)
);

INSERT INTO atm01_transactions VALUES
    ('T1001', 'A001', 500.00),
    ('T1002', 'A002', 1200.00),
    ('T1003', 'A001', 300.00),
    ('T1004', 'A003', 750.00);

INSERT INTO atm02_transactions VALUES
    ('T1003', 'A001', 300.00),
    ('T1005', 'A004', 900.00),
    ('T1006', 'A002', 450.00),
    ('T1007', 'A005', 150.00);


CREATE TABLE gauteng_loan_applications (
    app_id      VARCHAR(10),
    customer_id VARCHAR(10),
    loan_type   VARCHAR(50)
);

CREATE TABLE western_cape_loan_applications (
    app_id      VARCHAR(10),
    customer_id VARCHAR(10),
    loan_type   VARCHAR(50)
);

INSERT INTO gauteng_loan_applications VALUES
    ('LA001', 'C1001', 'Home Loan'),
    ('LA002', 'C1002', 'Vehicle Loan'),
    ('LA003', 'C1003', 'Personal'),
    ('LA004', 'C1004', 'Home Loan');

INSERT INTO western_cape_loan_applications VALUES
    ('LA003', 'C1003', 'Personal'),
    ('LA005', 'C1005', 'Vehicle Loan'),
    ('LA006', 'C1006', 'Business'),
    ('LA007', 'C1007', 'Home Loan');


CREATE TABLE email_complaints (
    complaint_id VARCHAR(10),
    customer_id  VARCHAR(10)
);

CREATE TABLE app_complaints (
    complaint_id VARCHAR(10),
    customer_id  VARCHAR(10)
);

INSERT INTO email_complaints VALUES
    ('EC001', 'C2001'),
    ('EC002', 'C2002'),
    ('EC003', 'C2003'),
    ('EC004', 'C2004');

INSERT INTO app_complaints VALUES
    ('AC001', 'C2005'),
    ('AC002', 'C2001'),
    ('AC003', 'C2006'),
    ('AC004', 'C2007');


CREATE TABLE april_payments (
    payment_id VARCHAR(10),
    account_id VARCHAR(10),
    amount     DECIMAL(10,2)
);

CREATE TABLE may_payments (
    payment_id VARCHAR(10),
    account_id VARCHAR(10),
    amount     DECIMAL(10,2)
);

INSERT INTO april_payments VALUES
    ('PAY001', 'A001', 12500.00),
    ('PAY002', 'A002', 4800.00),
    ('PAY003', 'A003', 9200.00),
    ('PAY004', 'A004', 3300.00);

INSERT INTO may_payments VALUES
    ('PAY005', 'A001', 12500.00),
    ('PAY006', 'A005', 7600.00),
    ('PAY007', 'A002', 5100.00),
    ('PAY008', 'A006', 2800.00);


CREATE TABLE debit_entries (
    entry_id   VARCHAR(10),
    account_id VARCHAR(10),
    entry_type VARCHAR(10)
);

CREATE TABLE credit_entries (
    entry_id   VARCHAR(10),
    account_id VARCHAR(10),
    entry_type VARCHAR(10)
);

INSERT INTO debit_entries VALUES
    ('DR001', 'A001', 'Debit'),
    ('DR002', 'A002', 'Debit'),
    ('DR003', 'A003', 'Debit'),
    ('DR004', 'A004', 'Debit');

INSERT INTO credit_entries VALUES
    ('CR001', 'A001', 'Credit'),
    ('CR002', 'A005', 'Credit'),
    ('CR003', 'A002', 'Credit'),
    ('CR004', 'A006', 'Credit');

--Q1 : COMBINING ACCOUNT HOLDERS 
SELECT 
    account_id,
    account_holder,
    CASE 
        WHEN account_id IN (SELECT account_id FROM branch_sandton_accounts)
         AND account_id IN (SELECT account_id FROM branch_rosebank_accounts)
        THEN 'Both'
        WHEN account_id IN (SELECT account_id FROM branch_sandton_accounts)
        THEN 'Sandton'
        ELSE 'Rosebank'
    END AS city
FROM (
    SELECT account_id, account_holder FROM branch_sandton_accounts
    UNION
    SELECT account_id, account_holder FROM branch_rosebank_accounts
) AS combined;

--Q2 : TWO PRODUCT LIST
SELECT product_code,
       product_name,
CASE
  WHEN product_code IN (SELECT product_code FROM savings_products)
  AND product_code IN (SELECT product_code FROM current_products)
  THEN 'Falls underboth '
  WHEN product_code IN (SELECT product_code FROM savings_products) THEN 'Savings'
  ELSE 'Current'
  END AS product_type
FROM(SELECT product_code,product_name 
FROM savings_products
UNION
SELECT product_code,product_name
FROM current_products) AS combined;

--Q3 : THE HR TEAM
SELECT staff_id,
       staff_name,
CASE
 WHEN staff_id IN (SELECT staff_id FROM retail_banking_staff) 
    AND staff_id IN (SELECT staff_id FROM corporate_banking_staff)
      THEN 'Assigned to both'
 WHEN staff_id IN (SELECT staff_id FROM retail_banking_staff) 
     THEN 'Retail'
     ELSE 'Corporate'
 END AS email
FROM(SELECT staff_id,staff_name
FROM retail_banking_staff
UNION
SELECT staff_id,staff_name
FROM corporate_banking_staff) AS combined;

--Q4 : MARKETING 
SELECT city_code,
       city_name,
CASE
 WHEN city_code IN (SELECT city_code FROM mobile_branch_cities ) AND 
     city_code IN (SELECT city_code FROM digital_branch_cities ) THEN 'Falls underboth'
 WHEN city_code IN (SELECT city_code FROM mobile_branch_cities ) THEN 'Mobile'
 ELSE 'Digital'
 END AS region
 FROM(SELECT city_code,city_name
FROM mobile_branch_cities
UNION
SELECT city_code,city_name
FROM digital_branch_cities) AS combined;

--Q5 : DIGITAL MARKETING TEAM 
SELECT customer_id,
       customer_name,
CASE
 WHEN customer_id IN (SELECT customer_id FROM push_notification_targets ) AND 
     customer_id IN (SELECT customer_id FROM inapp_banner_targets ) THEN 'Falls underboth'
 WHEN customer_id IN (SELECT customer_id FROM push_notification_targets ) THEN 'Push Notification'
 ELSE 'Inapp Banner'
 END AS segment
 FROM(SELECT customer_id,customer_name
FROM push_notification_targets
UNION
SELECT customer_id,customer_name
FROM inapp_banner_targets) AS combined;

----UNION ALL----
SELECT *
FROM atm02_transactions;
--Q6 : FRAUD TEAM 
SELECT 
    txn_id AS transaction_id,account_id,amount,
    CURRENT_DATE AS transaction_date
FROM atm01_transactions
UNION ALL
SELECT 
    txn_id, account_id,amount,
    CURRENT_DATE AS transaction_date
FROM atm02_transactions;

SELECT *
FROM gauteng_loan_applications;
SELECT *
FROM western_cape_loan_applications;


-- Q7: CREDIT TEAM
SELECT 
    app_id AS application_id,customer_id,loan_type,
    0.00 AS amount_requested
FROM gauteng_loan_applications
UNION ALL
SELECT 
    app_id,customer_id,loan_type,
    0.00 AS amount_requested
FROM western_cape_loan_applications;

SELECT *
FROM email_complaints;
SELECT *
FROM app_complaints;

--Q8 : CUSTOMER COMPLAINTS
SELECT complaint_id,customer_id,CURRENT_DATE AS logged_date,
CASE
  WHEN complaint_id IN(SELECT complaint_id FROM email_complaints) THEN 'Email'
  ELSE 'App'
  END AS category
FROM(SELECT complaint_id,customer_id
FROM email_complaints
UNION ALL
SELECT complaint_id,customer_id
FROM app_complaints) AS combined;

SELECT *
 FROM april_payments;
 SELECT *
 FROM may_payments;



--Q9 : FINANCE 
SELECT payment_id,account_id,amount,
  CASE 
    WHEN payment_id IN (SELECT payment_id FROM april_payments) THEN 'In April'
    ELSE 'In May'
    END AS payment_date
FROM(SELECT payment_id,account_id,amount
FROM april_payments
UNION ALL
SELECT payment_id,account_id,amount
FROM may_payments) AS combined;

SELECT *
FROM debit_entries;
SELECT *
FROM credit_entries;
 

--Q10: ACCOUNTING SYSTEM

SELECT entry_id,account_id,entry_type,
      0.00 AS amount, CURRENT_DATE-3 AS entry_date 
FROM debit_entries
UNION ALL
SELECT entry_id,account_id,entry_type,
 0.00 AS amount, CURRENT_DATE-2 AS entry_date 
FROM credit_entries;

/*==========================================
  SCRIPT COMPLETE
  Topic  : UNION & UNION ALL
  Author : KAGISO MATENCHI
  Date   : JUNE 2026
==========================================*/





