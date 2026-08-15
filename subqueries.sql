use db2;
Create table darling(
 EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2),
    HireDate DATE
);
INSERT INTO darling(EmployeeID, FirstName, LastName, Department, Salary, HireDate) VALUES
(1, 'John', 'Doe', 'HR', 50000, '2020-01-15'),
(2, 'Jane', 'Smith', 'Finance', 60000, '2018-03-12'),
(3, 'Sam', 'Brown', 'IT', 75000, '2019-05-22'),
(4, 'Lucy', 'Jones', 'HR', 53000, '2021-07-11'),
(5, 'Mike', 'Taylor', 'Finance', 65000, '2017-09-23'),
(6, 'Sara', 'Miller', 'IT', 78000, '2018-06-30');

select * from darling;
select avg(salary) from darling;

-- Sub Queries
select FirstName, salary from darling
where salary > (select avg(salary) from darling);

-- second highest salary
select firstName,LastName, salary from darling order by salary desc limit 1
offset 1;

select firstName,salary from darling where salary = (
select max(salary) from darling where salary<(select max(salary) from darling));

-- Minimum salary

select firstName,LastName, salary from darling order by salary limit 1
offset 1;
select firstName,salary from darling where salary = (
select min(salary) from darling where salary>(select min(salary) from 
darling));


-- Find the second minimum salary of HR
select firstName,salary ,department from darling where salary = (
select min(salary) from darling where salary>(select min(salary) 
from darling where department = 'HR'));


