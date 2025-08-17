-- UPDATE command 

-- Till now we see about Dlt, create, Insert , to see data from tbl select condi
-- Update- to upd existing rows

-- UPDATE table_name
-- SET col1 = val1, col2 = val2
-- WHERE condition;

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

SET SQL_SAFE_UPDATES = 0;    -- To turn off the safe mode

UPDATE student
SET grade = "O"
WHERE grade = "A";

UPDATE student
SET marks = 90
WHERE rollno = 104;

UPDATE student
SET grade = "A"
WHERE marks >= 90;

UPDATE student
SET grade = "B"
WHERE marks BETWEEN 80 AND 90;

UPDATE student
SET marks = marks + 1;  --  must write it explicitly 

SELECT * FROM student;


