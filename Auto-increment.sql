-- check table
CREATE TABLE employee1(emp_id int,age int check (age>=22));

INSERT INTO employee1 VALUES(1,23),(2,24);
-- INSERT INTO employee1 VALUE(3,21); --> ERROR CHECK constraint not satisfied

-- AUTO INCREMENT
CREATE TABLE employee2 (emp_id INT AUTO_INCREMENT PRIMARY KEY,
emp_name VARCHAR(20)) auto_increment = 1000;
DROP TABLE employee2;
INSERT INTO employee2(emp_name) VALUES('Mahesh'),('Ramesh'),('Suresh');
INSERT INTO employee2 VALUES(500,'Sai');
INSERT INTO employee2(emp_name) VALUES ('Harish'),('Kumar');


SELECT * FROM employee2;


CREATE TABLE emplyee3 (emp_id INT AUTO_INCREMENT PRIMARY KEY,
emp_name VARCHAR(20) NOT NULL,
emp_email VARCHAR(20) UNIQUE,
emp_age INT check(emp_age>=21));
RENAME TABLE emplyee3 to employee3;
DESCRIBE employee3;
ALTER TABLE employee3 ADD COLUMN place VARCHAR(20) default 'hyderabad';

INSERT INTO employee3 VALUE(101,'sai','sai123@gmail.com',22,default);

INSERT INTO employee3(emp_name,emp_email,emp_age,place)
VALUES('sai ram','ram123@gmail.com',23,default),('rajesh','rajesh123@gmail.com',43,default);



