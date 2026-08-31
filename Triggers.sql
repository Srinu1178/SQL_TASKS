use db1;

CREATE TABLE emps (
    emp_id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    city VARCHAR(50)
);
INSERT INTO emps VALUES
(101, 'Ravi', 'IT', 'Hyderabad'),
(102, 'Priya', 'HR', 'Chennai'),
(103, 'Kumar', 'Sales', 'Hyderabad'),
(104, 'Anil', 'IT', 'Bangalore'),
(105, 'Sneha', 'Finance', 'Pune');

CREATE TABLE mngrs (
    manager_id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    city VARCHAR(50)
);
INSERT INTO mngrs VALUES
(201, 'Priya', 'HR', 'Chennai'),
(202, 'Raj', 'Sales', 'Mumbai'), 
(203, 'Anil', 'Finance', 'Pune'),
(204, 'Suresh', 'IT', 'Bangalore'),
(205, 'Ravi', 'IT', 'Hyderabad');

create table amulya(emp_id int primary key,
emp_name varchar(20),
salary int,
city varchar(20));

insert into amulya values(1,'bhanu',70000,'hyd'),
(2,'rasagna',67000,'hyd'),
(3,'dinesh',50000,'srisailam');

select * from amulya;

create table audit(emp_id int,yesno varchar(20),
timedatime datetime);

select * from audit;
-- trigger
delimiter //
create trigger trigger_name
before insert on amulya
for each row
Begin
insert into audit values (new.emp_id,'insert',now());
end //
delimiter ;
select * from audit;

-- after insert
delimiter //
create trigger trigger_name1
after insert on amulya
for each row 
begin
insert into audit values(new.emp_id,'After insert',now());
end //
delimiter ;

insert into amulya values(5,'subbu',56000,'Bhimavaram');

select * from audit; 
insert into amulya values(6,'bhai',56000,'Bhimavaram');

insert into amulya values(4,'indhu',25000,'bhuvaneswar');
insert into amulya values(7,'laddu',124000,'bhimavaram');
drop trigger trigger_name;

-- before update
delimiter $
create trigger trigger_name2 
before update on amulya
for each row
begin
if new.salary<70000 then set new.salary = 70000;
end if;
end $
delimiter ;
update amulya
set salary = 36000 where emp_id = 3;
select * from amulya;

create table salary_log(emp_id int,salary int,new_salary int);

-- After update
delimiter //
create trigger trigger_name3
after update on amulya
for each row
begin 
insert into salary_log values(old.emp_id,old.salary,new.salary);
end //
delimiter ;

update amulya set salary = 32000 where emp_id = 5;
select * from salary_log;

show triggers;


select * from amulya;
truncate amulya;

drop trigger trigger_name3;

insert into amulya values(1,'bhanu',70000,'hyd'),
(2,'rasagna',67000,'hyd'),
(3,'dinesh',50000,'srisailam');

desc audit;
desc amulya;
delimiter //
create trigger before_insertion
before insert on amulya
for each row
begin
 insert into audit values(new.emp_id,'BEFORE INSERT',now());
end //
delimiter ;

delimiter //
create trigger after_insertion
after insert on amulya
for each row
begin
 insert into audit values(new.emp_id,'After insert',now());
 end //
 delimiter ;
desc amulya;
 insert into amulya values(4,'subbu',56000,'hyderabad');
 
 select * from audit;
 
 -- before update
 
 delimiter //
 create trigger before_update
 before update on amulya
 for each row 
 begin
 if new.salary<30000 then 
 set new.salary = 30000 ;
 end if;
 end //
 delimiter ;
 
 update amulya set salary = 28000
 where emp_id = 1;
 
 select * from amulya;
 
 select * from audit;

-- after update

delimiter //
create trigger after_update
after update on amulya
for each row
begin
 insert into audit values(old.emp_id,'After Update',now());
end //
delimiter ;

update amulya set salary = 70000 where emp_id = 1;

select * from amulya;
select * from audit;

delimiter //
create trigger before_delete
before delete on amulya
for each row
begin
 if old.salary > 60000 then 
  signal sqlstate  '45000'
  set message_text = 'high salary cannot be deleted';
end if;
end //
delimiter ;
select * from amulya;

delimiter //
create trigger before_delete1
before delete on amulya
for each row
begin
 insert into audit values(old.emp_id,'before delete',now());
end //
delimiter ;

delete from amulya where emp_id = 3;


select * from audit;
select * from amulya;

delimiter //
create trigger after_delete
before delete on amulya
for each row
begin
 insert into audit values(old.emp_id,'After delete',now());
end //
delimiter ;

select * from amulya;

delete from amulya where emp_id = 4;

select * from audit;





 
