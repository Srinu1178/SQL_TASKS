CREATE DATABASE d22;
USE d22;

-- NOT NULL CONSTRIANT: it doesn't allows null values in the table

CREATE TABLE srinu1(id INT, stu_name VARCHAR(20) NOT NULL);
INSERT INTO srinu1 VALUES(1,'srinu'),(2,'mahesh'),(3,'ramesh'),(4,'nithin');
-- INSERT INTO srinu1 VALUES(5,NULL);


-- UNIQUE: it doesn't allows the duplicate values

CREATE TABLE mahesh1(id INT,com_name VARCHAR(30) UNIQUE);

INSERT INTO mahesh1 VALUES(1,'tata'),(2,'infosys'),(3,'accenture');

-- INSERT INTO mahesh1 VALUES(3,'tata') -> ERROR

-- PRIMARY KEY: it doesn't allow null values and duplicate values
-- UNIQUE + NOT NULL
CREATE TABLE department(dep_id INT PRIMARY KEY,dep_name VARCHAR(40));
INSERT INTO department VALUES(101,'Management'),(102,'IT'),(103,'Sales');
-- INSERT INTO department VALUES(101,'HR'); -> ERROR

-- FORIEGN KEY: IT establishes the relationship between the two tables
-- it allows null values and duplicates but it should be insert parent table values except null


CREATE TABLE employee(emp_id INT PRIMARY KEY, emp_name VARCHAR(30),dept_id INT,
FOREIGN KEY(dept_id) REFERENCES department(dep_id));

INSERT INTO employee VALUES(1,'naveen',101),(2,'srinu',102),(3,'ramesh',101),
(4,'surekha',103);
-- INSERT INTO employee VALUES(5,'praveen',104); 
SELECT * FROM employee;

-- DEFAULT: It adds the value by default to the column

CREATE TABLE student(id INT, stu_name VARCHAR(30), city VARCHAR(30) DEFAULT 'Hyderabad');

INSERT INTO student VALUES(1,'harish',default);
INSERT INTO student VALUES(2,'mahesh',default);
INSERT INTO student VALUES(3,'Sai','Chennai');

SELECT * FROM student;