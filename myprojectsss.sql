--working on Transaction & Fraud Analysis database

--Customer Table

CREATE TABLE Customers (Customer_id INT PRIMARY KEY,
Full_Name VARCHAR (100),
Email VARCHAR (100),
Phone_Number VARCHAR(15),
Date_Joined DATE,
Country VARCHAR(50),
Account_Status VARCHAR(50)
);

--Customer data
INSERT INTO Customers
VALUES (001, 'Omoniyi Ayomide', 'Ayomide04@gmail.com', 09123971681, '2001-08-27', 'Germany', 'Closed'),
       (002, 'Oyedeji Precious', 'Omolara55@gmail.com', 08155689247, '1999-04-24', 'Canada', 'Active'),
       (003, 'Omolara Victoria', 'vikky25@gmail.com', 07028723566, '2002-12-16', 'India', 'Closed'),
       (004, 'Adedeji Donald', 'Ayomide@gmail.com', 09045879268, '2007-08-16', 'Australia', 'Suspended'),
       (005, 'Williams Bryan', 'kingggs@gmail.com', 08034875512, '2001-10-28', 'China', 'Suspended'),
       (006, 'Olayinka Damilare', 'Dammy42@gmail.com', 08128974382, '1994-01-28', 'Nigeria', 'Active'),
       (007, 'Gabriel Olushola', 'Gabshola@gmail.com', 07189249712, '1972-09-27', 'Ghana', 'Suspended'),
       (008, 'Folake Badmus', 'Badmus247@gmail.com', 08151211178, '1987-04-18', 'South Africa', 'Closed'),
       (009, 'Adeoye Michael', 'Adeoye@gmail.com', 04428976299, '2000-08-19', 'Germany', 'Closed'),
       (010, 'Akinola Semilore', 'Semiloore@gmail.com', 0222014158, '2004-05-30', 'Russia', 'Active'),
       (011, 'Ogunkoya Israel', 'Ogunkoyaa@gmail.com', 09183026298, '1992-08-27', 'China', 'Closed'),
       (012, 'Ajayi Damilare', 'Damilare428@gmail.com', 09037531287,'2006-12-27', 'Germany', 'Active'),
       (013, 'Omoniyi Florence', 'Mopelola@gmail.com', 07060494522, '1987-03-12', 'Nigeria', 'Suspended'),
       (014, 'Odunowo Abisola', 'Bisola419@gmail.com', 0218795766, '2002-06-17', 'Russia', 'Suspended'),
       (015, 'Afolayan Badmus', 'Afolayan@gmail.com', 01234567891, '1942-10-19', 'China', 'Active'),
       (016, 'Ayo Balogun', 'Ayo.balogun@email.com', 08077390846, '2024-01-10', 'Nigeria', 'Suspended'),
	   (017, 'Sarah Johnson', 'Sarah.johnson@email.com', 09055647897, '2024-02-15', 'Nigeria', 'Active'),
	   (018, 'Fatima Bello', 'Fatima.Bello@email.com', 08122347856, '2024-01-25', 'Nigeria', 'Suspended'),
	   (019, 'Grace Peter', 'Grace.Peter@email.com', 04077659867, '2024-02-10', 'Kenya', 'Active'),
       (020, 'Ella Brown', 'Ella.Brown@email.com', 12713345454, '2024-02-28', 'UK', 'Active'),
	   (021, 'John Smith', 'John.Smith@email.com', 12790987656, '2023-12-12', 'UK', 'Suspended'),
	   (022, 'Ibrahim Musa', 'Ibrahim.Musa@email.com', 08013246765, '2024-01-05', 'Nigeria', 'Closed'),
	   (023, 'Zainab Ali', 'Zainab.Ali@email.com', 09066569098, '2023-12-20', 'Nigeria', 'Suspended'),
	   (024, 'Chris Paul', 'Chris.Paul@email.com', 12087278096, '2024-01-14', 'UK', 'Active'),
	   (025, 'Samuel Kofi', 'Samuel.Kofi@email.com', 04076295601, '2024-02-25', 'Kenya', 'Suspended'),
	   (026, 'Ngozi Eze', 'Ngozi.Eze@email.com', 09077661263, '2024-02-02', 'Nigeria', 'Closed'),
	   (027, 'Ayo Balogun', 'Ayo.Balogun@email.com', 04070825782, '2024-03-12', 'Kenya', 'Closed'),
	   (028, 'David Mark', 'David.Mark@email.com', 12190568356, '2024-03-25', 'UK', 'Closed'),
	   (029, 'Fiona Lala', 'Fiona.Lala@email.com', 04127809587, '2023-10-10', 'Kenya', 'Active'),
	   (030, 'Jude Clerk', 'JudCL@email.com', 12176809535, '2023-12-12', 'Kenya', 'Suspended');

       --Accounts table
