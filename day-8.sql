create database store;
use store;
create table orderss(order_id int primary key ,order_name varchar(100),price decimal(10,2));
insert into orderss(order_id ,order_name,price) values(101,'milk',20),(102,'chocolate',50),(103,'ice cream',50),
(104,'chips',20),(105,'vegetable',30);
create table customers(cus_id int auto_increment primary key, cus_name varchar(100),order_id int, foreign key (order_id) references orderss(order_id));
select*from customers;
insert into customers(cus_name,order_id) values('vishal',101),('karthi',102),('vishnu',103),('kishan',104),('arun',105);
insert into customers(cus_name) values('arun');
select cus_id,cus_name,s1.order_id,order_name,price from customers s1 inner join orderss on s1.order_id=orderss.order_id;
select cus_id,cus_name,s1.order_id,order_name,price from customers s1 left outer join orderss on s1.order_id=orderss.order_id;
























