-- Q. Query to find avg marks in each city in ascending order

-- avg(marks)
-- ORDER BY(ASC)
-- GROUP BY(city)

-- SELECT city, avg(marks) FROM student
-- ORDER BY(ASC)
-- GROUP BY(city)

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

SELECT city, avg(marks) 
FROM student
GROUP BY(city)
-- ORDER BY city ASC;   -- arranged on basis of city (grp by should on top of ord ..)
ORDER BY avg(marks) ASC;  -- arranged on basis of marks 
