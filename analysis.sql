-- Basic Queries
-- 1. Insert sample data into all tables.
-- 2. Display menu items with price greater than 200.
select * from menu where price > 200;

-- 3. Show all users from Hyderabad.
select * from Users where address like '%Hyderabad%';

-- 4. List food items belonging to Fast Food category.
select * from Menu where category = 'Fast Food';

-- 5. Display restaurants opened after 2023.

select * from restaurants
where year(opening_date)>2023;

-- Joins
-- 1. Show user name with their orders.
select u.name, o.order_id, o.order_date, o.total_amount, o.status
from Users u
join Orders o on u.user_id = o.user_id;

-- 2. Display food name with order total amount.
select m.food_name, o.total_amount from Orders o
join Order_Items oi on o.order_id = oi.order_id
join Menu m on oi.menu_id = m.menu_id;

-- 3. Show order details with user information.
select o.order_id, u.name, u.email, u.phone, o.order_date, o.total_amount, o.status
from Orders o join Users u on o.user_id = u.user_id;

-- 4. List menu items with restaurant name.
select m.food_name, m.price, m.category, r.restaurant_name, r.location
from Menu m join Restaurants r on m.restaurant_id = r.restaurant_id;

-- 5. Show users with restaurants they ordered from.
select u.name AS user_name, r.restaurant_name, o.order_date, o.total_amount
from Orders o
join Users u on o.user_id = u.user_id
join Restaurants r on o.restaurant_id = r.restaurant_id;


-- Aggregate Functions
-- 1. Count total number of menu items.
select count(menu_id) as no_of_items from menu;

-- 2. Find average food price.
select avg(price) as average_price from Menu;

-- 3. Calculate total revenue from orders.
select sum(total_amount) as total_revenue from Orders;

-- 4. Count total orders placed.
select count(*) AS total_orders from Orders;

-- 5. Find highest priced food item
select food_name, price from Menu where price = 
(select max(price) from Menu);

-- Subqueries
-- 1. Find users who never placed orders.
select * from Users where user_id not in
 (select distinct user_id from Orders);

-- 2. Find food items never ordered.
select * from menu where menu_id not in
(select distinct menu_id from order_items);

-- 3. Show menu items with price greater than average price.
select * from Menu where price > (select avg(price) from Menu);

-- 4. Find users who spent more than average spending.
select u.user_id, u.name, sum(o.total_amount) as total_spent
from Users u
join Orders o on u.user_id = o.user_id
group by u.user_id, u.name
having sum(o.total_amount) > (select avg(total_amount) from Orders);		

-- 5. Show orders above average total amount.
select * from Orders where total_amount > 
(select avg(total_amount) from Orders);


-- Updates & Deletes
-- 1. Update food price in menu.–
select * from menu;
set SQL_SAFE_UPDATES = 0;
update menu set price = 200 where food_name = 'Veg Biryani';
-- 2. Change user email.
select * from users;

update users set email = 'vikramsingh.new@gmail.com'
where user_id = 5;
-- 3. Update restaurant location.
select * from restaurants;
update restaurants set location = 'Hyderabad'
where restaurant_id = 20;

-- 4. Delete cancelled orders.

delete from orders where status = 'Cancelled';
delete from order_items where order_id = 29;
-- 5. Delete users with no orders.
delete from Ratings
where user_id in (
    select user_id from Users
    where user_id not in (select distinct user_id from Orders)
);
delete from Users
where user_id not in (select distinct user_id from Orders);

-- Views
-- 1. Create a view to display user orders.
create view UserOrders as
select u.name as user_name, o.order_id, o.order_date, o.total_amount, o.status
from Users u join Orders o on u.user_id = o.user_id;

select * from UserOrders;

-- 2. Create a view for menu details with restaurant name.
create view MenuDetails as
select m.menu_id, m.food_name, m.price, m.category, m.availability_status, r.restaurant_name, r.location
from Menu m join Restaurants r on m.restaurant_id = r.restaurant_id;

select * from menuDetails;

-- 3. Create a view showing order details with user and restaurant.
create view OrderDetails as
select o.order_id, u.name as user_name, r.restaurant_name, o.order_date, o.total_amount, o.status
from Orders o
join Users u on o.user_id = u.user_id
join Restaurants r on o.restaurant_id = r.restaurant_id;

select * from OrderDetails;

