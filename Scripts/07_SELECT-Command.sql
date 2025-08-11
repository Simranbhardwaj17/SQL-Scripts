-- 1. SELECT - Used to select any data from DB
--  Basic syn
	-- SELECT col1, col2 FROM table_name;

	-- To sel ALL
	-- SELECT * FROM table_name;
    
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

SELECT name, marks FROM student;

SELECT * FROM student;  -- for all col

SELECT DISTINCT city FROM student; 
--  O/P
-- city
-- Pune
-- Goa
-- Dune