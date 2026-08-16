use db3;


CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary DECIMAL(10,2),
    city VARCHAR(30),
    age INT,
    experience INT,
    joining_date DATE
);
INSERT INTO employees
(emp_id, emp_name, department, salary, city, age, experience, joining_date)
VALUES
(1,'Arjun','IT',55000,'Hyderabad',25,2,'2023-06-15'),
(2,'Rahul','HR',42000,'Chennai',28,4,'2021-08-20'),
(3,'Priya','Finance',48000,'Bangalore',26,3,'2022-03-10'),
(4,'Kiran','IT',62000,'Hyderabad',29,5,'2020-07-12'),
(5,'Sneha','Sales',39000,'Mumbai',24,1,'2024-01-15'),
(6,'Ravi','Finance',51000,'Pune',30,6,'2019-05-18'),
(7,'Anjali','HR',45000,'Delhi',27,3,'2022-09-11'),
(8,'Vijay','IT',68000,'Bangalore',32,7,'2018-04-22'),
(9,'Meena','Sales',41000,'Chennai',25,2,'2023-11-05'),
(10,'Suresh','Finance',57000,'Hyderabad',31,6,'2019-12-17'),
(11,'Divya','IT',59000,'Pune',26,3,'2022-01-20'),
(12,'Ramesh','HR',46000,'Mumbai',33,8,'2017-06-25'),
(13,'Swathi','Sales',43000,'Delhi',24,1,'2024-02-10'),
(14,'Naveen','IT',72000,'Bangalore',35,10,'2015-03-15'),
(15,'Lakshmi','Finance',53000,'Chennai',29,5,'2020-10-19'),
(16,'Mahesh','HR',47000,'Hyderabad',30,6,'2019-08-14'),
(17,'Pooja','Sales',40000,'Pune',25,2,'2023-05-21'),
(18,'Sai','IT',65000,'Mumbai',28,5,'2020-11-11'),
(19,'Keerthi','Finance',49000,'Delhi',27,4,'2021-02-18'),
(20,'Prakash','HR',44000,'Bangalore',32,7,'2018-09-09'),
(21,'Akhil','IT',58000,'Chennai',26,3,'2022-07-13'),
(22,'Harini','Sales',42000,'Hyderabad',24,1,'2024-03-12'),
(23,'Manoj','Finance',55000,'Pune',34,9,'2016-05-17'),
(24,'Deepika','HR',48000,'Mumbai',29,5,'2020-06-22'),
(25,'Venkat','IT',70000,'Delhi',36,11,'2014-04-10'),
(26,'Sanjay','Sales',45000,'Bangalore',28,4,'2021-10-15'),
(27,'Bhavya','Finance',52000,'Chennai',25,2,'2023-01-09'),
(28,'Rohit','IT',61000,'Hyderabad',30,6,'2019-11-20'),
(29,'Nandini','HR',43000,'Pune',26,3,'2022-05-14'),
(30,'Gopal','Sales',39000,'Mumbai',31,7,'2018-12-18'),
(31,'Teja','IT',67000,'Delhi',27,4,'2021-07-16'),
(32,'Swaroop','Finance',50000,'Bangalore',33,8,'2017-03-12'),
(33,'Asha','HR',46000,'Chennai',29,5,'2020-02-20'),
(34,'Vamsi','Sales',44000,'Hyderabad',25,2,'2023-09-15'),
(35,'Neha','IT',63000,'Pune',28,5,'2020-08-11'),
(36,'Karthik','Finance',56000,'Mumbai',35,10,'2015-06-17'),
(37,'Sowmya','HR',47000,'Delhi',27,4,'2021-12-05'),
(38,'Ajay','Sales',41000,'Bangalore',24,1,'2024-04-19'),
(39,'Varun','IT',69000,'Chennai',31,7,'2018-07-21'),
(40,'Riya','Finance',54000,'Hyderabad',26,3,'2022-10-10'),
(41,'Bharath','HR',49000,'Pune',30,6,'2019-04-14'),
(42,'Kavya','Sales',43000,'Mumbai',25,2,'2023-06-20'),
(43,'Mohan','IT',64000,'Delhi',34,9,'2016-09-12'),
(44,'Sahithi','Finance',51000,'Bangalore',28,4,'2021-03-15'),
(45,'Tarun','HR',45000,'Chennai',32,7,'2018-05-18'),
(46,'Reshma','Sales',40000,'Hyderabad',23,1,'2024-05-10'),
(47,'Chandra','IT',71000,'Pune',37,12,'2013-08-22'),
(48,'Shilpa','Finance',53000,'Mumbai',29,5,'2020-11-17'),
(49,'Rakesh','HR',47000,'Delhi',31,8,'2017-10-13'),
(50,'Pavani','Sales',42000,'Bangalore',26,3,'2022-04-16'),
(51,'Aditya','IT',60000,'Chennai',27,4,'2021-06-11'),
(52,'Madhavi','Finance',55000,'Hyderabad',33,8,'2017-12-20'),
(53,'Surya','HR',46000,'Pune',28,5,'2020-09-14'),
(54,'Anusha','Sales',39000,'Mumbai',24,1,'2024-06-15'),
(55,'Ranjith','IT',68000,'Delhi',35,10,'2015-11-19'),
(56,'Geetha','Finance',50000,'Bangalore',30,6,'2019-02-12'),
(57,'Harsha','HR',48000,'Chennai',27,4,'2021-08-18'),
(58,'Mounika','Sales',43000,'Hyderabad',25,2,'2023-07-21'),
(59,'Dinesh','IT',62000,'Pune',29,5,'2020-12-10'),
(60,'Jyothi','Finance',52000,'Mumbai',32,7,'2018-03-17'),
(61,'Lokesh','HR',44000,'Delhi',26,3,'2022-11-14'),
(62,'Sushma','Sales',41000,'Bangalore',28,4,'2021-05-20'),
(63,'Chaitanya','IT',73000,'Chennai',36,11,'2014-10-15'),
(64,'Sravani','Finance',49000,'Hyderabad',27,3,'2022-06-12'),
(65,'Ganesh','HR',46000,'Pune',31,7,'2018-08-19'),
(66,'Lavanya','Sales',42000,'Mumbai',24,1,'2024-07-10'),
(67,'Raghu','IT',66000,'Delhi',33,9,'2016-12-11'),
(68,'Sindhu','Finance',54000,'Bangalore',29,5,'2020-04-17'),
(69,'Abhishek','HR',47000,'Chennai',28,4,'2021-09-20'),
(70,'Niharika','Sales',40000,'Hyderabad',25,2,'2023-10-14'),
(71,'Krishna','IT',70000,'Pune',34,9,'2016-07-18'),
(72,'Bhanu','Finance',51000,'Mumbai',30,6,'2019-06-21'),
(73,'Shalini','HR',45000,'Delhi',27,3,'2022-12-12'),
(74,'Ravi Teja','Sales',43000,'Bangalore',26,3,'2022-02-15'),
(75,'Siddharth','IT',61000,'Chennai',29,5,'2020-05-19'),
(76,'Roshini','Finance',56000,'Hyderabad',32,8,'2017-11-16'),
(77,'Srinivas','HR',48000,'Pune',35,10,'2015-09-14'),
(78,'Madhuri','Sales',41000,'Mumbai',24,1,'2024-08-11'),
(79,'Yashwanth','IT',69000,'Delhi',31,7,'2018-06-20'),
(80,'Anjali','Finance',53000,'Bangalore',28,4,'2021-01-17'),
(81,'Sandeep','HR',46000,'Chennai',30,6,'2019-10-12'),
(82,'Kalyani','Sales',39000,'Hyderabad',25,2,'2023-12-18'),
(83,'Pavan','IT',65000,'Pune',33,8,'2017-05-21'),
(84,'Deepthi','Finance',50000,'Mumbai',27,3,'2022-08-15'),
(85,'Rohith','HR',47000,'Delhi',29,5,'2020-03-19'),
(86,'Manasa','Sales',44000,'Bangalore',26,3,'2022-09-21'),
(87,'Nikhil','IT',72000,'Chennai',37,12,'2013-12-14'),
(88,'Sirisha','Finance',52000,'Hyderabad',30,6,'2019-07-18'),
(89,'Pranav','HR',45000,'Pune',28,4,'2021-11-20'),
(90,'Tejaswi','Sales',42000,'Mumbai',24,1,'2024-09-10'),
(91,'Aravind','IT',67000,'Delhi',34,9,'2016-08-17'),
(92,'Bhargavi','Finance',55000,'Bangalore',29,5,'2020-01-15'),
(93,'Ramesh Babu','HR',49000,'Chennai',32,8,'2017-04-19'),
(94,'Pallavi','Sales',40000,'Hyderabad',25,2,'2023-03-20'),
(95,'Surendra','IT',63000,'Pune',30,6,'2019-09-12'),
(96,'Divya Sri','Finance',51000,'Mumbai',27,4,'2021-04-18'),
(97,'Maneesh','HR',46000,'Delhi',31,7,'2018-11-15'),
(98,'Keerthana','Sales',43000,'Bangalore',26,3,'2022-06-20'),
(99,'Abhinav','IT',71000,'Chennai',35,10,'2015-07-14'),
(100,'Sushanth','Finance',54000,'Hyderabad',28,4,'2021-12-19');
CREATE TABLE employee_details (
    detail_id INT PRIMARY KEY,
    emp_id INT,
    manager_name VARCHAR(50),
    project VARCHAR(50),
    job_role VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(15),
    performance_rating DECIMAL(3,1),
    work_mode VARCHAR(20),
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);
INSERT INTO employee_details
(detail_id, emp_id, manager_name, project, job_role, email, phone, performance_rating, work_mode)
VALUES
(1,1,'Rajesh Kumar','Banking App','Python Developer','arjun@gmail.com','9876500001',4.5,'Hybrid'),
(2,2,'Suresh Reddy','HR Portal','HR Executive','rahul@gmail.com','9876500002',4.0,'Office'),
(3,3,'Priya Sharma','Finance Analytics','Financial Analyst','priya@gmail.com','9876500003',4.2,'Remote'),
(4,4,'Rajesh Kumar','E-Commerce','Software Engineer','kiran@gmail.com','9876500004',4.8,'Hybrid'),
(5,5,'Anil Kumar','Sales Tracker','Sales Executive','sneha@gmail.com','9876500005',3.9,'Office'),
(6,6,'Priya Sharma','Finance Analytics','Financial Analyst','ravi@gmail.com','9876500006',4.3,'Remote'),
(7,7,'Suresh Reddy','HR Portal','HR Executive','anjali@gmail.com','9876500007',4.1,'Hybrid'),
(8,8,'Rajesh Kumar','Cloud Migration','Cloud Engineer','vijay@gmail.com','9876500008',4.7,'Remote'),
(9,9,'Anil Kumar','Sales Tracker','Sales Executive','meena@gmail.com','9876500009',3.8,'Office'),
(10,10,'Priya Sharma','Finance Analytics','Finance Manager','suresh@gmail.com','9876500010',4.6,'Hybrid'),
(11,11,'Rajesh Kumar','Banking App','Python Developer','divya@gmail.com','9876500011',4.4,'Remote'),
(12,12,'Suresh Reddy','HR Portal','HR Manager','ramesh@gmail.com','9876500012',4.0,'Office'),
(13,13,'Anil Kumar','Sales Tracker','Sales Executive','swathi@gmail.com','9876500013',3.7,'Hybrid'),
(14,14,'Rajesh Kumar','Cloud Migration','Cloud Architect','naveen@gmail.com','9876500014',4.9,'Remote'),
(15,15,'Priya Sharma','Finance Analytics','Financial Analyst','lakshmi@gmail.com','9876500015',4.3,'Office'),
(16,16,'Suresh Reddy','HR Portal','HR Executive','mahesh@gmail.com','9876500016',3.9,'Hybrid'),
(17,17,'Anil Kumar','Sales Tracker','Sales Executive','pooja@gmail.com','9876500017',4.1,'Office'),
(18,18,'Rajesh Kumar','Banking App','Software Engineer','sai@gmail.com','9876500018',4.6,'Remote'),
(19,19,'Priya Sharma','Finance Analytics','Financial Analyst','keerthi@gmail.com','9876500019',4.2,'Hybrid'),
(20,20,'Suresh Reddy','HR Portal','HR Manager','prakash@gmail.com','9876500020',4.0,'Office'),
(21,21,'Rajesh Kumar','E-Commerce','Python Developer','akhil@gmail.com','9876500021',4.5,'Remote'),
(22,22,'Anil Kumar','Sales Tracker','Sales Executive','harini@gmail.com','9876500022',3.8,'Office'),
(23,23,'Priya Sharma','Finance Analytics','Finance Manager','manoj@gmail.com','9876500023',4.7,'Hybrid'),
(24,24,'Suresh Reddy','HR Portal','HR Executive','deepika@gmail.com','9876500024',4.1,'Remote'),
(25,25,'Rajesh Kumar','Cloud Migration','Cloud Engineer','venkat@gmail.com','9876500025',4.9,'Office'),
(26,26,'Anil Kumar','Sales Tracker','Sales Executive','sanjay@gmail.com','9876500026',3.9,'Hybrid'),
(27,27,'Priya Sharma','Finance Analytics','Financial Analyst','bhavya@gmail.com','9876500027',4.4,'Remote'),
(28,28,'Rajesh Kumar','E-Commerce','Software Engineer','rohit@gmail.com','9876500028',4.6,'Hybrid'),
(29,29,'Suresh Reddy','HR Portal','HR Executive','nandini@gmail.com','9876500029',4.0,'Office'),
(30,30,'Anil Kumar','Sales Tracker','Sales Executive','gopal@gmail.com','9876500030',3.6,'Remote'),
(31,31,'Rajesh Kumar','Banking App','Software Engineer','teja@gmail.com','9876500031',4.8,'Hybrid'),
(32,32,'Priya Sharma','Finance Analytics','Financial Analyst','swaroop@gmail.com','9876500032',4.2,'Office'),
(33,33,'Suresh Reddy','HR Portal','HR Executive','asha@gmail.com','9876500033',4.0,'Remote'),
(34,34,'Anil Kumar','Sales Tracker','Sales Executive','vamsi@gmail.com','9876500034',3.9,'Hybrid'),
(35,35,'Rajesh Kumar','Cloud Migration','Cloud Engineer','neha@gmail.com','9876500035',4.5,'Remote'),
(36,36,'Priya Sharma','Finance Analytics','Finance Manager','karthik@gmail.com','9876500036',4.7,'Office'),
(37,37,'Suresh Reddy','HR Portal','HR Executive','sowmya@gmail.com','9876500037',4.1,'Hybrid'),
(38,38,'Anil Kumar','Sales Tracker','Sales Executive','ajay@gmail.com','9876500038',3.8,'Office'),
(39,39,'Rajesh Kumar','E-Commerce','Software Engineer','varun@gmail.com','9876500039',4.6,'Remote'),
(40,40,'Priya Sharma','Finance Analytics','Financial Analyst','riya@gmail.com','9876500040',4.3,'Hybrid'),
(41,41,'Suresh Reddy','HR Portal','HR Manager','bharath@gmail.com','9876500041',4.2,'Office'),
(42,42,'Anil Kumar','Sales Tracker','Sales Executive','kavya@gmail.com','9876500042',3.9,'Remote'),
(43,43,'Rajesh Kumar','Cloud Migration','Cloud Engineer','mohan@gmail.com','9876500043',4.8,'Hybrid'),
(44,44,'Priya Sharma','Finance Analytics','Financial Analyst','sahithi@gmail.com','9876500044',4.4,'Office'),
(45,45,'Suresh Reddy','HR Portal','HR Executive','tarun@gmail.com','9876500045',4.0,'Remote'),
(46,46,'Anil Kumar','Sales Tracker','Sales Executive','reshma@gmail.com','9876500046',3.7,'Hybrid'),
(47,47,'Rajesh Kumar','Cloud Migration','Cloud Architect','chandra@gmail.com','9876500047',4.9,'Remote'),
(48,48,'Priya Sharma','Finance Analytics','Financial Analyst','shilpa@gmail.com','9876500048',4.3,'Office'),
(49,49,'Suresh Reddy','HR Portal','HR Executive','rakesh@gmail.com','9876500049',4.1,'Hybrid'),
(50,50,'Anil Kumar','Sales Tracker','Sales Executive','pavani@gmail.com','9876500050',3.8,'Office');

