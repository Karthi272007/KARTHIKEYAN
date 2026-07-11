create database tempdb;
use tempdb;
-- 1nf__________________________________________________________________
create table without_1nf(stud_id int auto_increment primary key,stud_name varchar(100),subject varchar(100));
insert into without_1nf(stud_name,subject) values('arun','maths,english'),('vijay','tamil,science'),('ajay','maths,science');
select*from without_1nf;
-- ______________________________________________________________
create table with_1nf(stud_id int,stud_name varchar(100),subject varchar(100),primary key(stud_id,subject));
insert into with_1nf(stud_id,stud_name,subject) values(1,'arun','maths'),(1,'arun','english'),(2,'vijay','tamil'),(2,'vijay','science'),(3,'ajay','maths'),(3,'ajay','science');
select*from with_1nf;
-- 2nf_________________________________________________________________
create table without_2nf(stud_id int auto_increment ,course_id int ,stud_name varchar(100),course_name varchar(100),primary key(stud_id,course_id));
insert into without_2nf(course_id,stud_name,course_name) values(101,'arun','csc'),(102,'ferd','ece'),(103,'kamal','eee');
select*from without_2nf;
-- __________________________________________________________________
create table course(course_id int auto_increment primary key ,course_name varchar(100));
create table stud(stud_id int auto_increment primary key  ,stud_name varchar(100));
create table with_2nf(stud_id int  ,course_id int,primary key(stud_id,course_id), foreign key (stud_id) references stud(stud_id),foreign key (course_id) references course(course_id));
insert into stud(stud_name) values('arun'),('ferd'),('kamal');
insert into course(course_name) values('csc'),('ece'),('eee');
insert into with_2nf(stud_id,course_id) values(1,1),(2,2),(3,3);
select s1.stud_name, c1.course_name from with_2nf w inner join stud s1   on w.stud_id = s1.stud_id inner join course c1 on w.course_id = c1.course_id;
