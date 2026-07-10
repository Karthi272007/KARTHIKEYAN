create database school;
use school;
create table departments (
    dept_id int primary key,
    dept_name varchar(50)
);

create table students (
    student_id int primary key,
    student_name varchar(50),
    dept_id int,
    foreign key (dept_id) references departments(dept_id)
);

insert into departments (dept_id, dept_name) values
(101, 'computer science'),
(102, 'electrical engineering'),
(103, 'mechanical engineering'),
(104, 'data science'),
(105, 'physics');

insert into students (student_id, student_name, dept_id) values
(1, 'alice', 101),
(2, 'bob', 102),
(3, 'charlie', 101),
(4, 'david', null),
(5, 'eve', 103);

select departments.dept_id, departments.dept_name, students.student_id, students.student_name
from students
right join departments on students.dept_id = departments.dept_id;

select students.student_id, students.student_name, departments.dept_id, departments.dept_name
from students
full outer join departments on students.dept_id = departments.dept_id;