--  1. Display every possible combination of emp_name from employees and project from employee_details.  
select e.emp_name,ed.project from employees e cross join employee_details ed;

-- 2. Display every employee name along with every available work_mode. 
select e.emp_name,d.work_mode from employees e cross join employee_details d;

-- 3. Display every employee name along with every job_role. 
select e.emp_name,d.job_role from employees e cross join employee_details d;

-- 4. Display every employee from employees with every manager from employee_details. 
select e.emp_name,d.manager_name from employees e cross join employee_details d;

-- 5. Display every employee name along with every project. 
select e.emp_name,d.project from employees e cross join employee_details d;

--  6. Display emp_name, department, and project using a CROSS JOIN
desc employees;
select e.emp_name,e.department,d.project from employees e cross join employee_details d;

-- 7. Display every city from employees with every project from employee_details. 
select distinct e.city,d.project from employees e cross join employee_details d;

-- 8. Display every department with every work mode
select distinct e.department,d.work_mode from employees e cross join employee_details d;

-- 9. Display every employee with every performance rating. 
select e.emp_name,d.performance_rating from employees e cross join employee_details d;

-- 10. Display every employee name with every manager name
select e.emp_name,d.manager_name from employees e cross join employee_details d;

-- 11. Generate combinations of employees and projects where the employee's department is IT. 
select e.emp_name,d.project,e.department from employees e cross join employee_details d
where e.department = 'IT';

