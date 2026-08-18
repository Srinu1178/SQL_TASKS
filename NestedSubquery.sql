use db3;
CREATE TABLE babu (
    emp_id INT,
    emp_name VARCHAR(50),
    salary INT,
    department VARCHAR(50),
    city VARCHAR(50),
    manager_id INT
);

INSERT INTO babu
VALUES
(101, 'Ravi', 45000, 'HR', 'Hyderabad', 105),
(102, 'Sita', 60000, 'IT', 'Bangalore', 106),
(103, 'Kumar', 75000, 'IT', 'Hyderabad', 106),
(104, 'Arun', 90000, 'Finance', 'Chennai', 107),
(105, 'Priya', 55000, 'HR', 'Hyderabad', 108),
(106, 'Rahul', 85000, 'IT', 'Bangalore', 108),
(107, 'Anil', 95000, 'Finance', 'Chennai', 108),
(108, 'Kiran', 100000, 'Management', 'Hyderabad', NULL),
(109, 'Meena', 50000, 'HR', 'Chennai', 105),
(110, 'Vani', 70000, 'Finance', 'Hyderabad', 107),
(111, 'Ramesh', 65000, 'IT', 'Chennai', 106),
(112, 'Divya', 80000, 'Finance', 'Chennai', 107);

-- Find the employee who works in the same department as the employee with highest salary
select * from babu where department =  (
select department from babu where salary=(
select max(salary) from babu
));

-- Find employees who earn more than the average salay of the department of kiran
select * from babu where salary >(
select avg(salary) from babu where department = (
select department from babu where emp_name='kiran'));

-- Find employees who live in the same city as the highest paid employee
select * from babu where city IN (
select city from babu where salary=(
select max(salary) from babu));

-- Find employees whose salary is greater than the average salary is greater than the average salary of the department
-- containing rahul
select * from babu where salary >(
select avg(salary) from babu where department = (
select department from babu where emp_name ='Rahul'));


-- find employees who work in the same department as the employee with the lowest salary.
select * from babu where department = (
select department from babu where salary = (
select min(salary) from babu));

-- Find employees whose salary is greater than the average salary of the department 
-- containing the highest - paid employess
select * from babu where salary >
(select avg(salary) from babu where department = (
select department from babu where salary = (select max(salary) from babu)));

-- Find employees who live in the city of the employees with the second highest salary
select * from babu where city = (
select city from babu where salary = (
select max(salary) from babu where salary < (
select max(salary) from babu)));


-- Find employees

select * from babu where salary > (
select avg(salary) from babu where department = (
select department from babu where salary = (
select max(salary) from babu where salary<(
select max(salary) from babu))));

-- find employees who work in the same department as the employee with the second highest
select * from babu where department = (
select department from babu where salary = (select max(salary)
from babu where salary < (select max(salary) from babu)));









