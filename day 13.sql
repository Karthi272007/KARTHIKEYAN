create table sales(id int auto_increment primary key ,product char(100),amount int);
insert into sales (product,amount) values('tv',25000),('monitor',25000),('samsung phone',30000),('oneplus phone',30000),('samsung tab',15000),('mi tab',15000),('hp laptop',50000),('dell laptop',55000),('ps3',60000),('imac',100000);
select*,row_number() over(order by amount desc) as costly_products from sales;
select*,rank() over(order by amount desc) as top_products from sales;
select*,dense_rank() over(order by amount desc)as top_products from sales;
