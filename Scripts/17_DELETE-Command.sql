-- DELETE command 
-- dlt existing rows

-- DELETE FROM table_name
-- WHERE condi;

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

UPDATE student
SET marks = 26, grade = "F"
WHERE rollno = 104;

DELETE FROM student
WHERE marks < 33;

-- DELETE FROM student;  To dlt whole data of a tb

SELECT * FROM student;