show tables;
desc departments;
desc employees;

-- INNER JOIN (15)
-- 1. Display employee name and department name
select emp_name,dept_name from employees 
inner join departments on employees.dept_id = departments.dept_id;


-- 2. Display employee name, department name, and location.
select emp_name,dept_name,location from employees 
inner join departments on employees.dept_id = departments.dept_id;

-- 3. Display employees working in Hyderabad.
select employees.*, departments.dept_name,departments.location,
departments.budget 
from employees inner join departments on employees.dept_id = departments.dept_id
where location = 'Hyderabad';

-- 4. Display employees working in Bangalore.
select employees.*, departments.dept_name,departments.location,
departments.budget 
from employees inner join departments on employees.dept_id = departments.dept_id
where location = 'Bangalore';

-- 5. Display employees whose salary is greater than 50000.
select employees.*, departments.dept_name,departments.location,
departments.budget 
from employees inner join departments on employees.dept_id = departments.dept_id
where salary>50000;

-- 6. Display employees aged above 30 with department names.
select employees.*, departments.dept_name,departments.location,
departments.budget 
from employees inner join departments on employees.dept_id = departments.dept_id
where age > 30;

-- 7. Display employee name and department budget.
select employees.emp_name, departments.budget 
from employees inner join departments on employees.dept_id = departments.dept_id;

-- 8. Count employees in each department.
select departments.dept_name,count(employees.emp_id) from employees
inner join departments on employees.dept_id = departments.dept_id group by departments.dept_name;

-- 9.Find the total salary paid in each location
select departments.location,sum(employees.salary) as total_salary
from employees inner join departments on employees.dept_id = departments.dept_id
group by location;

-- 10. Find the average salary in each department.
select departments.dept_name,avg(employees.salary) as avg_salary
from employees inner join departments on employees.dept_id = departments.dept_id
group by dept_name;

-- 11. Find the maximum salary in each department.
select departments.dept_name,max(employees.salary) as max_salary
from employees inner join departments on employees.dept_id = departments.dept_id
group by dept_name;

-- 12. Find the minimum salary in each department.
select departments.dept_name,min(employees.salary) as min_salary
from employees inner join departments on employees.dept_id = departments.dept_id
group by dept_name;

-- 13. Display departments ordered by total salary.
select departments.dept_name,sum(employees.salary) as total_salary
from employees inner join departments on employees.dept_id = departments.dept_id
group by dept_name order by total_salary;

-- 14. Display locations ordered by employee count.
select departments.location,count(employees.emp_id) as employee_count
from employees inner join departments on employees.dept_id = departments.dept_id
group by location order by employee_count;

-- 15. Display the top 10 highest-paid employees with their department names.
select emp_name,dept_name
from employees inner join departments on employees.dept_id = departments.dept_id
order by salary desc limit 10;

-- LEFT JOIN (15)
-- 1. Display all departments with employee names.
select departments.*,emp_name
from departments left join employees on employees.dept_id = departments.dept_id;

-- 2. Display all departments with employee salaries.
select departments.*,salary
from departments left join employees on employees.dept_id = departments.dept_id;

-- 3. Display all departments with employee ages.
select departments.*,age
from departments left join employees on employees.dept_id = departments.dept_id;

-- 4. Display all department names and locations with employee names.
select departments.*,emp_name
from departments left join employees on employees.dept_id = departments.dept_id;

-- 5. Count employees in each department.
select dept_name,count(employees.emp_name) as count_employees from
departments left join employees on departments.dept_id = employees.dept_id
group by dept_name;

-- 6. Display total salary department-wise.
select dept_name,sum(salary) as total_salary from
departments left join employees on departments.dept_id = employees.dept_id
group by dept_name;

-- 7.Display average salary department-wise.
select dept_name,avg(salary) as avg_salary from
departments left join employees on departments.dept_id = employees.dept_id
group by dept_name;

-- 8. Display maximum salary department-wise.
select dept_name,max(salary) as max_salary from
departments left join employees on departments.dept_id = employees.dept_id
group by dept_name;

-- 9. Display minimum salary department-wise.
select dept_name,min(salary) as min_salary from
departments left join employees on departments.dept_id = employees.dept_id
group by dept_name;

-- 10. Display employee count in each location.
select location,count(emp_name) as no_of_employees from
departments left join employees on departments.dept_id = employees.dept_id
group by location;

-- 11. Display departments ordered by budget.
select dept_name,budget from departments order by budget;

-- 12. Display locations with total salary.
select location,sum(salary) as total_salary from
departments left join employees on departments.dept_id = employees.dept_id
group by location;
-- 13. Display departments ordered by employee count.
select dept_name,count(emp_name) as employee_count from
departments left join employees on departments.dept_id = employees.dept_id
group by dept_name order by employee_count;
 
-- 14. Display employee names in ascending order with department names.
select emp_name,dept_name from departments left join 
employees on departments.dept_id = employees.dept_id order by emp_name;

-- 15. Display department names in alphabetical order with employees.
select emp_name,dept_name from departments left join 
employees on departments.dept_id = employees.dept_id order by dept_name;

-- RIGHT JOIN (15)
-- 1. Display employee names with department names.
select emp_name,dept_name from departments right join
employees on departments.dept_id = employees.dept_id;

-- 2. Display employee names with department locations.
select emp_name,dept_name,location from departments right join
employees on departments.dept_id = employees.dept_id;

-- 3.Display employee names with department budgets.
select emp_name, budget from departments right join
employees on departments.dept_id = employees.dept_id;

