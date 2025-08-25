-- Joins in SQL
-- 	used to combine rows from 2 or more tbls, based on a related col b/w them

--           INNER JOIN
-- SELECT col
-- FROM tA
-- INNER JOIN tB
-- ON tA.c_n = tB.c_n;  -- tA & tB can be on any side coz we have to find inner
    
CREATE DATABASE college;
USE college;

CREATE TABLE student (
	id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO student
(id, name)
VALUES
(2, "Sk"),
(3, "CK"),
(4, "JK");

CREATE TABLE course (
	id INT PRIMARY KEY,
    course_name VARCHAR(50)
);

INSERT INTO course
(id, course_name)
VALUES
(1, "Math"),
(2, "Phy"),
(4, "Chem"),
(6, " kk");

SELECT * FROM student;
SELECT * FROM course;

SELECT * 
FROM student
INNER JOIN course
ON student.id = course.id;  -- col_n can be differ


--   alias - alt name
-- Use alias for lg t_name

SELECT * 
FROM student as a
INNER JOIN course as b
ON a.id = b.id;


-- In INNER JOIN  tb can be written on top or any side but for ri8 or left, tb should be in systematic side

--           LEFT JOIN
-- SELECT col
-- FROM tA
-- LEFT JOIN tB
-- ON tA.c_n = tB.c_n;

SELECT *
FROM student as a
LEFT JOIN course as b
ON a.id = b.id;


--           RIGHT JOIN
-- 	Return all rec from ri8 tb, * matched rec from left tb
-- SELECT col
-- FROM tA
-- RIGHT JOIN tB
-- ON tA.c_n = tB.c_n;

SELECT *
FROM student as a
RIGHT JOIN course as b
ON a.id = b.id;


--           FULL JOIN
	-- In MYSQL, FULL JOIN not avail as oracle, postgrees,..
--     So, we use union here
-- union gives unique data, don't repeat overlap data
-- SELECT *
-- FROM student as a
-- LEFT JOIN course as b
-- ON a.id = b.id;
-- -- UNION
-- SELECT *
-- FROM student as a
-- RIGHT JOIN course as b
-- ON a.id = b.id;