-- 12. Generate combinations of employees and projects where the employee's department is Finance. 

select e.emp_name,d.project,e.department from employees e cross join employee_details d
where e.department = 'Finance';

-- 13. Generate combinations of employees and projects where the employee's city is Hyderabad. 
select e.emp_name,d.project,e.city from employees e cross join employee_details d
where e.city = 'Hyderabad';

-- 14. Generate combinations of employees and managers where the employee works in Bangalore
select e.emp_name,d.project,e.city from employees e cross join employee_details d
where e.city = 'Bangalore';

-- 15. Generate combinations of employees and projects where the project is Banking App. 
select e.emp_name,d.project from employees e cross join employee_details d
where d.project = 'Banking App';

-- 16. Generate combinations of employees and work modes where the employee's salary is greater than 60000. 
select e.emp_name,d.work_mode,e.salary from employees e cross join employee_details d
where e.salary>60000;

-- 17. Generate combinations of employees and projects where the employee has more than 5 years of experience. 
select e.emp_name,d.project,e.experience from employees e cross join employee_details d
where e.experience>5;

-- 18. Generate combinations of employees and managers where the employee belongs to the HR department.
select e.emp_name,e.department,d.manager_name from employees e cross join employee_details d
where e.department = 'HR';

-- 19. Generate combinations of employees and job roles where the employee's salary is greater than 50000. 
desc employee_details;
select e.emp_name, d.job_role,e.salary from employees e cross join employee_details d
where e.salary > 50000;

