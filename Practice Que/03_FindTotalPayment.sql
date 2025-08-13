-- Q. Fir given table, find total payment acc to each payment method

CREATE DATABASE CUSTOMER;
USE CUSTOMER;

CREATE TABLE payment (
	customer_id INT PRIMARY KEY,
    customer_name VARCHAR(80),
    mode VARCHAR(30),
    city VARCHAR(30)
);

INSERT INTO payment 
(customer_id, customer_name, mode, city)
VALUES
(101, "O L", "Netbanking", "Poland"),
(102, "O L", "Netbanking", "Poland"),
(103, "O V", "CreditCard", "Seattle"),
(104, "E DL", "DebitCard", "Poland"),
(105, "O L", "Netbanking", "Polan"),
(106, "A L", "CreditCard", "Poland"),
(1014, "C L", "Netbanking", "Pond");

-- SELECT mode
-- FROM payment
-- GROUP BY(mode);
-- --    O/P  ---
-- -- mode  
-- -- Netbanking
-- -- CreditCard
-- -- DebitCard

-- !st made grp on basis of mode. so, select mode
SELECT mode, COUNT(customer_name)  -- it can be id too(if name r same still correct)
FROM payment
GROUP BY(mode);
--    O/P  ---
-- mode       COUNT(customer_name)
-- Netbanking	4
-- CreditCard	2
-- DebitCard	1
