use studentdb;
create table orders ( id int primary key auto_increment, product_name varchar(20) not null,quantity int,price decimal);
insert into orders (product_name,quantity,price) value('laptop',5,100),('Apple tab',4,200),('Anti vires',2,500),('mouse',3,200),('keyboard',1,300);
select * from orders;
select * from orders where quantity>2;
select * from orders where price between 100 and 500;
select * from orders where product_name like 'A%';
select * from orders order by quantity desc;