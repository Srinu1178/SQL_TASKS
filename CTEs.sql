use db3;

-- create cte called high salary to display employees whose salary is greater than 60000

with high_salary as ( select * from jai
where salary > 60000)
select * from high_salary;




-- Create a cte called it_employees to display all employees working in the developer department
with high_salary as ( select * from jai where job='Developer')
select * from high_salary;

-- create a cte to find the average salary of each department
desc jai;
with avg_salary as (select job,avg(salary) as avg_salary from
jai group by job)
select * from avg_salary;

-- create a cte to find the maximum salary of each department
with max_salary as 
(select job,max(salary) as max_salary from jai group by job)
select * from max_salary;

-- create a cte that calculates the average salary for each department then display only department
-- whose average salary is greater than 70000
with google as 
(select job,avg(salary) as avgg from jai group by job)
select * from google where avgg>70000;

-- using a cte, find department having more than 5 employees.
with cte as
(select job,count(*) as emp1 from jai group by job)
select * from cte where emp1>5;

-- create a cte containing the total salary paid by each department
with cte as 
(select job,sum(salary) from jai group by job)
select * from cte;

-- Display the department with a total salary greater than 150000
with cte as 
(select job,sum(salary) as total from jai group by job)
select * from cte where total > 150000;

-- Using a CTE, find the highest salary in each department
with highest_salary as 
(select job,max(salary) as highest_salary from jai group by job)
select * from highest_salary;

-- create a cte containing the average salary of each department. Then join it with jai
-- and display emp_name,dept, salary,avg_salary
with avg_salary as (
select job,avg(salary) as avg_salary from jai group by job)
select j.emp_name,j.job,j.salary,a.avg_salary from jai j join avg_salary a
on j.job = a.job;

-- Find only the employee whose salary is greater than their deparment's average salary

with dept_avg_salary as (
select job,avg(salary) as avg_salary from jai group by job)
select j.emp_name,j.job,j.salary,a.avg_salary from jai j join dept_avg_salary a
on j.job = a.job where j.salary > a.avg_salary;

--  using a cte, find employees whose salary is less than their departments average salary
with dept_avg_salary as (
select job,avg(salary) as avg_salary from jai group by job)
select j.emp_name,j.job,j.salary,a.avg_salary from jai j join dept_avg_salary a
on j.job = a.job where j.salary < a.avg_salary;