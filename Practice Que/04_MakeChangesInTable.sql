-- Q. In student tb:
-- 	   a. Change name of col "name" to "full_n"
--     b. Dlt all stud who scored less than 80
--     c. Dlt all col for grades


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
(100, "Any", 99, "A", "Pune"),
(101, "Sny", 99, "A", "Goa"),
(102, "Jny", 59, "C", "Pune"),
(103, "Lnyy", 89, "B", "Dune"),
(104, "An", 79, "B", "Pune");

ALTER TABLE student
CHANGE COLUMN name full_name VARCHAR(50);

SET SQL_SAFE_UPDATES = 0;    -- To turn off the safe mode
DELETE FROM student
WHERE marks < 80;

ALTER TABLE student
DROP COLUMN grade;

SELECT * FROM student;