-- 20. Generate combinations of employees and projects where the employee works in Chennai or Hyderabad.
select e.emp_name,d.project,e.city from employees e cross join employee_details d 
where e.city in ('Chennai','Hyderabad');

-- 21. Find the total number of combinations produced by CROSS JOIN between employees and employee_details. 
select count(*) as total_combinations from employees e cross join employee_details d;

-- 22. Display employee name, salary, project, and work mode for every possible combination.
select e.emp_name,e.salary,d.project,d.work_mode from employees e cross join employee_details d;

-- 23. Display every IT employee with every available project.
select e.emp_name,e.department,d.project from employees e cross join employee_details d 
where e.department = 'IT';

-- 24. Display every Finance employee with every available manager.
select e.emp_name,e.department,d.manager_name from employees e cross join employee_details d 
where e.department = 'Finance';

-- 25. Display every employee from Hyderabad with every available work mode.
select e.emp_name,e.city,d.work_mode from employees e cross join employee_details d 
where e.city = 'Hyderabad';

-- 26. Display pairs of employees who work in the same department.
select e1.emp_name as Employee1,e2.emp_name as Employee2, e1.department from employees e1
join employees e2 on e1.department = e2.department and e1.emp_id < e2.emp_id;
    
-- 27. Display pairs of employees who work in the same city.
select e1.emp_name as employee1,e2.emp_name as employee2, e1.city from
employees e1 join employees e2 on e1.city = e2.city and e1.emp_id<e2.emp_id;

