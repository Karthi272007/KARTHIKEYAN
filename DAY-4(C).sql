create database empDB;
USE empDB;
create table employee(emp_id int auto_increment primary key,
name varchar(100),
gender varchar(6),
age int,
blood_group varchar(3),
salary decimal(7,2));
select*from employee;
insert into employee(name,gender,age,blood_group,salary) values('Karthi','Male',18,'A1+',80000);
insert into employee(name,gender,age,blood_group,salary) values('Kishan','Male',19,'B+',20000);
insert into employee(name,gender,age,blood_group,salary) values('Kavin','Male',20,'A+',60000);
delete from employee where age=20;
truncate employee;
drop table employee;
