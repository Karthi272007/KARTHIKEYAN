create database schoolDB;
use schoolDB;
create table student(stud_id int auto_increment primary key,stud_name varchar(100),age int);
alter table student modify column age int unique;
alter table student add constraint stud_age check(age<18);
desc student;
insert into student(stud_name,age) values('karthi',17); -- it is accepted
insert into student(stud_name,age) values('kavin',17); -- error is shown due to unique constraint
insert into student(stud_name,age) values('kishan',19); -- error is shown due to check constraint
select*from student;
