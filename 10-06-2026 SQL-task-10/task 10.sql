use studentdb;
delimiter //
create procedure fetchemployees()
begin
	insert into employees (id,name,department,salary) value(14,'sam','HR',50000);
end//
delimiter ;
select * from employees;
call fetchemployees();
select * from employees;

delimiter //
create procedure UpdEmpl(in Id_n int)
begin
	update employees set salary = 30000 where id=Id_n;
end//
delimiter ;
select * from employees where id=13;
call UpdEmpl(13);
select * from employees where id=13;

CREATE TABLE Products (ProductID INT PRIMARY KEY,ProductName VARCHAR(100),Stock INT);
CREATE TABLE Orders (OrderID INT PRIMARY KEY,ProductID INT,Quantity INT);
insert into products values (1, 'laptop', 50);
delimiter //
create trigger insertproduct
after insert
on orders
for each row
begin
	update products set stock= stock-new.Quantity where ProductID = new.ProductID;
end//
delimiter ;
insert into orders values (101, 1, 2);
select * from products;

delimiter //
create trigger deleteadmin
before delete
on employees
for each row
begin
	if old.id= 14 then
	signal sqlstate '45000'
    set message_text = 'you r deleting last admin';
	end if;
end //
delimiter ;
delete from employees where id=14;
drop procedure UpdEmpl;
drop trigger deleteadmin;