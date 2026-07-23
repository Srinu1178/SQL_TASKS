USE d23r;
CREATE TABLE narayana(id INT NOT NULL);
-- INSERT INTO narayana VALUES(101),(102),(103),(null);
-- You get a error column id cannot be null 
INSERT INTO narayana VALUES(101),(102),(103);

SET SQL_SAFE_UPDATES=0;
DELETE FROM narayana WHERE id = 101;
DELETE FROM narayana WHERE id = 102;
DELETE FROM narayana WHERE id = 103;

SELECT * FROM narayana;
CREATE TABLE srinu(id INT UNIQUE);
-- INSERT INTO srinu VALUES(11),(12),(13),(11); 
INSERT INTO srinu VALUES(11),(12),(13),(14);
SELECT * FROM srinu;

CREATE TABLE babai(item_id INT PRIMARY KEY);
-- INSERT INTO babai VALUES(1021),(1022),(1023),(1022);
INSERT INTO babai VALUES(1021),(1022),(1023),(1024);
INSERT INTO babai VALUES(NULL);
SELECT * FROM babai;
