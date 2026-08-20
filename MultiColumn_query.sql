USE db3;
CREATE TABLE tarak (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(50),
    Dept_ID INT,
    Job VARCHAR(30),
    Salary DECIMAL(10,2),
    Manager_ID INT,
    Hire_Date DATE,
    City VARCHAR(30)
);
INSERT INTO tarak VALUES
(101, 'Ravi',    10, 'Manager',   75000, NULL,  '2018-05-12', 'Hyderabad'),
(102, 'Kiran',   20, 'Manager',   72000, NULL,  '2019-03-15', 'Bangalore'),
(103, 'Arjun',   10, 'Developer', 55000, 101,   '2020-06-20', 'Hyderabad'),
(104, 'Priya',   10, 'Developer', 58000, 101,   '2021-02-10', 'Chennai'),
(105, 'Rahul',   20, 'Developer', 60000, 102,   '2020-08-18', 'Bangalore'),
(106, 'Sneha',   20, 'Tester',    48000, 102,   '2021-09-25', 'Bangalore'),
(107, 'Vijay',   30, 'Manager',   68000, NULL,  '2017-11-11', 'Pune'),
(108, 'Anil',    30, 'Developer', 52000, 107,   '2020-01-05', 'Pune'),
(109, 'Divya',   30, 'Tester',    45000, 107,   '2021-04-14', 'Mumbai'),
(110, 'Suresh',  40, 'Manager',   70000, NULL,  '2018-07-19', 'Chennai'),
(111, 'Meena',   40, 'Developer', 57000, 110,   '2020-10-10', 'Chennai'),
(112, 'Ramesh',  40, 'Tester',    46000, 110,   '2022-01-15', 'Hyderabad'),
(113, 'Pooja',   10, 'Tester',    47000, 101,   '2022-03-12', 'Hyderabad'),
(114, 'Karthik', 20, 'Developer', 62000, 102,   '2019-12-20', 'Bangalore'),
(115, 'Swathi',  30, 'Developer', 53000, 107,   '2022-05-18', 'Pune'),
(116, 'Naveen',  40, 'Developer', 59000, 110,   '2021-06-25', 'Chennai'),
(117, 'Harsha',  10, 'Tester',    49000, 101,   '2023-01-10', 'Hyderabad'),
(118, 'Lakshmi', 20, 'Tester',    50000, 102,   '2022-08-30', 'Bangalore'),
(119, 'Manoj',   30, 'Tester',    44000, 107,   '2023-03-15', 'Mumbai'),
(120, 'Geetha',  40, 'Tester',    51000, 110,   '2022-11-11', 'Chennai');

-- Display employees whose dept_id and job combination is present among  
-- employess managed by Ravi
select * from tarak where manager_id = (
(select emp_id from tarak where emp_name = "Ravi"));

-- Update the sub queries
-- Increase the salary by 10% for employees whose dept_id and job combination 
-- Matches the employee 'Kiran'
SET SQL_SAFE_UPDATES = 0;

update tarak set salary = salary * 1.1 where (dept_id,job) in (select dept_id,job
from (select dept_id,job from tarak where emp_name = 'Kiran') as temp);

-- Increase the salary by 5000 for employees whose dept_id and job combination belong
-- employees earning more than 60000

update tarak set salary = salary + 5000 where (dept_id,job) in (select dept_id,job
from (select dept_id,job from tarak where salary > 60000 ) as temp);

select * from tarak;

-- Set the city to hyderabad for employees whose dept_id and job combination
-- matches employees working under manager 101.

update tarak set city = 'Hyderabad' where (dept_id,job) in (
select dept_id,job from (
select dept_id,job from tarak where manager_id = 101) as temp);

-- Delete employees whose dept_id and job combination matches employees earning less
-- than 45000
delete from tarak where (dept_id,job) in (select dept_id,job from (
select dept_id,job from tarak where salary<45000) as temp);
-- delete employees whose dept_id and city combination matches the employee 'kiran'
Delete from tarak where (dept_id,city) in(
select dept_id,city from (select dept_id,city from tarak where
emp_name = 'Kiran') as temp);


delete from tarak where (job,salary) in (
select job,salary from (select job,salary from tarak where dept_id = 30 )
as temp);

select * from tarak;





