-- FOREIGN KEY

-- Table in which FK is used cld as - child table
-- Table which contain PK is cld as - parent table

CREATE DATABASE college;
USE college;

CREATE TABLE student ( -- this table is not related to any
	rollno INT PRIMARY KEY,
    name VARCHAR(28),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

CREATE TABLE dept (
	id INT PRIMARY KEY,
    name VARCHAR(48)
);

CREATE TABLE teacher (
	id INT PRIMARY KEY,
    name VARCHAR(28),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(id)  -- Fk
);

INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(100, "Any", 99, "A", "Pune"),
(101, "Sny", 99, "A", "Goa"),
(102, "Jny", 59, "C", "Pune"),
(103, "Lnyy", 89, "B", "Dune"),
(104, "An", 79, "B", "Pune");
