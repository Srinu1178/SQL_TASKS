CREATE DATABASE DB2;
USE DB2;
CREATE TABLE students(id INT PRIMARY KEY,
name VARCHAR(20),dept VARCHAR(20),fee INT,
location VARCHAR(20) DEFAULT 'hyderabad');
INSERT INTO students VALUES(101,'Sai','Management',40000,'vizag'),
(102,'Ram','Commerce',30000,default),(103,'Gopi','Computer Science',4800,'khammam'),
(104,'Ashok','Science',45000,'Anantapur'),(105,'Ramana','Management',42000,default);

UPDATE students SET fee = 48000 WHERE id = 103;


-- Addition
SELECT *,fee+200 as new_fee FROM students;

-- Subtraction
UPDATE students SET fee = fee-200 WHERE id = 103;
SET SQL_SAFE_UPDATES = 0;
-- Multiplication
UPDATE students SET fee = fee*1.5 WHERE name='Ramana';

-- Division

UPDATE students SET fee = fee/2 WHERE id = 101;

-- Remainder
UPDATE students SET fee = fee%2 WHERE id = 105;

-- Comparision Operators
-- Equal (=)
SELECT * FROM students WHERE name='Gopi';

-- NOT Equal (!=)
SELECT * FROM students WHERE name!='Gopi';

-- Less Than (<)
SELECT * FROM students WHERE fee < 40000;

-- Greater Than 
SELECT * FROM students WHERE fee > 40000;

-- Less Than or equal to(<=)
SELECT * FROM students WHERE location<='hyderabad'; -- to check asci value of first letter

-- Greater Than or equal to(>=)

SELECT * FROM students WHERE location>='hyderabad';

-- Logical Operators:
-- Logical AND
-- Two condtions are true then print true otherwise false
SELECT * FROM students WHERE fee<40000 and location<='hyderabad';

-- Logical OR
SELECT * FROM students WHERE fee>40000 or location>'hyderabad';

-- Logical NOT
SELECT * FROM students WHERE NOT dept='Management';

-- Logical XOR
-- Both conditions are same then print false otherwise print true

SELECT * FROM students WHERE dept='Management' xor fee>30000;
