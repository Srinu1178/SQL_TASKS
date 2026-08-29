use db3;
show tables;

select * from jai;

delimiter //
create procedure prod_name()
begin
select * from jai where salary > 60000;
select * from jai;
end //
Delimiter ;

call prod_name();


-- with parameters

delimiter //
create procedure pro_name(in mini_salary int)
begin
select * from jai where salary>mini_salary;
end //
delimiter ;

call pro_name(75000);
call pro_name(25000);

delimiter //
create procedure employees1(in developer varchar(25))
begin
select * from jai where job = developer;
end //
delimiter ;

call employees1('Developer');

drop procedure employees;
drop procedure emp_names;

-- out
delimiter &
create procedure some_data(out maxi int)
begin
select max(emp_id) into maxi from jai;
end &
delimiter ;

call some_data(@salary);
select @salary;

-- multi column parameters
-- in,out
delimiter %
create procedure yahoo(in p_id int, out p_salary int)
begin
select salary into p_salary from jai where emp_id = p_id;
end %
delimiter ;

call yahoo(119,@salary);
select @salary;


