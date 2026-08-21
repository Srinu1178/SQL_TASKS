use db3;
CREATE TABLE  jai(
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(30),
    Dept_ID INT,
    Job VARCHAR(30),
    Manager_ID INT,
    Salary DECIMAL(10,2),
    Experience INT,
    City VARCHAR(30),
    Joining_Year INT
);
INSERT INTO jai VALUES
(101, 'Arjun', 10, 'Developer', 105, 65000, 4, 'Hyderabad', 2022),
(102, 'Meera', 20, 'Analyst', 106, 58000, 3, 'Bangalore', 2023),
(103, 'Rahul', 10, 'Developer', 105, 72000, 5, 'Chennai', 2021),
(104, 'Sneha', 30, 'Tester', 107, 48000, 2, 'Hyderabad', 2024),
(105, 'Vikram', 10, 'Manager', NULL, 95000, 9, 'Bangalore', 2017),
(106, 'Priya', 20, 'Manager', NULL, 90000, 8, 'Mumbai', 2018),
(107, 'Karthik', 30, 'Manager', NULL, 88000, 7, 'Hyderabad', 2019),
(108, 'Anjali', 10, 'Developer', 105, 68000, 4, 'Pune', 2022),
(109, 'Rohit', 20, 'Analyst', 106, 62000, 4, 'Delhi', 2022),
(110, 'Divya', 30, 'Tester', 107, 52000, 3, 'Chennai', 2023),
(111, 'Suresh', 40, 'HR Executive', 112, 55000, 5, 'Hyderabad', 2021),
(112, 'Lakshmi', 40, 'HR Manager', NULL, 85000, 10, 'Bangalore', 2016),
(113, 'Naveen', 10, 'Developer', 105, 78000, 6, 'Mumbai', 2020),
(114, 'Pooja', 20, 'Analyst', 106, 51000, 2, 'Pune', 2024),
(115, 'Tarun', 30, 'Tester', 107, 47000, 2, 'Delhi', 2024),
(116, 'Swathi', 40, 'HR Executive', 112, 60000, 4, 'Chennai', 2022),
(117, 'Manoj', 50, 'Support', 118, 45000, 2, 'Hyderabad', 2024),
(118, 'Deepak', 50, 'Support Manager', NULL, 75000, 8, 'Bangalore', 2018),
(119, 'Keerthi', 10, 'Developer', 105, 71000, 5, 'Delhi', 2021),
(120, 'Ajay', 50, 'Support', 118, 49000, 3, 'Mumbai', 2023);

-- Create a view named emp_basic that displays emp_id,emp_name, job and salary
create view emp_basic as (select emp_id,emp_name,job,salary from jai);
select * from emp_basic;
-- Create a view named high_salary_emp that display employees
create view high_salary_emp as (select * from jai where salary > 60000);
select * from high_salary_emp;

-- Create a view named hyderabad emp that displays employees working in hyderabad

create view hyderabad_emp as (select * from jai where city = 'hyderabad');
select * from hyderabad_emp;

-- create  a view named developer_emp that displays only employees whose job is developer

alter view developer_emp as (select * from jai where job = 'developer');
select * from developer_emp;

-- Display all records from the high_salary_emp view
select * from high_salary_emp;

-- Display only Emp_name and salary from the emp_basic view
select emp_name,salary from emp_basic;

-- create a view named emp_details that displays: employee_name job salary city Experience
create view emp_details as ( select emp_name,job,salary,city,experience from jai);
select * from emp_details;

-- create  a view named experienced_emp containing employees with more than 4 years of experience
create view experienced_emp as (select * from jai where experience > 4);

select * from experienced_emp;

-- create a view named manager_view containing only managers
create view managers as (select * from jai where manager_id is null);
select * from managers;

-- create a view named salary_view that displays : Emp_Name salary a calculated
-- column annual salary
create view salary_view as (select emp_name,salary,salary*12 as annual_salary from jai);

select * from salary_view;
set sql_safe_updates = 0;
select * from jai;
update salary_view set salary = 36000 where emp_name = 'Arjun';

delete from salary_view where emp_name = 'Meera';






