use studentdb;
create table sales (id int primary key,product varchar(50),amount decimal(10,2));
insert into sales (id, product, amount) values(1, 'laptop', 50000),(2, 'mouse', 1000),(3, 'keyboard', 2000),(4, 'monitor', 15000),(5, 'printer', 15000),(6, 'tablet', 25000);
select id,product,amount, row_number() over (order by amount desc) as row_number_ from sales;
select id,product,amount, rank() over (order by amount desc) as rank_ from sales;
select id,product,amount, dense_rank() over (order by amount desc) as dense_rank_ from sales;
select id,product,amount, sum(amount) over (order by amount desc) as total from sales;
with above_average as
(select * from sales where amount > (select avg(amount) from sales))
select * from above_average;