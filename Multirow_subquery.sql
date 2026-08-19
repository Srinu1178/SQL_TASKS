use db3;

CREATE TABLE charan (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50)
);
INSERT INTO charan (emp_id, emp_name, department, salary, city)
VALUES
(101, 'Ravi', 'IT', 60000, 'Hyderabad'),
(102, 'Suresh', 'HR', 45000, 'Chennai'),
(103, 'Priya', 'IT', 75000, 'Hyderabad'),
(104, 'Anil', 'Finance', 55000, 'Bangalore'),
(105, 'Sneha', 'HR', 50000, 'Chennai'),
(106, 'Kiran', 'IT', 65000, 'Mumbai'),
(107, 'Divya', 'Finance', 70000, 'Bangalore'),
(108, 'Arun', 'Sales', 40000, 'Hyderabad'),
(109, 'Neha', 'Sales', 48000, 'Chennai'),
(110, 'Raj', 'IT', 80000, 'Mumbai');

-- Q1 Find the employees and their salary  who are working in hr
select * from charan where salary in (
select salary from  charan where department = 'HR');

-- Q1 Find the employees whose salary is equal to any salary of employees working in HR.
select * from charan where salary = any(
select salary from charan where department = 'HR');

-- Q2 Find employees whose salary is greater than any employee's salary in HR
select * from charan where salary > any(
select salary from charan where  department = 'HR'
);

-- Q3: Find employees whose salary is greater than all employees salaries in HR
select * from charan where salary > all(
select salary from charan where department='HR');

-- Q4: Find employees who work in a department where at least one employee earns more than 70000.
select * from charan where salary in (
select salary from charan where salary > 70000);

-- Q5: Find employees whose salary is less than any salary of employees in IT
select * from charan where salary < any(
select salary from charan where department = 'IT');

-- Q6: Find employees whose salary is less than all salaries of employees in IT.
select * from charan where salary < all(
select salary from charan where department = 'IT');

-- Q7: Find employees who are working in the same cities as employees from the HR department
select * from charan where city in (
select city from charan where department = 'HR');

-- Q8: Find employees whose salary matches any salary of employees in the finance department
select * from charan where salary = any(
select salary from charan where department = 'finance');

-- Q9:Find employees whose salary is greater than at least one employee in the sales department

select * from charan where salary > any (
select salary from charan where department = 'sales');

-- Q10: Find employees whose salary is greater than every employee in the sales department
select * from charan where salary > all(
select salary from charan where department = 'sales');
















