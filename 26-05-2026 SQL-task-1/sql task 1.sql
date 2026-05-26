create database schoolDB;
use SchoolDB;
create table students(id int primary key, name varchar(20) not null, age int, grade char(1));
insert into students(id,name,age,grade) values (1,'venkat',22,'A'),(2,'shanmuga',23,'A'),(3,'sadham',23,'B'),(4,'sathiya',23,'A'),(5,'ram',23,'A');
select * from students;
create database schoolDB1;
drop database schoolDB1;