-- 4. Display employees from Chennai.
select emp_name,age,salary,location  from departments right join
employees on departments.dept_id = employees.dept_id
where location = 'chennai';

-- 5. Display employees from Mumbai.
select emp_name,age,salary,location  from departments right join
employees on departments.dept_id = employees.dept_id
where location = 'Mumbai';

-- 6. Display employees earning above 75000.
select emp_name,age,salary,location  from departments right join
employees on departments.dept_id = employees.dept_id
where salary>75000;

-- 7. Display employees aged between 25 and 35.
select emp_name,age,salary,location  from departments right join
employees on departments.dept_id = employees.dept_id
where age between 25 and 35;

-- 8. Count employees in every location.
select location,count(emp_name) as count_employees  from departments right join
employees on departments.dept_id = employees.dept_id
group by location;

-- 9. Display average salary by location.
select location,avg(salary) as avg_salary  from departments right join
employees on departments.dept_id = employees.dept_id
group by location;

-- 10. Display highest salary in every location.
select location,max(salary) as max_salary  from departments right join
employees on departments.dept_id = employees.dept_id
group by location;

-- 11. Display lowest salary in every location.
select location,min(salary) as min_salary  from departments right join
employees on departments.dept_id = employees.dept_id
group by location;

-- 12. Display total budget location-wise.
select location,sum(budget) as total_budget  from departments right join
employees on departments.dept_id = employees.dept_id
group by location;

-- 13. Display employees ordered by department budget.
select emp_name,age,salary,budget from departments right join
employees on departments.dept_id = employees.dept_id
order by budget;

-- 14. Display employees ordered by salary.
select emp_name,age,salary from departments right join
employees on departments.dept_id = employees.dept_id
order by salary;

-- 15. Display department names with employee count.
select dept_name,count(emp_name) as count_employee from departments right join
employees on departments.dept_id = employees.dept_id
group by dept_name;

-- Full Join(15)
-- 1. Display all department names and employee names.
select dept_name,emp_name,salary,age,budget,location
from departments left join employees on departments.dept_id = employees.dept_id
union
select dept_name,emp_name,salary,age,budget,location
from departments right join employees on departments.dept_id = employees.dept_id;

-- 2. Display department names, employee names, and locations.
select dept_name,emp_name,location
from departments left join employees on departments.dept_id = employees.dept_id
union
select dept_name,emp_name,location
from departments right join employees on departments.dept_id = employees.dept_id;

-- 3. Display department budgets with employee salaries.
select dept_name,budget,emp_name,salary
from departments left join employees on departments.dept_id = employees.dept_id
union
select dept_name,budget,emp_name,salary
from departments right join employees on departments.dept_id = employees.dept_id;

-- 4. Display all employee names ordered by department.
select emp_name,dept_name
from departments left join employees on departments.dept_id = employees.dept_id
union
select emp_name,dept_name
from departments right join employees on departments.dept_id = employees.dept_id
order by dept_name;

-- 5. Display all department names ordered by budget.
select dept_name,budget
from departments left join employees on departments.dept_id = employees.dept_id
union
select dept_name,budget
from departments right join employees on departments.dept_id = employees.dept_id
order by budget;

-- 6. Display employee count department-wise.
select dept_name,count(emp_name) as employee_count
from departments left join employees on departments.dept_id = employees.dept_id
group by dept_name
union
select dept_name,count(emp_name) as employee_count
from departments right join employees on departments.dept_id = employees.dept_id
group by dept_name;

-- 7. Display total salary department-wise.
select dept_name,sum(salary) as total_salary
from departments left join employees on departments.dept_id = employees.dept_id
group by dept_name
union
select dept_name,sum(salary) as total_salary
from departments right join employees on departments.dept_id = employees.dept_id
group by dept_name;

-- 8. Display average salary department-wise.
select dept_name,sum(salary) as total_salary
from departments left join employees on departments.dept_id = employees.dept_id
group by dept_name
union
select dept_name,sum(salary) as total_salary
from departments right join employees on departments.dept_id = employees.dept_id
group by dept_name;

-- 9. Display maximum salary department-wise.
select dept_name,max(salary) as max_salary
from departments left join employees on departments.dept_id = employees.dept_id
group by dept_name
union
select dept_name,max(salary) as max_salary
from departments right join employees on departments.dept_id = employees.dept_id
group by dept_name;
-- 10. Display minimum salary department-wise.
select dept_name,min(salary) as min_salary
from departments left join employees on departments.dept_id = employees.dept_id
group by dept_name
union
select dept_name,min(salary) as min_salary
from departments right join employees on departments.dept_id = employees.dept_id
group by dept_name;
-- 12. Display locations with employee count.
select location,count(emp_name) as employee_count
from departments left join employees on departments.dept_id = employees.dept_id
group by location
union
select location,count(emp_name) as employee_count
from departments right join employees on departments.dept_id = employees.dept_id
group by location;

-- 13. Display locations with average salary.
select location,avg(salary) as avg_salary
from departments left join employees on departments.dept_id = employees.dept_id
group by location
union
select location,avg(salary) as avg_salary
from departments right join employees on departments.dept_id = employees.dept_id
group by location;
-- 14. Display locations with total salary.
select location,sum(salary) as total_salary
from departments left join employees on departments.dept_id = employees.dept_id
group by location
union
select location,sum(salary) as total_salary
from departments right join employees on departments.dept_id = employees.dept_id
group by location;

-- 15. Display departments and employees sorted by department name.
select departments.*,employees.* from departments left join
employees on departments.dept_id = employees.dept_id order by dept_name;
