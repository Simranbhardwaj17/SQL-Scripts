--   CONSTRAINTS  
-- 1. NOT NULL
-- 2. UNIQUE
-- 3. PRIMARY KEY

USE college;

CREATE TABLE teacher (
	id INT UNIQUE,
    name VARCHAR(25),
    age INT,
    city VARCHAR(25),
    -- PRIMARY KEY (id)   other syntax for PK decl   
    -- for combo of col to form PK
    PRIMARY KEY (id, name) 
);

INSERT INTO teacher (ID)
VALUES 
	(2),
	(3),
	-- (2), coz is of unique constraint type
	(4);

SELECT * FROM teacher;

--   o/p
-- id
-- 2
-- 3
-- 4

--  4. FOREIGN KEY
-- CREATE TABLE temp (
-- 	id INT UNIQUE,
--     name VARCHAR(25),
--     cust_id INT,
--     FOREIGN KEY (cust_id) references customer(id)
--     here, customer is another table & id - is col of that table
-- );

-- 5. DEFAULT - sets def value of a col
-- salary INT DEFAULT 25000  

CREATE TABLE emp (
	id INT,
    salary int DEFAULT 50000
);

INSERT INTO emp 
	(id, salary) 
	VALUES 
	-- (3 ),   err: col count doesn't match value count at row 1
    (2, 98),
    (1, 46000);
    
INSERT INTO emp (id) VALUES (7);
 
SELECT * FROM emp;

--  o/p
-- id  salary
-- 2	98
-- 1	46000
-- 7	50000  if salary not def, then by def


--  6. CHECK - It can limit the values allowed in a col
-- syntax

-- CREATE TABLE recruit (
-- 	id INT UNIQUE,
--     city VARCHAR(25),
--     age INT,
--     CONSTRAINT age_c CHECK (age >= 18 AND city="Delhi")  -- age_c is not mandatory, just to store check
-- );

-- CREATE TABLE recruit (
-- 	age INT CHECK (age >= 18)
-- );

