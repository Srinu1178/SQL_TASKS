create database ecommerce_practice;
use ecommerce_practice;
show tables;

desc customers;

desc orders;
desc products;
select * from orders;
select email from customers;
select count(customer_name) from customers where customer_name is null;
select count(city) from customers where city is null;
select count(email) from customers where email is null;

-- 6. Count NULLs in each important column.
-- 7. Find customers with NULL email.
select count(email) from customers where email='';
-- 8. Find customers with NULL city.
select count(city) from customers where city = '';

-- 9. Find products with NULL category.
select count(category) from products where category='';
-- 10. Find products with NULL price.
select count(price) from products where price = '';
-- 11. Find orders with NULL customer_id.
select count(customer_id) from orders where customer_id ='';

-- 12. Find orders with NULL product_id.
select count(product_id) from orders where product_id = '';

-- 13. Find orders with NULL order_date.
select count(order_date) from orders where order_date = '';

-- 14. Find orders with NULL quantity.
select count(quantity) from orders where quantity = '';

-- 15. Find orders with NULL amount.
select count(amount) from orders where amount = '';

-- 16. Find orders with NULL status.
select count(`status`) from orders where `status`='';

select city from customers;

update customers set city=trim(city);

select lower(city) from customers;

update customers set city = lower(city);

select city from customers;

-- PHASE 3: CLEANING
-- 17. Trim spaces from customer city.
-- 18. Standardize city names to consistent case.
-- 19. Standardize order status values (e.g. delivered -> Delivered).
select status from orders;
select concat(upper(left(`status`,1)),lower(substring(status,2))) from orders;
update orders set status = concat(upper(left(`status`,1)),lower(substring(status,2)));
select * from orders;
-- 20. Decide how to handle NULL email values.
select count(email) from customers where email='';
update customers set email = null 
where email = '';

select email from customers;

-- 21. Decide how to handle NULL city values.
select count(city) from customers where city='';

update customers set city = null 
where city = '';

select city from customers;
update customers set city = concat(upper(left(city,1)),lower(substring(city,2)));

-- 22. Decide how to handle NULL product category.
select count(category) from products where category = '';

update products set category='unknown' where category='';

select category from products;

-- 23. Decide how to handle NULL product price.
select price from products;

-- 24. Decide how to handle NULL order quantity.
select quantity from orders;

-- 25. Decide how to handle NULL order amount.
select amount from orders;
select count(amount) from orders where amount = '';

-- 26. Decide how to handle NULL order status/date.
select count(status) from orders;
desc products;
-- 27. Investigate the zero amount order before deciding what to do.
select p.product_name,o.amount from orders o left join products p
on o.product_id = p.product_id where o.amount = 0;


-- 28. Identify the primary key of each table.
desc customers;
alter table customers modify customer_id int primary key;
desc orders;
alter table orders modify order_id int primary key;
desc products;
alter table products modify product_id int primary key;

-- 29. Identify common columns between tables.
desc customers; -- no columns 
desc orders; -- customer_id , product_id
desc products; -- no columns
-- 30. Check whether every orders.customer_id exists in customers.
select distinct o.customer_id from orders o left join customers c
on o.customer_id = c.customer_id
where o.customer_id is not null and c.customer_id is null;

-- 31. Check whether every orders.product_id exists in products.
select distinct o.product_id from orders o left join products p on p.product_id = o.product_id
where o.product_id is not null and p.product_id is null;
-- 32. Find orphan customer IDs.
SELECT
    o.order_id,
    o.customer_id
FROM orders o
LEFT JOIN customers c
    ON o.customer_id = c.customer_id
WHERE c.customer_id IS NULL;

-- 33. Find orphan product IDs.
select o.product_id,o.customer_id from orders o left join
products p on o.product_id = p.product_id
where p.product_id is null;

select * from orders where customer_id = 999;

update orders set customer_id = null where customer_id = 999;

-- 34. Decide how to handle invalid foreign-key values.
-- 35. Add primary keys.
-- 36. Add foreign keys only after cleaning.

desc orders;
alter table orders modify customer_id int;

alter table orders 
add constraint fk_orders_customer
foreign key(customer_id) references customers(customer_id);

desc orders;
alter table orders modify product_id int;

select distinct o.product_id,o.order_id from orders o left join products p
on o.product_id = p.product_id where p.product_id is null;

select * from orders where product_id = 239;
update orders set product_id = null
where product_id = 239;

alter table orders
add constraint fk_orders_product
foreign key(product_id) references products(product_id);

desc customers;

desc orders;

select order_date from orders;

select count(order_date) from orders where order_date = '';

update orders set order_date = null where order_date = '';

alter table orders modify order_date date;

-- 37. Change order_date to DATE if imported as VARCHAR.
-- 38. Change amount to DECIMAL(12,2) if imported as VARCHAR.
select count(amount) from orders where amount='';
update orders set amount = null where amount = '';
alter table orders modify amount decimal(12,2);
-- 39. Ensure quantity is INT.
alter table orders modify quantity int;
-- 40. Ensure customer_id/product_id/order_id are INT.
-- 41. Ensure product price is DECIMAL(10,2).
desc products;
alter table products modify price decimal(10,2);

desc orders;

select count(*) from customers;
select count(*) from orders;
select count(*) from products;

select c.customer_name, sum(o.amount) as total_amount from customers c join orders o on
c.customer_id = o.customer_id group by c.customer_name order by total_amount desc;

select o.order_id,p.product_name,p.price from orders o join products p on
o.product_id = p.product_id;

desc orders;
select * from orders;
select * from products where product_id = 202;

-- 50. Calculate total sales, total orders, and sales by customer.-- 
SELECT
    c.customer_id,
    c.customer_name,
    SUM(o.amount) AS total_sales
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id,
    c.customer_name
ORDER BY total_sales DESC;

SELECT
    c.customer_id,
    c.email,
    c.city,
    COUNT(DISTINCT o.order_id) AS total_orders,
    SUM(o.quantity) AS total_quantity,
    SUM(o.amount) AS total_sales,
    AVG(o.amount) AS average_order_value
FROM customers c
INNER JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY
    c.customer_id,
    c.email,
    c.city
ORDER BY total_sales DESC;



