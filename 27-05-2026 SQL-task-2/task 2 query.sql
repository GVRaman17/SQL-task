create database companyDB;
use companyDB;
create table employees (id int primary key,name varchar(20) not null,salary int default 30000);
insert into employees (id,name,salary) values (1,'venkat',40000),(2,'shanmuga',35000);
insert into employees (id,name) values (3,'sadham');
alter table employees add column email varchar(30) unique;
update employees set email='venkat@gmail.com' where id=1;
update employees set email='shanmuga@gmail.com' where id=2;
update employees set email='sadham@gmail.com' where id=3;
insert into employees (id,name) values (4,'sathiya'),(5,'shrif');
update employees set email='sadham@gmail.com' where id=4; #unique throw error
drop table employees;
create table employees (id int primary key,name varchar(20) not null,salary int check(salary>0));
select * from employees;
