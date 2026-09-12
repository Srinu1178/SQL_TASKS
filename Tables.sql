create database food_delivery_database;
use food_delivery_database;

CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    address VARCHAR(255),
    registration_date DATE
);
ALTER TABLE users
MODIFY COLUMN user_id INT AUTO_INCREMENT;
ALTER TABLE orders
ADD CONSTRAINT orders_ibfk_1
FOREIGN KEY (user_id)
REFERENCES users(user_id);
desc users;
CREATE TABLE Restaurants (
    restaurant_id INT PRIMARY KEY,
    restaurant_name VARCHAR(100) NOT NULL,
    location VARCHAR(100),
    contact_number VARCHAR(15),
    opening_date DATE
);
show create table orders;

alter table orders
drop foreign key orders_ibfk_1;

desc menu;
desc orders;
desc restaurants;
desc order_items;
desc delivery_partners;
desc ratings;
show create table ratings;

show tables;
ALTER TABLE users
MODIFY COLUMN user_id INT NOT NULL AUTO_INCREMENT;

CREATE TABLE Delivery_Partners (
    partner_id INT PRIMARY KEY,
    partner_name VARCHAR(100),
    phone VARCHAR(15),
    vehicle_number VARCHAR(20),
    joining_date DATE
);

CREATE TABLE Menu (
    menu_id INT PRIMARY KEY,
    restaurant_id INT,
    food_name VARCHAR(100),
    price DECIMAL(10,2),
    category VARCHAR(50),
    availability_status VARCHAR(20),
    FOREIGN KEY (restaurant_id) REFERENCES Restaurants(restaurant_id)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    restaurant_id INT,
    partner_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    status VARCHAR(20),
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (restaurant_id) REFERENCES Restaurants(restaurant_id),
    FOREIGN KEY (partner_id) REFERENCES Delivery_Partners(partner_id)
);

CREATE TABLE Order_Items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    menu_id INT,
    quantity INT NOT NULL DEFAULT 1,
    item_price DECIMAL(10,2) NOT NULL,
    subtotal DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (menu_id) REFERENCES Menu(menu_id)
);

CREATE TABLE Ratings (
    rating_id INT PRIMARY KEY,
    user_id INT,
    restaurant_id INT,
    rating INT,
    review VARCHAR(255),
    rating_date DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (restaurant_id) REFERENCES Restaurants(restaurant_id)
);

ALTER TABLE ratings
DROP FOREIGN KEY ratings_ibfk_1;

alter table ratings
add constraint ratings_ibfk_1
foreign key(user_id)
references Users(user_id);



