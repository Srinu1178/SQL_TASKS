use db1;

create table a(emp_id int,emp_name varchar(10),emp_phno 
varchar(20));

insert into a values(1,'Kavitha','78566,864354'),
(2,'ravi','54743,64746');


select * from a where emp_phno = '64746';


create table b(emp_id int,emp_name varchar(10),emp_phno 
varchar(20));

insert into b values(1,'Kavitha','78566'),
                    (1,'Kavitha','864354'),
                    (2,'ravi','54743'),
                    (2,'ravi','64746');


select * from b where emp_phno = '64746';

create table sanjeev(class_id  int, sub_name varchar(20), primary key(class_id,sub_name),
					sub_trainer varchar(20));
insert into sanjeev values(1,'math','harish'),
							(1,'science','apparao'),
                            (2,'math','harish'),
                            (2,'Science','apparao');
						
-- 2nf: it uses composite key

select distinct(sub_trainer),class_id from sanjeev;

create view t as (select class_id,sub_name from sanjeev);

select * from t;

create view u as (select distinct(sub_name),sub_trainer from sanjeev);

select * from u;

create table d(stu_id int primary key,stu_name varchar(20),dept_id int, dept_head varchar(20));
insert into d value(1 ,'Sony',101,'raju'),
					(2,'Narendra',102,'manogna'),
					(3,'yashwanth',103,'harika'),
					(4,'Sudhakar',101,'raju'),
					(5,'Sushma',102,'manogna');

truncate d;
create view i as (select stu_id,stu_name,dept_id from d);
select * from i;
create view j as (select distinct (dept_id),dept_head from d);
drop view j;
select * from j;

