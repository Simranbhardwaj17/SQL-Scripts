-- Q. Create a DB for ur company named XYZ & these tabe info & view table data

CREATE DATABASE XYZ;
USE XYZ;

CREATE TABLE EmployeeInfo (
  id INT PRIMARY KEY,
  name VARCHAR(100),
  salary INT
);

INSERT INTO EmployeeInfo 
  (id, name, salary)
  VALUES
  (1, "Adam", 25000),
  (2, "Bob", 30000),
  (3, "Casey", 40000);
  
SELECT * FROM EmployeeInfo;

--   OUTPUT
-- id  name   salary
-- 1	Adam	25000
-- 2	Bob	  30000
-- 3	Casey	40000