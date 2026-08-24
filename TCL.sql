-- TCL: It controls the every transaction in the database with the help
/*
rollback
savepoint
commit
*/

set autocommit=0;
use db2;
create table gold(id int primary key,name varchar(20));
 insert into gold values(101,'harish');
 savepoint sp1;
 insert into gold values(102,'rathod');
 savepoint sp2;
 insert into gold values(103,'bhai');
 savepoint sp3;
 select * from gold;
 rollback to savepoint sp2;
 commit;