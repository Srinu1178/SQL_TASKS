-- Create
CREATE DATABASE D23r;
USE D23r;
CREATE TABLE student1(student_id INT,
student_name VARCHAR(50),
marks INT,
emai_id VARCHAR(50));
 
-- ADD A Column in the table
ALTER table student1 ADD COLUMN phone_number CHAR(10);

-- RENAME THE TABLE
ALTER TABLE student1 RENAME students1;

-- MODIFY THE COlUMN 
ALTER TABLE students1 MODIFY marks DECIMAL(5,2);

describe students1;

-- RENAME THE COLUMN IN THE TABLE
ALTER TABLE students1 RENAME COLUMN student_id TO stu_id;

-- TRUNCATE THE TABLE
TRUNCATE TABLE students1;

-- RENAME THE TABLE
RENAME TABLE students1 TO students;

-- DROP THE TABLE IN THE DATABASE
DROP TABLE students;

-- DESCRIBE THE TABLE
DESCRIBE students;

-- DROP THE DATABASE
DROP DATABASE d23r;

-- DROP A COLUMN IN THE TABLE
ALTER TABLE students1 DROP COLUMN emai_id;


