-- 2. Where Clause - to define conditions
-- SELECT col1, col2 FROM table_name
-- WHERE conditions;

-- Using operators in WHERE:-  
-- Arith op
-- Comp op
-- Logical op
-- Bitwise op


CREATE DATABASE college;
USE college;

CREATE TABLE student (
	rollno INT PRIMARY KEY,
    name VARCHAR(28),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(100, "Any", 89, "C", "Pune"),
(101, "Sny", 99, "B", "Goa"),
(102, "Jny", 59, "A", "Pune"),
(103, "Lnyy", 89, "B", "Dune"),
(104, "An", 79, "C", "Pune");

SELECT * 
FROM student
-- WHERE marks > 70;  -- comp op
WHERE marks+10 > 70;  -- arith opera
-- WHERE marks > 70 AND city = "Pune";