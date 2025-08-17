-- GENERAL ORDER 

-- SELECT col(s)
-- FROM t_name
-- WHERE condi    for rows
-- GROUP BY col(s)
-- HAVING condi   apply on grp
-- ORDER BY col(s) ASC;

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

SELECT city
FROM student 
WHERE grade = "A"
GROUP BY city
HAVING MAX(marks) >= 90
ORDER BY city DESC;
-- Pune
-- Goa
