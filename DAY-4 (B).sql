create database empDB;
USE empDB;
create table employee(emp_id int auto_increment primary key,
name varchar(100),
gender varchar(6),
age int,
blood_group varchar(3),
salary decimal(7,2));
select*from employee;
alter table employee drop column age;
