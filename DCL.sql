select * from mysql.user;
create user bhai@localhost identified by 'srinu123';

-- Grant: It gives permission to the user
grant all privileges on db2.darling to bhai@localhost; 

use db2;
select * from darling;

-- revoke: it removes the permission to the user

revoke all privileges on db2.darling from bhai@localhost;