-- 28. Display employees who belong to the same department but have different employee IDs.
select e1.emp_name as employee1,e2.emp_name as employee2, e1.department from
employees e1 join employees e2 on e1.department = e2.department and e1.emp_id!=e2.emp_id;

-- 29: Display pairs of employees who have the same salary.
select e1.emp_name as employee1,e2.emp_name as employee2, e1.salary from
employees e1 join employees e2 on e1.salary = e2.salary and e1.emp_id<e2.emp_id;

-- 30: Display pairs of employees who have the same age.
select e1.emp_name as employee1,e2.emp_name as employee2, e1.age from
employees e1 join employees e2 on e1.age = e2.age and e1.emp_id!=e2.emp_id;

-- 31: Display pairs of employees who have the same experience.
select e1.emp_name as employee1,e2.emp_name as employee2, e1.experience from
employees e1 join employees e2 on e1.experience = e2.experience and e1.emp_id<e2.emp_id;

-- 32: Display pairs of employees who work in the same city and same department.
select e1.emp_name as employee1,e2.emp_name as employee2, e1.department,e1.city from
employees e1 join employees e2 on e1.department = e2.department and e1.city=e2.city and e1.emp_id<e2.emp_id;

-- 33: Display pairs of employees who work in the same department but different cities.
select e1.emp_name as employee1,e2.emp_name as employee2, e1.department,
e1.city as emp1_city,e2.city as emp2_city from
employees e1 join employees e2 on e1.department = e2.department and
 e1.city!=e2.city and e1.emp_id<e2.emp_id;