CREATE TABLE Accounts (Account_id INT PRIMARY KEY,
    Customer_id INT,
    Account_type VARCHAR(50),
    Balance DECIMAL(12,2),
    Currency VARCHAR(10),
    FOREIGN KEY (Customer_id) REFERENCES Customers(Customer_id)
);

SELECT * FROM Accounts

--Accounts data
INSERT INTO Accounts
VALUES (201, 001, 'Savings', 100000.00, 'NGN'),
       (202, 002, 'Checkings', 50000.00, 'NGN'),
       (203, 003, 'Business', 450000.00, 'NGN'),
       (204, 004, 'Wallet', 1200000.00, 'NGN'),
       (205, 005, 'Savings', 6858000.00, 'NGN'),
       (206, 006, 'Business', 2890000.00, 'GBP'),
       (207, 007, 'Business', 526700.00, 'EUR'),
       (208, 008, 'Savings', 8973658.00, 'NGN'),
       (209, 009, 'Wallet', 546878.00, 'NGN'),
       (210, 010, 'Savings', 28500.00, 'NGN'),
       (211, 011, 'Wallet', 2487390.00, 'NGN'),
       (212, 012, 'Business', 278420.00, 'USD'),
       (213, 013, 'Wallet', 500000.00, 'NGN'),
       (214, 014, 'Savings', 38000.00, 'NGN'),
       (215, 015, 'Wallet', 420000.00, 'NGN'),
       (216, 016, 'Wallet', 1500000.25, 'NGN'),
	   (217, 017, 'Savings', 30000.05, 'NGN'),
	   (218, 018, 'Wallet', 5000.00, 'NGN'),
	   (219, 019, 'Business', 1000000.75, 'USD'),
	   (220, 020, 'Wallet', 110000.30, 'GBP'),
	   (221, 021, 'Savings', 220000.00, 'GBP'),
	   (222, 022, 'Wallet', 330000.00, 'NGN'),
	   (223, 023, 'Business', 25000000.30, 'NGN'),
	   (224, 024, 'Savings', 90000.00, 'GBP'),
	   (225, 025, 'Savings', 33000.00, 'USD'),
	   (226, 026, 'Wallet', 240000.15, 'NGN'),
	   (227, 027, 'Wallet', 1200000.20, 'USD'),
	   (228, 028, 'Wallet', 230000.00, 'GBP'),
	   (229, 029, 'Wallet', 3900000.99, 'USD'),
	   (230, 030, 'Savings', 285000.55, 'USD');


       --Transactions table
CREATE TABLE Transactions (Transaction_id INT PRIMARY KEY,
Sender_account_id INT,
Receiver_account_id INT,
Amount DECIMAL(12,2),
Transaction_type VARCHAR(100),
Transaction_date DATE,
Status VARCHAR(100)
);

