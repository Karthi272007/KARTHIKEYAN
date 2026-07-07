create database calendar;
use calendar;
create table events(id int auto_increment primary key,event_name varchar(50) not null,event_date date);
insert into events(event_name,event_date) values('diwali','2026-11-25'),('pongal','2026-01-24'),('goodfriday','2026-05-02'),('today',current_date());
select now() as current_date_time;
select event_date,date_format(event_date,'%d-%M-%Y') AS FORMATTED FROM events;
select event_name,year(event_date) as year,month(event_date) as month ,date(event_date) as date from events;
select concat(event_name,' = ',event_date) from events;
