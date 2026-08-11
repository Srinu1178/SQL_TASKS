use db2;
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department_id INT,
    salary DECIMAL(10,2),
    city VARCHAR(30),
    hire_date DATE,
    manager_id INT
);
INSERT INTO Employees VALUES
(101,'Rahul',1,75000,'Hyderabad','2021-01-15',105),
(102,'Priya',2,65000,'Bangalore','2022-03-10',106),
(103,'Arjun',1,80000,'Hyderabad','2020-07-22',105),
(104,'Sneha',3,55000,'Chennai','2023-05-18',107),
(105,'Kiran',1,95000,'Hyderabad','2019-06-11',NULL),
(106,'Anjali',2,90000,'Bangalore','2018-09-30',NULL),
(107,'Vijay',3,87000,'Chennai','2019-02-25',NULL),
(108,'Pooja',2,62000,'Mumbai','2022-11-12',106),
(109,'Ramesh',1,72000,'Pune','2021-04-16',105),
(110,'Deepa',3,60000,'Hyderabad','2023-01-05',107);
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(30),
    location VARCHAR(30)
);

INSERT INTO Departments VALUES
(1,'IT','Hyderabad'),
(2,'HR','Bangalore'),
(3,'Finance','Chennai');

-- 1.Display the names of employees whose salary is greater than 70,000 and who work in Hyderabad.
select emp_name from employees where salary > 70000 and city='Hyderabad';

-- 2. Display all unique cities where employees are working.
select distinct (city) from employees;
-- 3. Find employees whose names:
-- start with A
select emp_name from employees where emp_name like 'a%';

-- end with a
select emp_name from employees where emp_name like '%a';

-- contain ra
select emp_name from employees where emp_name like '%ra%';

-- 4. Display employees whose salaries are between 60,000 and 85,000.
select * from employees where salary between 60000 and 85000;

-- 5.Display employees who belong to department IDs 1 and 3.
select emp_name,department_id from employees where department_id IN (1,3);

-- 6. Display all employees ordered by:

	-- Salary (Highest first)
    -- If salaries are equal, sort by employee name alphabetically.
        select * from employees order by salary desc,emp_name asc;
-- 7. Aggregate Functions
-- Find:
-- Highest salary
select max(salary) as max_salary from employees;
-- Lowest salary
select min(salary) as min_salary from employees;
-- Average salary
select avg(salary) as avg_salary from employees;
-- Total salary
select sum(salary) as total_salary from employees;
-- Number of employees
select count(*) as no_of_employees from employees;


-- 8. Display the number of employees in each department.
select department_name,count(*) as no_of_employees from employees join departments on employees.department_id
=departments.department_id group by department_name;

-- 9. Display departments where the average salary is greater than 70,000.
select department_name,avg(salary) as avg_salary from employees join departments on employees.department_id
=departments.department_id group by department_name HAVING avg(salary)>70000;

-- 10. INNER JOIN

-- Display:

-- Employee Name, Department Name, Department Location

select emp_name,department_name,location from employees inner join departments on
employees.department_id = departments.department_id;

-- 11. LEFT JOIN

-- Display all employees with their department names.
-- If a department is missing, still display the employee.
select emp_name,department_name from employees left join departments
on employees.department_id = departments.department_id;


-- 12. SELF JOIN

-- Display:

-- Employee Name, Manager Name
select e.emp_name,m.emp_name as manager from employees e right join employees m on e.emp_id = m.manager_id;

-- 13. Multiple Conditions

-- Display employees who: work in Hyderabad, salary > 60,000, hired after 2021-01-01
select * from employees where city = 'Hyderabad' and salary>60000 and hire_date > '2021-01-01';

-- 14. Display employees who joined during the year 2022.
select emp_name from employees where YEAR(hire_date)= 2022;

-- 15. Display the top 3 highest-paid employees.
select * from employees order by salary desc limit 3;

-- 16. Display: Employee Name, Department Name, Salary, Manager Name
-- Only include employees: earning more than 60,000 whose department is in Hyderabad or Bangalore
-- ordered by salary in descending order.
SELECT e.emp_name AS employee_name, d.department_name AS department_name, e.salary, m.emp_name AS manager_name
FROM employees e
INNER JOIN departments d ON e.department_id = d.department_id
LEFT JOIN employees m ON e.manager_id = m.manager_id
WHERE e.salary > 60000 
  AND d.location IN ('Hyderabad', 'Bangalore')
ORDER BY e.salary DESC;