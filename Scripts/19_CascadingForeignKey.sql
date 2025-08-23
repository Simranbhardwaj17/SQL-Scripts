-- Cascading Foreign Key

-- Cascade - If Change in 1 table automatic change that can be done in other table
-- In FK, its imp to think abt Cascade
-- On Dlt cascade:- 
-- When we create a FK using this option, it dlts the referencing rows in the child table
-- when the referenced row is dlted in the parent tb which has a PK

-- On Update cascade:- 
-- When we create a FK using UPDATE CASCADE the referencing rows r updated in the child table
-- when the referenced row is updated in the parent tb which has a PK


CREATE DATABASE college;
USE college;

CREATE TABLE dept (
	id INT PRIMARY KEY,
    name VARCHAR(48)
);

INSERT INTO dept
VALUES
(101, "Phy"),
(102, "CS");

SELECT * FROM dept;

UPDATE dept
SET id = 104
WHERE id = 102;

CREATE TABLE teacher (
	id INT PRIMARY KEY,
    name VARCHAR(28),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(id)
	ON UPDATE CASCADE  -- used for updating changes in both table
    ON DELETE CASCADE
);

INSERT INTO teacher
VALUES
(101, "CSC", 101),
(102, "SB", 102);

SELECT * FROM teacher;
