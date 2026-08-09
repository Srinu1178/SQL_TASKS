/* Display all students.
Display all teachers.
Display all courses.
Display all departments.
Display only student names and contact numbers.
Display only teacher names and salaries.
Display students whose gender is 'Male'.
Display teachers whose salary is greater than 60,000.
Display courses with fees greater than 50,000.
Display all students ordered by name.*/
-- 1. display all students
select * from students;
-- 2
select * from teachers;
-- 3
select * from courses;
-- 4
select * from department;

-- 5. Display only student names and contact numbers.
select stu_name,stu_contact from students;

-- 6.Display only teacher names and salaries.
select teacher_name,salary from teachers;

-- 7.Display students whose gender is 'Male'.
select * from students where gender='Male';

-- 8.Display teachers whose salary is greater than 60,000.
select * from teachers where salary > 60000;

-- 9.Display courses with fees greater than 50,000.
desc courses;
select * from courses where fees > 50000;

-- 10.Display all students ordered by name.

select * from students order by stu_name;

/* Find students in Semester 3.
Find students in Batch 301.
Find students from the Computer Science department (dept_id = 201).
Find teachers in the Mathematics department.
Find courses with duration 3 years.
Find teachers with the qualification 'Ph.D'.
Find students whose names start with 'R'.
Find students whose contact number ends with '5'.
Find teachers earning between 55,000 and 70,000.
Find courses with fees between 40,000 and 60,000.*/

-- 1.Find students in Semester 3.
select stu_id,stu_name,stu_contact from students 
where sem_id = (select sem_id from semester where sem_name = 'SEM-3');

-- 2. Find students in Batch 301.
select * from students where batch_id = 302;

-- 3.Find students from the Computer Science department (dept_id = 201).
select * from students where dept_id = 201;

-- 4.Find teachers in the Mathematics department.
select * from students where dept_id = (select dept_id from 
department where dept_name='Mathematics');

-- 5.Find courses with duration 3 years.
desc courses;
select * from courses where duration = 3;

-- 6. Find teachers with the qualification 'Ph.D'.
desc teachers;
select * from teachers where qualification='Ph.D';


-- 7.Find students whose names start with 'R'
desc students;

select stu_name from students where stu_name like 'R%';

-- 8.Find students whose contact number ends with '5'.
select stu_name,stu_contact from students where stu_contact like '%5';

-- 9.Find teachers earning between 55,000 and 70,000.
select * from teachers where salary between 55000 and 70000;

-- 10. Find courses with fees between 40,000 and 60,000.
select * from courses where fees between 40000 and 60000;

/* Level-3
Count the total number of students.
Count the total number of teachers.
Find the highest teacher salary.
Find the lowest teacher salary.
Find the average teacher salary.
Find the total fees of all courses.
Count the number of students in each department.
Count the number of teachers in each department.
Find the average course fee.
Count the number of courses in each department.*/

-- 1. Count the total number of students.
select count(*) as no_of_students from students;

-- 2. Count the total number of teachers.
select count(*) as no_of_teachers from teachers;

-- 3. Find the highest teacher salary.
select max(salary) from teachers;

-- 4. Find the lowest teacher salary.
select min(salary) from teachers;

-- 5. Find the average teacher salary.
select avg(salary) from teachers;

-- 6. Find the total fees of all courses.
select sum(fees) from courses;

-- 7.Count the number of students in each department.
select count(*),dept_id from students group by dept_id;

-- 8.Count the number of teachers in each department.
select count(*),dept_id from teachers group by dept_id;

-- 9.Find the average course fee.
select avg(fees) from courses;

-- 10.Count the number of courses in each department.
select count(*),dept_id from courses group by dept_id;


/* LEVEL - 4
 Display the number of students in each semester.
Display the number of students in each batch.
Display the average salary department-wise.
Display the maximum salary department-wise.
Display the minimum salary department-wise.
Count male and female students.
Count male and female teachers.
Count students department-wise.
Count teachers qualification-wise.
Display department-wise total salary.*/

-- 1.Display the number of students in each semester.
select sem_id,count(stu_id) as no_of_students from students group by sem_id;

-- 2.Display the number of students in each batch.
select batch_id,count(stu_id) as no_of_students from students group by batch_id;

-- 3.Display the average salary department-wise.alter
select d.dept_name, avg(t.salary) as avg_salary
from teachers t inner join department d on t.dept_id = d.dept_id group by d.dept_name;

-- 4.Display the maximum salary department-wise.
select d.dept_name, max(salary) as max_salary from teachers t inner join department d on t.dept_id = d.dept_id
group by d.dept_name;

-- 5.Display the minimum salary department-wise.
select d.dept_name, min(salary) as max_salary from teachers t inner join department d on t.dept_id = d.dept_id
group by d.dept_name;

-- 6.Count male and female students.
select gender,count(stu_id) from students group by gender;

-- 7.Count students department-wise.
select d.dept_name,count(stu_id) from students s inner join department d on s.dept_id = d.dept_id group by d.dept_name;

-- 8.Count teachers qualification-wise.
select qualification,count(*) no_of_teachers from teachers group by qualification;

