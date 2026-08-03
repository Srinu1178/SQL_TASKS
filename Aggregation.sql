-- aggregation function
CREATE TABLE students3(student_id int,student_name varchar(30),fee int,city varchar(30));

INSERT INTO students3 VALUES(101,'rasagna',39000,'hyd'),(102,'vasudha',45000,'hyd'),
(103,'chandu',60000,'cumbum'),(104,'neelakanta',39000,'vijayanagaram'),(105,'srivani',45000,'nizamabad'),
(106,'likitha',60000,'khammam');

SELECT city,sum(fee) from students3 group by city;

INSERT INTO students3 VALUES(101,'rasagna',130000,'hyd'),(102,'vasudha',145000,'hyd'),
(103,'chandu',70000,'cumbum'),(104,'neelakanta',90000,'vijayanagaram'),(105,'srivani',150000,'nizamabad'),
(106,'likitha',160000,'khammam');

SELECT city,min(fee) from students3 group by city;

SELECT city,max(fee) from students3 group by city;

SELECT city,avg(fee) from students3 group by city;

SELECT city,count(*) from students3 group by city;

-- 