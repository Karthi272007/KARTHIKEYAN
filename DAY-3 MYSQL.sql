create database storeDB;
use storeDB;
create table product(p_id int auto_increment primary key,name varchar(100) not null,price int);
alter table product add column stock int;
alter table product rename column price to unit_price;
insert into product(name,unit_price,stock) 
values('iphone',100000,15),
('mac_lap',150000,20),
('hp_laptop',80000,25),
('headphones',2000,30),
('mouse',1000,24);
select*from product;
update product set stock=20 where p_id=1;
delete from product where p_id=2;
