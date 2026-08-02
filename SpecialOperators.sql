USE D23r;
create table customers(student_id int primary key,
						student_name varchar(20) unique, 
                        age int check(age>=18),
                        gender char(1) not null,
                        course varchar(20),
                        city varchar(20));
insert into customers values(101,'Rahul',20,'m','Python','Hyderabad'),
							(102,'Sneha',19,'f','Java','Vijayawada'),
                            (103,'Arjun',21,'m','python','Guntur'),
                            (104,'Divya',22,'f','Data Sciene','Hyderabad'),
                            (105,'Kiran',20,'m','java','Vizag'),
                            (106,'Priya',23,'f','Python','Guntur'),
                            (107,'Ramesh',21,'m','SQL','Vijayawada'),
                            (108,'Anitha',20,'f','Java','Hyderabad'),
                            (109,'Sureash',19,'m','SQL','Vizag'),
                            (110,'Keerthi',22,'f','Data Science','Guntur');
                            
SELECT * FROM customers;

SELECT * FROM customers WHERE city LIKE 'h%';
SELECT * FROM customers WHERE city LIKE '%h';
SELECT * FROM customers WHERE city LIKE '%j%';

SELECT * FROM customers WHERE city LIKE 'V____';


-- NOT LIKE
SELECT * FROM customers WHERE city NOT LIKE 'h%';

SELECT * FROM customers WHERE city NOT LIKE '%h';

SELECT * FROM customers WHERE city NOT LIKE '%j%';

SELECT * FROM customers WHERE city NOT LIKE 'V____';

SELECT * FROM customers WHERE age IS NULL;

SELECT * FROM customers WHERE age IS NOT NULL;

SELECT * FROM customers WHERE city IN ('hyderabad','vijayawada');

SELECT * FROM customers WHERE city NOT IN ('hyderabad');

SELECT * FROM customers WHERE course NOT IN('Data Science');

SELECT * FROM customers WHERE age BETWEEN 19 and 21 ;

SELECT * FROM customers WHERE age NOT BETWEEN 19 and 21 ;



