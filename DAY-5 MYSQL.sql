create database store;
use store;
create table orders(id int auto_increment primary key ,
product_name varchar(50)not null,
quantity int,
price decimal(7,2));
insert into orders (product_name,quantity,price) values('cake',2,300);
insert into orders (product_name,quantity,price) values('ice cream',4,50);
insert into orders (product_name,quantity,price) values('veg puff',3,80);
insert into orders (product_name,quantity,price) values('black chocolate',5,500);
insert into orders (product_name,quantity,price) values('coke',6,100);
select*from orders where quantity > 2;
select*from orders where price between 100 and 500;
select*from orders where product_name like 'A%';
select*from orders order by quantity desc;