--Transaction data
INSERT INTO Transactions
VALUES(1, 101, 601, 4250000.00, 'Payment', '2026-03-31', 'Succesful'),
      (2, 102, 602, 850000.00, 'Withdrawal', '2026-03-09', 'Pending'),
      (3, 103, 603, 4470000.00, 'Transfer', '2025-04-22', 'Failed'),
      (4, 104, 604, 2300000.00, 'Withdrawal', '2026-05-29', 'Pending'),
      (5, 105, 605, 470000.00, 'Payment', '2026-01-13', 'Successful'),
      (6, 106, 606, 21900000.00, 'Transfer', '2026-01-01', 'Failed'),
      (7, 107, 607, 780000.00, 'Withdrawal', '2026-02-28', 'Successful'),
      (8, 108, 608, 4520000.00, 'Transfer', '2025-09-22', 'Successful'),
      (9, 109, 609, 8800000.00, 'Transfer', '2026-03-15', 'Pending'),
      (10, 110, 610, 1000000.00, 'Withdrawal', '2025-12-25', 'Successful'),
      (11, 111, 611, 47890000.00, 'Payment', '2026-02-17', 'Pending'),
      (12, 112, 612, 1200000.00, 'Transfer', '2026-03-30', 'Failed'),
      (13, 113, 613, 500000.00, 'Transfer', '2026-02-25', 'Successful'),
      (14, 114, 614, 9850000.00, 'Wirthdrawal', '2026-01-29', 'Failed'),
      (15, 115, 615, 3279000.00, 'Transfer', '2026-03-25', 'Pending'),
      (16, 116, 616, 50000.25, 'transfer', '2024-03-01', 'Successful'),
	  (17, 117, 617, 5500.25, 'transfer', '2024-03-01', 'Successful'),
	  (18, 118, 618, 65000.25, 'transfer', '2024-03-03', 'Failed'),
	  (19, 119, 619, 12003.25, 'transfer', '2024-02-01', 'Failed'),
	  (20, 120, 620, 50000.25, 'transfer', '2024-03-04', 'Failed'),
	  (21, 121, 621, 20000.25, 'transfer', '2024-03-05', 'Successful'),
  	  (22, 122, 622, 750000.25, 'payment', '2024-03-02', 'Successful'),
	  (23, 123, 623, 40000.25, 'transfer', '2024-03-05', 'Successful'),
	  (24, 124, 624, 33000.25, 'withdrawal', '2024-03-03', 'failed'),
	  (25, 125, 625, 480000.25, 'transfer', '2024-03-11', 'failed');

      --Merchants table
CREATE TABLE Merchants (Merchant_id INT PRIMARY KEY,
Merchant_name VARCHAR (100),
Category VARCHAR(100),
);

--Merchants data
INSERT INTO Merchants
VALUES(301, 'Adefunto Mayowa', 'Foodstuffs'),
      (302, 'Malik Abdulmalik', 'School'),
      (303, 'Ismail Fathia', 'Bills'),
      (304, 'Ogunade Gabriel', 'Handout'),
      (305, 'Afolayan Boluwatife', 'School'),
      (306, 'Sodipo Daniel', 'Shopping'),
      (307, 'Odunlade Adekola', 'Food'),
      (308, 'Adefowora Nifemi', 'School'),
      (309, 'Ariana Joseph', 'Handout'),
      (310, 'Samuel Bankole', 'Shopping'),
      (311, 'Williams Ruth', 'Bills'),
      (312, 'Godwin Vctoria', 'Foodstuffs'),
      (313, 'Isaac Newton', 'Shopping'),
      (314, 'Funke Akindele', 'Package'),
      (315, 'Osho Mabel', 'Shopping'),
      (316, 'Shoprite Nigeria', 'Shopping'),
	  (317, 'Jumia Online', 'e-commerce'),
	  (318, 'KFC Nigeria', 'Food'),
	  (319, 'Netflix', 'entertainment'),
	  (320, 'Spotify', 'entertainment'),
	  (321, 'Electricity Distribution Co', 'Bills'),
	  (322, 'Uber', 'transport'),
	  (323, 'Bolt', 'transport'),
	  (324, 'Amazon', 'e-commerce'),
	  (325, 'Paystack services', 'fintech');



      --Payments table
CREATE TABLE Payments (Payment_id INT PRIMARY KEY,
Transaction_id INT,
Merchant_id INT,
Payment_method VARCHAR(100),
);

--Payments data
INSERT INTO Payments 
VALUES(2001, 1, 301, 'Bank Transfer'),
       (2002, 2, 302, 'Card'),
       (2003, 3, 303, 'Wallet'),
       (2004, 4, 304, 'Wallet'),
       (2005, 5, 305, 'Wallet'),
       (2006, 6, 306, 'Bank Transfer'),
       (2007, 7, 307, 'Card'),
       (2008, 8, 308,  'Bank Transfer'),
       (2009, 9, 309, 'Wallet'),
       (2010, 10, 310, 'Card'),
       (2011, 11, 311, 'Bank Transfer'),
       (2012, 12, 312, 'Wallet'),
       (2013, 13, 313, 'Card'),
       (2014, 14, 314, 'Bank Transfer'),
       (2015, 15, 315, 'Card'),
       (2016, 16, 316, 'Card'),
	   (2017, 17, 317, 'Wallet'),
	   (2018, 18, 318, 'Card'),
	   (2019, 19, 319, 'Wallet'),
	   (2020, 20, 320, 'Card'),
	   (2021, 21, 321, 'Wallet'),
	   (2022, 22, 322, 'Card'),
	   (2023, 23, 323, 'Card'),
	   (2024, 24, 324, 'Cash'),
	   (2025, 25, 325, ' Wallet');





       --Fraud flags table
