create database store;
use store;
CREATE TABLE orders (
    order_id int auto_increment primary key,
    product_name VARCHAR(50),
    price DECIMAL(10, 2),
    items int
); drop table orders;
INSERT INTO orders (product_name, price,items) values
('Mouse', 250,2),
('Laptop', 12000,1),
('Keyboard', 750,2),
('Monitor', 300,3);
select count(*) as total from orders;
select sum(price) from orders;
select avg(price) from orders;
select max(price) from orders;
select min(price) from orders;
select*from orders order by price desc;
