CREATE database college;

-- IF Already existed DB
USE college; 

CREATE TABLE student (
  id INT PRIMARY KEY,
  subj VARCHAR(50)
);

--         INSERT
-- INSERT INTO table_name 
--   (colname1, colname2)    CAN INSERT IN GIVEN COL ONLY
--    VALUES
--    (col1_v1, col1_v1),
--    (col1_v2, col1_v2);


INSERT INTO student (id, subj)  
  VALUES
  (1, "Eng"),
  (2, "Phy");
  
  
--  for single value, if order same as col & differ DT, then no need to write colname
INSERT INTO student VALUES (10, "Math");
  
SELECT * FROM student;
  
-- WHAT IF YOU HAVE NOT DECL A COLNAME BUT WANT TO INSERT DATA INTO THAT COL, HOW TO DD THAT COL IN TABLE
  -- Use 
-- ALTER TABLE student
-- ADD COLUMN age INT;
