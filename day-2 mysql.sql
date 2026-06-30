create database companyDB;
use companyDB;
CREATE table employees(emp_id int auto_increment primary key, name varchar(100)not null,salary int default 30000);
alter table employees add column email varchar(100);
alter table employees add constraint email unique(email);
select*from employees;
insert into employees(name,salary,email) values('akash',20000,'akash@gmail.com');
insert into employees(name,salary,email) values('ajay',50000,'ajay@gmail.com');
insert into employees(name,email) values('arjun','arjun@gmail.com');
insert into employees(name,salary,email) values('kavin',100000,'kavin@gmail.com');
insert into employees(name,salary,email) values('kishan',70000,'kishan@gmail.com');
insert into employees(name,salary,email) values('akash',20000,'akash@gmail.com');
drop table employees;
CREATE table employees(
    emp_id int auto_increment primary key, 
    name varchar(100) not null,
    email varchar(100) unique, 
    salary int default 30000 check(salary > 0)
);
