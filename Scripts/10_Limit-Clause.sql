-- Limit Clause:-
-- Sets an upper limit on number of (tuples) rows to be returned

-- SELECT * FROM student LIMIT 3;  for all col

-- SELECT col1, col2 FROM table_name     for specific col
-- LIMIT number;

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
WHERE marks > 70
LIMIT 3;