-- 34: Display pairs of employees who work in the same city but different departments.
select e1.emp_name as employee1,e2.emp_name as employee2, e1.city,
e1.department as emp1_department,e2.department as emp2_department from
employees e1 join employees e2 on e1.department!=e2.department and
 e1.city=e2.city and e1.emp_id<e2.emp_id;
 
-- 35: Display pairs of employees where one employee earns more than the other.
select e1.emp_name as employee1,e1.salary as emp1_salary,
e2.emp_name as employee2,e2.salary as emp2_salary from
employees e1 join employees e2 on e1.salary > e2.salary;

 -- 36: Display employee pairs from the same department without displaying duplicate combinations.
 select e1.emp_name as employee1, e2.emp_name as employee2,e1.department from
employees e1 join employees e2 on e1.department = e2.department and e1.emp_id<e2.emp_id;

-- 37: Display employee pairs from the same city without displaying duplicate combinations.
select e1.emp_name as employee1, e2.emp_name as employee2,e1.city from
employees e1 join employees e2 on e1.city = e2.city and e1.emp_id<e2.emp_id;

-- 38: Display employee pairs where e1 earns more than e2, without showing the reverse pair.
select e1.emp_name as employee1,e1.salary as emp1_salary,e2.emp_name as employee2,
e2.salary as emp2_salary from employees e1 join employees e2 on e1.salary>e2.salary;