-- 9.Count male and female teachers.
desc teachers;
select gender,count(*) no_of_teachers from teachers group by gender;

-- 10.Display department-wise total salary.

select d.dept_name,sum(salary) as total_salary from teachers t 
inner join department d on t.dept_id = d.dept_id group by dept_name;

/* Level 5: JOINS
41.	Display student names with department names. 
42.	Display student names with course names. 
43.	Display student names with semester names. 
44.	Display student names with batch names. 
45.	Display course names with department names. 
46.	Display teacher names with department names. 
47.	Display student name, course name, and department name. 
48.	Display student name, semester, and batch. 
49.	Display course name with fees and department name. 
50.	Display teacher name, qualification, salary, and department name. */

use smsdb;

-- 41.	Display student names with department names. 
desc students;
select s.stu_name,d.dept_name from students s inner join department d
on s.dept_id = d.dept_id;

-- 42.	Display student names with course names. 
desc students;
select s.stu_name,c.course_name from students s left join courses c on s.course_id = c.course_id;

-- 43. Display student names with semester names.
desc semester;
select s.stu_name,se.sem_name from students s inner join semester se
on s.sem_id = se.sem_id;

-- 44. Display student names with batch names.
select s.stu_name,b.batch_name from students s inner join batches b
on s.batch_id = b.batch_id;

-- 45.Display course names with department names. 
select c.course_name, d.dept_name from courses c inner join department d on c.dept_id = d.dept_id;

-- 46.	Display teacher names with department names. 
desc teachers;
select t.teacher_name,d.dept_name from teachers t inner join department d on t.dept_id = d.dept_id;

-- 47. Display student name, course name, and department name. 
select s.stu_name,c.course_name,d.dept_name from students s
inner join courses c on s.course_id = c.course_id inner join department d on s.dept_id=d.dept_id;

-- 48. Display student name, semester, and batch. 
select s.stu_name,se.sem_name,b.batch_name from students s inner join semester se 
on s.sem_id = se.sem_id inner join  batches b on s.batch_id = b.batch_id;

-- 49.Display course name with fees and department name. 
select c.course_name,c.fees,d.dept_name from courses c inner join
department d on c.dept_id = d.dept_id;

-- 50.Display teacher name, qualification, salary, and department name.
select t.teacher_name,t.qualification,t.salary,d.dept_name
from teachers t inner join department d on t.dept_id = d.dept_id;

use smsdb;
/* Level 6: Multi-Table JOINS
51.	Display student name, course, department, semester, and batch. 
52.	Display all Computer Science students with their course names. 
53.	Display all Physics students with their semester. 
54.	Display all teachers and the department they belong to. 
55.	Display students enrolled in BCA. 
56.	Display students enrolled in MCA. 
57.	Display students studying Mathematics. 
58.	Display all Commerce students. 
59.	Display all Science students. 
60.	Display every student's complete academic information. */

desc semester;
-- 51.	Display student name, course, department, semester, and batch. 
select s.stu_name,c.course_name,d.dept_name,se.sem_name,b.batch_name
from students s inner join courses c on s.course_id = c.course_id inner join semester se on s.sem_id=se.sem_id
inner join department d on s.dept_id = d.dept_id inner join batches b on s.batch_id = b.batch_id;

-- 52:Display all Computer Science students with their course names. 

select s.stu_name,c.course_name from students s inner join courses c on s.course_id = c.course_id
where c.course_name = 'Bsc Computer Science';

-- 53. Display all Physics students with their semester. 
select s.stu_name,c.course_name,se.sem_name from students s
inner join courses c on s.course_id = c.course_id inner join
semester se on s.sem_id = se.sem_id where c.course_name IN ('Bsc Physics','Msc Physics');

use smsdb;
-- 54.Display all teachers and the department they belong to. 
select t.teacher_name,d.dept_name from teachers t inner join department d
on t.dept_id = d.dept_id;


-- 	55.Display students enrolled in BCA.
select s.stu_name,c.course_name from students s inner join courses c on s.course_id = c.course_id
where c.course_name = 'BCA';


-- 	56. Display students enrolled in MCA. 
select s.stu_name,c.course_name from students s inner join courses c on s.course_id = c.course_id
where c.course_name = 'MCA';

-- 57. Display students studying Mathematics. 
select s.stu_name,c.course_name from students s inner join courses c on s.course_id = c.course_id
where c.course_name IN ('Bsc Mathematics','Msc Mathematics');

-- 58. Display all Commerce students.
select s.stu_name,c.course_name from students s inner join courses c on s.course_id = c.course_id
where c.course_name IN ('Bcom');

-- 59.Display all Science students. 
select s.stu_name,c.course_name from students s inner join courses c on s.course_id = c.course_id
inner join department d on c.dept_id = d.dept_id
where dept_name = 'Science';

-- 60.Display every student's complete academic information. 

select s.stu_name,c.course_name from students s left join courses c on s.course_id = c.course_id
union
select s.stu_name,c.course_name from students s right join courses c on s.course_id = c.course_id;

use smsdb;

