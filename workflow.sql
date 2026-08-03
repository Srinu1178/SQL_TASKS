SELECT city,count(*) FROM customers GROUP BY city;

SELECT city,COUNT(*) FROM customers GROUP BY city
HAVING COUNT(*)>2;

SELECT * FROM customers ORDER BY age ASC;

SELECT * FROM customers ORDER BY age DESC;

SELECT DISTINCT(city) FROM customers;

SELECT * FROM customers ORDER BY age DESC limit 3 offset 3;

SELECT city,COUNT(*) FROM customers GROUP BY city      ;