-- 4. Create a view to display total spending by each user.
create view UserSpending as
select u.user_id, u.name, sum(o.total_amount) as total_spent
from Users u
join Orders o on u.user_id = o.user_id
group by u.user_id, u.name;


select * from UserSpending;


-- 5. Create a view showing most ordered food items.

create view MostOrderedFood as
select m.food_name, SUM(oi.quantity) as total_quantity, count(distinct oi.order_id) as order_count
from Order_Items oi
join Menu m on oi.menu_id = m.menu_id
group by m.food_name
order by total_quantity desc;

select * from MostOrderedFood;


-- Stored Procedure 

-- 1. Insert a New User
-- Create a stored procedure to insert a new user.
-- The procedure should accept:
-- ● name
-- ● email
-- ● phone
-- ● address
-- ● registration_date

delimiter //
create procedure insertUser(in name varchar(200),in email varchar(100),
in phone varchar(15),in address varchar(255),in registration_date date)
begin 
insert into Users(name,email,phone,address,registration_date)
values(name,email,phone,address,registration_date);
end //
delimiter ;

call insertUser('Mahesh','mahesh123@gmail.com','9987676547','Uppal, Hyderabad','2023-03-15');

select * from users;

-- 2. Update Food Price
-- Create a stored procedure to update food price.
-- Pass:
-- ● menu_id
-- ● new_price

select * from menu;

delimiter //
create procedure updateFoodPrice(in menu_id int,in new_price int)
begin 
update menu set price = new_price 
where menu_id = menu_id;

end //
delimiter ;

call updateFoodPrice(3,250);

select * from menu;

-- 3. Display Orders of a User
-- Create a stored procedure to display all orders of a user.
-- Pass:
-- ● user_id
-- Return all orders placed by that user.

delimiter //
create procedure GetUserOrders(in p_user_id int)
begin
    select o.order_id,o.order_date,o.total_amount,o.status,r.restaurant_name,
    r.location as restaurant_location
    from Orders o join Restaurants r on o.restaurant_id = r.restaurant_id
    where o.user_id = p_user_id;
end //
delimiter ;

call GetUserOrders(6);
drop procedure displayOrders;

call displayOrders(6);


-- 4. Calculate Total Revenue
-- Create a stored procedure to calculate total revenue.
-- The procedure should return total revenue from Orders table.

delimiter //
create procedure GetTotalRevenue()
begin 
select sum(total_amount) as total_revenue from orders;
end //
delimiter ;


call GetTotalRevenue();

-- 5. List Menu Items of a Restaurant
-- Create a stored procedure to list menu items of a restaurant.
-- Pass:
-- ● restaurant_id
-- Display all food items belonging to that restaurant.

delimiter //
create procedure menuItemsRestaurant(in restaurant_id int)
begin
select r.restaurant_name,r.location,m.food_name,m.price from restaurants r
join menu m on r.restaurant_id = m.restaurant_id
where m.restaurant_id = restaurant_id;
end //
delimiter ;

drop procedure menuItemsRestaurant;

call menuItemsRestaurant(5);


-- Reports / Analysis
-- ● Top 5 most ordered food items.
select m.food_name,sum(oi.quantity) as item_count
from menu m join order_items oi on
m.menu_id = oi.menu_id group by oi.menu_id
order by item_count desc limit 5;

-- ● Most active users (users with highest orders).
select u.name, count(o.order_id) as total_orders
from Users u
join Orders o on u.user_id = o.user_id
group by u.name
order by total_orders desc;

-- ● Monthly order report.
select date_format(order_date, '%Y-%m') as month, count(*) as total_orders, sum(total_amount) as revenue
from Orders
group by date_format(order_date, '%Y-%m')
order by month;
-- ● Restaurant generating highest revenue.
select r.restaurant_name, sum(o.total_amount) as total_revenue
from Restaurants r
join Orders o on r.restaurant_id = o.restaurant_id
group by r.restaurant_name
order by total_revenue desc limit 1;

-- ● User spending analysis.
select u.name, count(o.order_id) as total_orders, sum(o.total_amount) as total_spent, avg(o.total_amount)
as avg_spent from Users u
join Orders o on u.user_id = o.user_id
group by u.name
order by total_spent desc;

-- ● Highest rated restaurants.
select r.restaurant_name, avg(rt.rating) as avg_rating, count(rt.rating_id) as total_ratings
from Restaurants r join Ratings rt on r.restaurant_id = rt.restaurant_id
group by r.restaurant_name order by avg_rating desc;


