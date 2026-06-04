use studentdb;
create table events (id int auto_increment primary key,event_name varchar(20),event_date date);
insert into events (id,event_name,event_date) values (1, 'Annual Meeting', '2026-01-15'),(2, 'Product Launch', '2026-03-20'),(3, 'Tech Conference', '2026-06-10'),
(4, 'Employee Training', '2026-08-05'),(5, 'Year-End Celebration', '2026-12-18');
select * from events;
select now() as current_date_time;
select id,event_name,date_format(event_date,'%d-%m-%y') as date_formated from events;
select year(event_date)as _date,month(event_date) as _month from events;
select concat(event_name,event_date) as concat_event from events;