CREATE TABLE Fraud_flags (Flag_id INT PRIMARY KEY,
Transaction_id INT,
Reason VARCHAR(200),
Flagged_date DATE,
);

--Fraud flags data
INSERT INTO Fraud_flags
VALUES(401, 1, 'Large Amount', '2026-03-02'),
      (402, 2, 'Suspicious Withdrawal', '2026-03-02'),
      (403, 3, 'Multiple Login', '2026-03-07'),
      (404, 4, 'Unusual Transaction', '2026-05-25'),
      (405, 5, 'Large Amount Detected', '2026-01-15'),
      (406, 6, 'Suspicious Witrhdrawal', '2026-02-28'),
      (407, 7, 'Multiple Login', '2026-01-31'),
      (408, 8, 'Unusual Transaction', '2026-02-16'),
      (409, 9, 'Large Amount Detected', '2026-01-13'),
      (410, 10, 'Multiple Login', '2026-01-01'),
      (411, 11, 'Suspicious Withdrawal', '2026-03-01'),
      (412, 12, 'Large Amount', '2026-01-02'),
      (413, 13, 'Large Deposit', '2026-03-10'),
      (414, 14, 'Unusual Transaction', '2026-03-31'),
      (415, 15, 'Multiple Login', '2026-03-04'),
      (416, 16, 'Unusual transaction', '2024-03-01'),
	  (417, 17, 'Unusual transaction', '2024-03-03'),
	  (418, 18, 'Multiple Login', '2024-03-03'),
	  (419, 19, 'Suspicious Transfer', '2024-03-05');
	
    --View all tables
    SELECT * FROM Customers
    SELECT * FROM Accounts
    SELECT * FROM Transactions
    SELECT * FROM Merchants
    SELECT * FROM Payments
    SELECT * FROM Fraud_flags

    --calculating 
    --Total Balance Per Customer

SELECT c.customer_id, c.full_name, SUM(a.balance) AS total_balance
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id
GROUP BY c.customer_id, c.full_name
ORDER BY total_balance DESC;

--calculating
--Failed transactions

SELECT *
FROM Transactions
WHERE status = 'Failed';

--calculating
--High-Value Transactions (> 10,000)

SELECT *
FROM Transactions
WHERE amount > 10000
ORDER BY amount DESC;

--calculating
--Fraud-Flagged Transactions

SELECT t.transaction_id, t.amount, f.reason, f.flagged_date
FROM Transactions t
JOIN Fraud_Flags f ON t.transaction_id = f.transaction_id;

--calculating
--Customer Account Summary (customer value)
SELECT 
    c.customer_id,
    c.full_name,
    COUNT(a.account_id) AS total_accounts,
    SUM(a.balance) AS total_balance
FROM Customers c
LEFT JOIN Accounts a ON c.customer_id = a.customer_id
GROUP BY c.customer_id, c.full_name
ORDER BY total_balance DESC;

--calculating
--Monthly Transaction Trends

SELECT 
    FORMAT(transaction_date, 'yyyy-MM') AS month,
    COUNT(*) AS total_transactions,
    SUM(amount) AS total_amount
FROM Transactions
GROUP BY FORMAT(transaction_date, 'yyyy-MM')
ORDER BY month;


--calculating
--Failed Transactions Analysis
SELECT 
    status,
    COUNT(*) AS total_count,
    SUM(amount) AS total_amount
FROM Transactions
GROUP BY status;

--calculating
--Payment Method Usage
SELECT 
    payment_method,
    COUNT(*) AS usage_count
FROM Payments
GROUP BY payment_method
ORDER BY usage_count DESC;


--calculating
--total customer by countries
SELECT 
    country,
    COUNT(*) AS total_customers
FROM Customers
GROUP BY country
ORDER BY total_customers DESC;

