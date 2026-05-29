use studentdb;
create table products(id int primary key auto_increment,name varchar(20) unique,price decimal not null);
alter table products add column stock int;
alter table products rename column price to unit_price;
insert into products (name,unit_price,stock) values ('melody',500,8),('laptop',1000,4),('mouse',800,7),('keyboard',700,6),('monitor',950,3);
update products set stock=5 where id=5;
delete from products where id=4;
drop table products;
select * from products;