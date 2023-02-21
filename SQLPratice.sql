create table customer
(
	firstName varchar(50),
	LastName varchar(50),
	Age int
)

insert into customer (firstName,LastName,Age) values ('Pankaj','Yadav','23');
insert into customer (firstName,LastName,Age) values ('Rahul','Sharma','24');
insert into customer (firstName,LastName,Age) values ('Mohit','vishwakarma','27');
insert into customer (firstName,LastName,Age) values ('Amitesh','Kewat','25');
insert into customer (firstName,LastName,Age) values ('Ashish','Gupta','29');
insert into customer (firstName,LastName,Age) values ('Karan','chaudhary','19');

delete from customer where firstName like 'K%';

select * from customer;    

--stored procedure
create proc getAllData
as 
begin 
	select * from customer
end

drop procedure [getAllData];

select firstName,LastName from customer;

select firstName,lastName from customer where firstName = 'Karan';

update customer Set Age = 24 where firstName = 'Pankaj' and LastName = 'Yadav';

delete from customer where firstName = 'Ashish';

--To add a new column
alter table customer add city varchar(50); 

--update
--when we add a new column and then we try to fill data into it then
--it wil give as redmark then go to = Edit Bar -> IntelliSense -> Refresh Local cache..
--redmark will gone in sometime
update customer set city = 'Surat' where LastName = 'chaudhary';

exec getAllData;

alter table customer add id int primary key identity(1,1)

--created another table products
create table products (
	id int primary key not null identity(1,1),
	productName varchar(50)
)

select * from products

create proc getAllProducts 
as 
begin
	select * from products
end

insert into products (productName) values ('Pensil'); 
insert into products (productName) values ('Pen');
insert into products (productName) values ('Eraser');
insert into products (productName) values ('Penpensil');
insert into products (productName) values ('Sharpner');

alter table products add price float;

update products set price = 5.00 where productName = 'Pensil';
update products set price = 10.00 where productName = 'Pen';
update products set price = 7.00 where productName = 'Eraser';
update products set price = 20.00 where productName = 'Penpensil';
update products set price = 12.00 where productName = 'Sharpner';

exec getAllProducts

--create new order table
create table OrderTable (
	orderId int primary key not null identity(1,1),
	orderDate datetime,
	customerId int,
	productId int 
)

--to delete table (Syntax)
drop table OrderTable;

select * from OrderTable;

insert into OrderTable (orderDate,customerId,productId) values (getdate(),1,5);
insert into OrderTable (orderDate,customerId,productId) values (getdate(),2,1);
insert into OrderTable (orderDate,customerId,productId) values (getdate(),3,4);
insert into OrderTable (orderDate,customerId,productId) values (getdate(),4,2);
insert into OrderTable (orderDate,customerId,productId) values (getdate(),5,1);
insert into OrderTable (orderDate,customerId,productId) values (getdate(),5,7);
insert into OrderTable (orderDate,customerId,productId) values (getdate(),6,4);

select * from OrderTable;
select * from customer;
select * from products;

--add foreign key from ordertable to customer table
alter table orderTable add foreign key (customerId) references customer(id);

--add foreign key from orderTable to products table
alter table orderTable add foreign key (productId) references products(id);

--inner join with alias name of table
--as keyword is optional
select * from orderTable as o inner join customer as c on o.orderId = c.id; 

--get all records from ordertable and customer table in inner join
--we can create multiple inner join queries in one statement 
select o.*,c.* from orderTable as o inner join customer as c on o.orderId = c.id; 

--Total price 
select sum(p.price) as Total from ordertable as o 
inner join products as p on
p.price = o.productId;

--before any function we perform any table column then we have to do group by statement
select p.id,sum(p.price) as Total,avg(p.price) as Average from ordertable as o 
inner join products as p on
p.price = o.productId
group by p.id;




