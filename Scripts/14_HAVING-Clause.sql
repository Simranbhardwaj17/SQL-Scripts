--        Having clause
-- Similar to Where cl i.e. applies some condition on rows .
-- Used when we want to aplly any condition after grouping 

-- Where cl - applies some condition on rows only 
-- Having - applies some condition on "grp" of rows only

-- SELECT count(c1), c2
-- FROM t 
-- GROUP BY c2
-- HAVING MAX(c3) > 90;

-- Count no of students in each city where max marks cross 90.
-- SELECT count(name), city
-- FROM student 
-- GROUP BY city
-- HAVING MAX(marks) > 90;

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
(100, "Any", 99, "C", "Pune"),
(101, "Sny", 99, "B", "Goa"),
(102, "Jny", 59, "A", "Pune"),
(103, "Lnyy", 89, "B", "Dune"),
(104, "An", 79, "C", "Pune");

SELECT city, count(rollno)
FROM student 
GROUP BY city
HAVING MAX(marks) > 90;  -- can't use where here
-- city count(rollno)
-- Pune	3  coz in only these 2, marks > 90 so all stud count
-- Goa	1

