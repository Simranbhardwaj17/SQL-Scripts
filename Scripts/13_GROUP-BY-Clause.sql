-- Group By Clause
-- It groups rows that have the same values into summary rows
-- It collects data from mult records & grps the result by one or more col

-- Generally we use group by with some aggregation fn.

-- Count no of students in each city

-- SELECT city, count(name)     select coln1, coln2,.. should same as Grp by coln1, coln2,..(grpby & sel should have same no of col)
-- FROM student
-- GROUP BY city;    c- col selected should same for 1 & 3 ln


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

SELECT city
FROM student
GROUP BY city;  
--     o/p
-- city
-- Pune
-- Goa
-- Dune

SELECT city, count(rollno)
FROM student
GROUP BY city;  
--     o/p
-- city  count(rollno)
-- Pune	3
-- Goa 	1
-- Dune	1

SELECT city, name, count(rollno)
FROM student
GROUP BY city, name; 
--   o/p
-- city name count(rollno)
-- Pune	Any	1
-- Goa Sny	1
-- Pune	Jny	1
-- Dune	Lnyy 1
-- Pune	An	1

-- To find avg or highest marks from each city
SELECT city, max(marks)
FROM student
GROUP BY city;  
--   o/p
-- city   max(marks)
-- Pune	89
-- Goa	99
-- Dune	89

-- Q. Fir given table, find total student acc to each grade in asc order
SELECT grade, count(rollno)
FROM student
GROUP BY grade
ORDER BY grade;
-- grade  count(rollno)
-- A	1
-- B	2
-- C	2