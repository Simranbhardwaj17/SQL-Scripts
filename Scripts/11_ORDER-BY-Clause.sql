-- ORDER BY Clause: 
-- To sort in ascending(ASC) OR descending(DESC) order    (by def asc)

-- SELECT * FROM student   for all
-- ORDER BY city ASC;

-- SELECT col1, col2 FROM table_name     for specific col
-- ORDER BY col_name(s) ASC;

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
-- ORDER BY city ASC;
--      o/p
-- 103	Lnyy	89	B	Dune
-- 101	Sny	99	B	Goa
-- 100	Any	89	C	Pune
-- 102	Jny	59	A	Pune
-- 104	An	79	C	Pune

--     for top 3
ORDER BY marks DESC
LIMIT 3;  
--      o/p
-- 101	Sny	99	B	Goa
-- 100	Any	89	C	Pune
-- 103	Lnyy	89	B	Dune