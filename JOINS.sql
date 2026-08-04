-- JOINS
-- left join
USE d22;
create table employee5(emp_id INT PRIMARY KEY,
emp_name varchar(30), designation varchar(25));
insert into employee5 values(101,'subbu','trainer'),
(102,'divakar','lawyer'),(103,'sudheer','SI'),
(104,'jagadeesh','karate master');

create table department5(dept_id int primary key, salary int, emp_id int);
insert into department5 values(431,45000,101),
(321,60000,109),(432,55000,102),(433,60000,103),(434,75000,104);

-- left join : it returns all values from left table and match values from right table

select * from employee5;
select * from department5;

select d.dept_id, e.emp_name, e.designation, d.salary from employee5 e 
left join department5 d on e.emp_id = d.emp_id;





create table students(stu_id INT PRIMARY KEY,stu_name VARCHAR(30),dept_id INT);
create table depart(dept_id INT PRIMARY KEY,dept_name VARCHAR(30));
insert into students values(101,'srinu',201),(102,'ramesh',202),(103,'mahesh',203),(104,'sai',206);
insert into depart values(201,'IT'),(202,'Management'),(203,'Commerce');
insert into depart values(204,'Science');
select s.stu_id,s.stu_name, d.dept_name from students s left join depart d on s.dept_id=d.dept_id;

-- right join
select s.stu_id,s.stu_name, d.dept_name from students s right join depart d on s.dept_id=d.dept_id;

-- inner join

select s.stu_id,s.stu_name, d.dept_name from students s inner join depart d on s.dept_id=d.dept_id;
