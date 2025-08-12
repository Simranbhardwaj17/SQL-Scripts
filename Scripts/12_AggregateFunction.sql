-- Aggregate fn:-
-- COUNT()
-- MAX()
-- MIN()
-- SUM()
-- AVG()
-- apply on col

-- To get max marks
-- SELECT max(marks)   there should no gap 
-- FROM student;

-- get average marks
-- SELECT avg(marks)
-- FROM student;


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

SELECT marks
FROM student;

SELECT MAX(marks) FROM student;
SELECT AVG(marks) FROM student;
SELECT COUNT(city) FROM student;