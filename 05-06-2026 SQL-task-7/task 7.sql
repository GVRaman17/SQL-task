use studentdb;
create table customers (customer_id int primary key,customer_name varchar(100),city varchar(100));
create table orders1 (order_id int primary key,order_date date,amount decimal(10,2),customer_id int,foreign key (customer_id) references customers(customer_id));
insert into customers values(1, 'ravi', 'chennai'),(2, 'priya', 'coimbatore'),(3, 'arun', 'madurai'),(4, 'divya', 'trichy'),(5, 'karthik', 'salem'),(6, 'meena', 'erode');
insert into orders1 values(101, '2025-01-10', 1500.00, 1),(102, '2025-01-12', 2200.00, 2),(103, '2025-01-15', 1800.00, 3),(104, '2025-01-18', 2500.00, 4),(105, '2025-01-20', 3000.00, 5);
select  c.customer_name,o.order_id,o.order_date,o.amount from customers c inner join orders1 o on c.customer_id=o.customer_id;
select  c.customer_name,o.order_id,o.amount from customers c left join orders1 o on c.customer_id=o.customer_id;

create table students2 (student_id int primary key,student_name varchar(50));
create table courses (course_id int primary key,course_name varchar(50));
create table student_courses (student_id int,course_id int,primary key (student_id, course_id));
insert into students2 values(1, 'arun'),(2, 'priya');
insert into courses values(101, 'sql'),(102, 'java');
insert into student_courses values(1, 101),(1, 102),(2, 101);
select * from students2;
select * from courses;
select * from student_courses;

create table departments2 (dept_id int primary key,dept_name varchar(50));
create table students3 (student_id int primary key,student_name varchar(50),dept_id int,foreign key (dept_id) references departments2(dept_id));
insert into departments2 values(10, 'cse'),(20, 'ece');
insert into students3 values(1, 'arun', 10),(2, 'priya', 20);
select * from departments2;
select * from students3;