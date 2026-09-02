-- set operations

use db1;
create table zoom(emp_id int, emp_name varchar(20),
emp_salary int);

insert into zoom values(1,'varun',60000),
(2,'shafi',46000),(3,'umamhesh',70000),
(4,'raju',80000);

create table meeting(man_id int,man_name varchar(20),man_salary int);

insert into meeting values(3,'umamahesh',70000),
(4,'raju',80000),(5,'bhai',45000),(6,'subbu',67000);

select emp_name from zoom
union
select man_name from meeting;

-- union all
select emp_name from zoom
union all
select man_name from meeting;

-- intersect
select emp_name from zoom
intersect
select man_name from meeting;

-- window function
use db3;
desc jai;

select job,max(salary) from jai group by job;

select *,max(salary) over(partition by job) from jai;


select *,max(salary) over(order by experience desc) as exp from jai;

