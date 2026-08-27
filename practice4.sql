use db1;
CREATE TABLE employees1 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary INT,
    age INT,
    city VARCHAR(30),
    joining_date DATE,
    manager_id INT
);

INSERT INTO employees1 VALUES
(101, 'Ramesh', 'HR', 35000, 25, 'Hyderabad', '2022-01-15', NULL),
(102, 'Suresh', 'IT', 60000, 28, 'Bangalore', '2021-03-20', 105),
(103, 'Priya', 'Finance', 55000, 30, 'Chennai', '2020-07-10', 106),
(104, 'Anil', 'IT', 75000, 32, 'Hyderabad', '2019-05-18', 105),
(105, 'Kiran', 'IT', 90000, 35, 'Bangalore', '2018-02-25', NULL),
(106, 'Meena', 'Finance', 85000, 34, 'Chennai', '2017-11-12', NULL),
(107, 'Raj', 'HR', 40000, 26, 'Mumbai', '2023-01-05', 101),
(108, 'Sneha', 'Sales', 50000, 29, 'Hyderabad', '2021-09-15', 109),
(109, 'Arjun', 'Sales', 70000, 31, 'Mumbai', '2019-08-20', NULL),
(110, 'Divya', 'Marketing', 45000, 27, 'Pune', '2022-06-11', 111),
(111, 'Vijay', 'Marketing', 80000, 36, 'Pune', '2016-04-30', NULL),
(112, 'Kavya', 'IT', 65000, 29, 'Chennai', '2022-10-10', 105);



-- 1. Display all records from the employees table.
select * from employees1;

-- 2. Display only emp_name, salary, and department.
select emp_name,salary,department from employees1;

-- 3. Display employees whose salary is greater than 50,000.
select emp_name from employees where salary>50000;

-- 4. Display employees whose age is less than 30.
select * from employees1 where age<30;

-- 5. Display employees who belong to the IT department.
select * from employees1 where department = 'IT';

-- 6. Display employees who live in Hyderabad.
select * from employees1 where city = 'Hyderabad';

-- 7. Display employees whose salary is between 40,000 and 70,000.
select * from employees1 where salary between 40000 and 70000;

-- 8. Display employees whose department is either IT or Finance.
select * from employees1 where department in ('IT','Finance');

-- 9. Display employees whose city is not Mumbai.
select * from employees1 where city not in ('Mumbai');

-- 10. Display employees whose salary is greater than 60,000 and age is greater than 30.
select * from employees1 where salary > 60000 and age > 30;


-- 11. Find employees whose name starts with 'S'.
select * from employees1 where emp_name like 'S%';

-- 12. Find employees whose name ends with 'a'.
select * from employees1 where emp_name like '%a';

-- 13. Find employees whose name contains 'i'.
select * from employees1 where emp_name like '%i%';

-- 14. Find employees whose salary is not equal to 50,000.
select * from employees1 where salary <> 50000;

-- 15. Find employees whose manager_id is NULL.
select * from employees1 where manager_id is null;

-- 16. Find employees who have a manager.
select * from employees1 where manager_id is not null;

-- 17. Display employees ordered by salary from highest to lowest.
select * from employees1 order by salary desc;

-- 18. Display employees ordered by age from lowest to highest.
select * from employees1 order by age;

-- 19. Display the top 5 highest-paid employees.
select * from employees1 order by salary desc limit 5;

-- 20. Display employees ordered first by department and then by salary in descending order.
select * from employees1 order by department asc,salary desc;

-- 21. Find the total number of employees.
select count(*) as num_employees from employees1;

-- 22. Find the maximum salary.
select max(salary) as max_salary from employees1;

-- 23. Find the minimum salary.
select min(salary) as min_salary from employees1;

-- 24. Find the average salary.

-- 25. Find the total salary paid to all employees.
select sum(salary) as total_salary from employees1;

-- 26. Find the number of employees in each department.
select department,count(*) as no_of_employees from employees1
group by department;

-- 27. Find the average salary of each department.
select department,avg(salary) as avg_salary from employees1
group by department;

-- 28. Find the maximum salary in each department.
select department,max(salary) as max_salary from employees1
group by department;

-- 29. Find the minimum salary in each department.
select department,min(salary) as min_salary from employees1
group by department;

-- 30. Display departments having more than 2 employees.
select department,count(*) as no_of_employees from employees1
group by department having no_of_employees>2;

-- 31. Find departments where the average salary is greater than 60,000.
select department,avg(salary) as avg_salary from employees1
group by department having avg_salary>60000;

-- 32. Find departments where the maximum salary is greater than 80,000.
select department,max(salary) as max_salary from employees1
group by department having max_salary>80000;

-- 33. Display the number of employees in each city.
select city,count(emp_name) as no_of_employees
from employees1 group by city;

-- 34. Find the average salary for each city.
select city,avg(salary) as avg_salary
from employees1 group by city;

-- 35. Using CASE, categorize employees as:

-- Salary >= 80,000 → High
-- Salary >= 50,000 → Medium
-- Otherwise → Low
select *,case 
when salary>=80000 then 'High'
when salary>=50000 then 'Medium'
else
'low' 
end as salary_view from employees1;

-- 36. Using CASE and aggregation, count how many employees are in each salary category.
select case 
when salary>=80000 then 'High'
when salary>=50000 then 'Medium'
else
'low' 
end as salary_view , count(emp_name) as no_of_employees from employees1
group by salary_view;


-- 37. Using CASE, display:
-- Age >= 35 → Senior
-- Age >= 30 → Experienced
-- Otherwise → Junior
select *, case 
when age>=35 then 'Senior'
when age>=30 then 'Experienced'
else 'Junior'
end as category_exp from employees1;


-- 38. Using CASE, display employee names and their salary status:

-- Salary >= 70,000 → Excellent
-- Salary >= 50,000 → Good
-- Otherwise → Needs Improvement
select *, case 
when salary>=70000 then 'Excellent'
when age>=50000 then 'Good'
else 'Needs Improvement'
end as salary_status from employees1;

-- 39. Find the department with the highest average salary.
select department,avg(salary) as avg_salary from employees1
group by department order by avg_salary desc limit 1;

-- 40. Find the city having the highest number of employees
select city from employees1 group by city
having count(emp_name) =
(select count(emp_name) from employees1 group by city
order by count(emp_name) desc limit 1);