-- 39: Display employee pairs where e1 is older than e2, without duplicate pairs.
select e1.emp_name as employee1,e1.age as emp1_age,e2.emp_name as employee2,
e2.age as emp2_age from employees e1 join employees e2 on e1.age>e2.age;

-- 40: Display employee pairs where e1 has more experience than e2, without duplicate pairs.
select e1.emp_name as employee1,e1.experience as emp1_experience,e2.emp_name as employee2,
e2.experience as emp2_experience from employees e1 join employees e2 on e1.experience>e2.experience;

-- 41: Find pairs of employees from the IT department where one employee earns more than the other.
  select e1.emp_name as employee1, e1.salary as emp1_salary, 
  e2.emp_name as employee2, e2.salary as emp2_salary, e1.department from
employees e1 join employees e2 on e1.department = e2.department and e1.salary>e2.salary;
 
-- 42. Find pairs of employees from the Finance department who work in the same city.
select e1.emp_name as employee1, 
e2.emp_name as employee2, e1.department,e1.city from
employees e1 join employees e2 on e1.city=e2.city and e1.emp_id<=e2.emp_id and 
e1.department = e2.department where e1.department = 'Finance';

-- 43: Find pairs of employees from the HR department who have the same experience.
select e1.emp_name as employee1, 
e2.emp_name as employee2, e1.department,e1.experience from
employees e1 join employees e2 on e1.experience=e2.experience and e1.emp_id<=e2.emp_id and 
e1.department = e2.department where e1.department = 'HR';

-- 44: Find pairs of employees from the Sales department where one employee has more experience than the other.
select e1.emp_name as employee1, 
e2.emp_name as employee2, e1.department,e1.experience from
employees e1 join employees e2 on e1.experience>e2.experience and e1.emp_id<=e2.emp_id and 
e1.department = e2.department where e1.department = 'Sales';

-- 45: Find pairs of employees from the same city where the salary difference is greater than 10000.
select e1.emp_name as employee1, 
e2.emp_name as employee2,e1.city,abs(e1.salary-e2.salary) as SalaryDifference from
employees e1 join employees e2 on e1.city=e2.city and e1.emp_id<=e2.emp_id
where abs(e1.salary-e2.salary)>10000;

-- 46: Find pairs of employees from the same department where the salary difference is exactly 5000.
select e1.emp_name as employee1, 
e2.emp_name as employee2, e1.department,abs(e1.salary-e2.salary) as SalaryDifference from
employees e1 join employees e2 on e1.department=e2.department and e1.emp_id<=e2.emp_id
where abs(e1.salary-e2.salary)=5000;

-- 47: Find pairs of employees from the same department where one employee is older than the other.
select e1.emp_name as employee1,e1.age as emp1_age,
e2.emp_name as employee2,e2.age as emp2_age, e1.department from
employees e1 join employees e2 on e1.department=e2.department and e1.emp_id<=e2.emp_id and e1.age>e2.age;

-- 48: Find pairs of employees from different departments where both employees have the same salary.
select e1.emp_name as employee1,e1.department as emp1_department,
e2.emp_name as employee2,e2.department as emp2_department, e1.salary from
employees e1 join employees e2 on e1.department!=e2.department
and e1.emp_id<=e2.emp_id  and e1.salary = e2.salary;

-- 49: Find pairs of employees where one employee has greater salary and greater experience than the other.
select e1.emp_name as employee1,e1.salary as emp1_salary,e1.experience as emp1_experience,
e2.emp_name as employee2,e2.salary as emp2_salary, e2.experience as emp2_experience from
employees e1 join employees e2 on e1.salary > e2.salary and e1.experience>e2.experience
and e1.emp_id<e2.emp_id;

-- 50: Find pairs of employees from the same department where e1 has a higher salary than e2, and display
select e1.emp_name as employee1,e1.salary as emp1_salary,
e2.emp_name as employee2,e2.salary as emp2_salary, e1.department from
employees e1 join employees e2 on e1.department = e2.department and e1.salary > e2.salary
and e1.emp_id<e2.emp_id;
