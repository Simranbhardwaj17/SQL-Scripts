-- Operators used with Where Clause:- 
-- AND - to check for both conditions to be true
-- OR - to check for one of conditions to be true
-- BETWEEN - selects for a given range (both inc value/range)
-- IN - matches any val in the list
-- NOT - to negate given condition


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
-- WHERE marks > 70 OR city = "Pune";
--       o/p
-- 100	Any	89	C	Pune
-- 101	Sny	99	B	Goa
-- 102	Jny	59	A	Pune
-- 103	Lnyy 89	B	Dune
-- 104	An	79	C	Pune  

-- WHERE marks > 70 AND city = "Pune";
--       o/p
-- 100	Any	89	C	Pune
-- 104	An	79	C	Pune

-- WHERE marks BETWEEN 80 AND 90;
--       o/p  (also inc 80 & 90)
-- 100	Any	89	C	Pune
-- 103	Lnyy	89	B	Dune

-- WHERE city IN ("Pune", "Goa", "Gurgaon");
--       o/p  
-- 100	Any	89	C	Pune
-- 101	Sny	99	B	Goa
-- 102	Jny	59	A	Pune
-- 104	An	79	C	Pune

WHERE city NOT IN ("Pune", "Goa", "Gurgaon");
--       o/p  
-- 103	Lnyy	89	B	Dune
				