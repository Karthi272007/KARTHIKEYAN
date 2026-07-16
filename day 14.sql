create table sales(id int,product char(100),amount int);
insert into sales (id,product,amount) values(1,'tv',25000),(1,'monitor',25000),
(2,'samsung phone',30000),(2,'oneplus phone',30000),
(3,'samsung tab',15000),(3,'mi tab',15000),
(4,'hp laptop',50000),(4,'dell laptop',55000),
(4,'ps3',60000),(4,'imac',100000);
select product,amount,sum(amount) over(order by id ) as running_total from sales;
WITH temp_sales AS (
    SELECT AVG(amount) AS overall_average FROM sales
)select s.id,s.product,s.amount,t.overall_average AS table_average from sales s cross join temp_sales t where s.amount > t.overall_average order by s.id;
delimiter //
create procedure get_emp()
begin
insert into employees(emp_name,dept,gender,salary) values ('ajay','IT','M',80000);
select*from employees;
end//
delimiter ;
call get_emp();

DELIMITER //
create procedure update_salary()
begin
update employees set salary=60000 where emp_id=12;
  select* from employees;
end//
DELIMITER ;
call update_salary();


