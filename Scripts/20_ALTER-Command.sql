-- ALTER Command
	-- To change the schema (design- col, DT, constraints)
    
-- ADD Col
-- ALTER TABLE t_name
-- ADD COLUMN c_name dt constraint;

-- DROP C
-- ALTER TABLE t_name
-- DROP COLUMN c_name;

-- RENAME Table
-- ALTER TABLE t_name
-- RENAME TO new_t_name;

-- CHANGE Col(rename)
-- ALTER TABLE t_name
-- CHANGE COLUMN old_name new_name new_dt new_constraint;

-- MODIFY Col(m dt/cons)
-- ALTER TABLE t_name
-- MODIFY c_name new_dt new_constraint;


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

SELECT * FROM student;

ALTER TABLE student
ADD COLUMN age INT;

ALTER TABLE student
DROP COLUMN age;

ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 19;

ALTER TABLE student
MODIFY COLUMN age VARCHAR(2);

-- INSERT INTO student 
-- (rollno, name, marks, age)
-- VALUES
-- (107,"gn", 81, 100);   100- limit exist of varchar

ALTER TABLE student
CHANGE age stu_age INT;

INSERT INTO student 
(rollno, name, marks, stu_age)
VALUES
(107,"gn", 81, 100);

ALTER TABLE student
DROP COLUMN stu_age;    -- data of new stud "gn" is not changed/dlt

ALTER TABLE student  
RENAME TO stud;

ALTER TABLE stud
RENAME TO student;