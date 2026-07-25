show tables;
-- Foreign key
CREATE TABLE mahesh(stu_id INT PRIMARY KEY,
stu_name VARCHAR(50),
stu_email VARCHAR(30));

CREATE TABLE gopi(emp_id INT PRIMARY KEY,
student_id INT,
FOREIGN KEY(student_id) REFERENCES mahesh(stu_id)
);

ALTER TABLE gopi ADD COLUMN email VARCHAR(50);
SELECT * FROM gopi;

INSERT INTO mahesh VALUES(101,'mahesh','mahesh123@gmail.com');
INSERT INTO mahesh VALUES(102,'ramesh','mahesh123@gmail.com');

INSERT INTO gopi VALUES(201,101,'mahesh123@gmail.com');
INSERT INTO gopi VALUES(202,101,'srinu345@gmail.com');
INSERT INTO gopi VALUES(203,NULL,'nagu345@gmail.com');
INSERT INTO gopi VALUES(204,'103','pased@gmail.com');

SELECT * FROM gopi;

SELECT g.emp_id,m.stu_name FROM mahesh m JOIN
gopi g ON m.stu_id = g.student_id;

CREATE TABLE Pavan(id INT PRIMARY KEY,
name_1 VARCHAR(50),
village VARCHAR(50) default 'Ballipadu');

INSERT INTO Pavan VALUES(1,'Srinu',default);
INSERT INTO Pavan VALUES(2,'mahesh',default);

SELECT * FROM Pavan;