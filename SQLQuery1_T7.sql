CREATE DATABASE Sales;
CREATE TABLE customers(
customer_id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
first_name nvarchar(50) NOT NULL,
last_name nvarchar(50) NOT NULL,
phone nvarchar(50) NOT NULL,
email nvarchar(50) ,
street nvarchar(50) NOT NULL,
city nvarchar(50) NOT NULL,
state nvarchar(50) ,
zip_code int NOT NULL
);
CREATE TABLE orders(
order_id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
customer_id int NOT NULL,
order_status nvarchar(50) NOT NULL,
order_date datetime NOT NULL,
required_date datetime NOT NULL ,
shipped_date datetime NOT NULL,
store_id int NOT NULL,
sttaf_id int NOT NULL
);
CREATE TABLE staffs(
staff_id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
first_name nvarchar(50) NOT NULL,
last_name nvarchar(50) NOT NULL,
phone nvarchar(50) NOT NULL,
email nvarchar(50) ,
active text NOT NULL,
store_id int NOT NULL,
manager_id int NOT NULL
);
CREATE TABLE stores(
store_id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
store_name nvarchar(50) NOT NULL,
last_name nvarchar(50) NOT NULL,
phone nvarchar(50) NOT NULL,
email nvarchar(50) ,
street nvarchar(50) NOT NULL,
city nvarchar(50) NOT NULL,
state nvarchar(50) ,
zip_code int NOT NULL
);
CREATE TABLE order_items(
item_id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
order_id int references orders(order_id) ,
product_id int NOT NULL,
quantity nvarchar(50) NOT NULL,
list_price int NOT NULL ,
discount text NOT NULL
);