create database Customer;

use Customer
go;

create table Customer (
	ID int not null primary key,
	FirstName varchar(50),
	LastName varchar(50),
	Age int,
);


insert into Customer (ID,FirstName,LastName,Age) values (1,'Pankaj','Yadav',23);
insert into Customer (ID,FirstName,LastName,Age) values (2,'Rahul','Yadav',24);
insert into Customer (ID,FirstName,LastName,Age) values (3,'Aniket','Karki',20);
insert into Customer (ID,FirstName,LastName,Age) values (4,'Aditya','Timsina',19);
insert into Customer (ID,FirstName,LastName,Age) values (5,'Tushar','Timsina',22);
insert into Customer (ID,FirstName,LastName,Age) values (6,'Aniket','Bind',22);
insert into Customer (ID,FirstName,LastName,Age) values (7,'Mohit','Vishwakarma',26);
insert into Customer (ID,FirstName,LastName,Age) values (8,'Amitesh','Kewat',25);
insert into Customer (ID,FirstName,LastName,Age) values (9,'Gaurav','Sharma',23);
insert into Customer (ID,FirstName,LastName,Age) values (10,'Ankit','Roy',23);

--give first and second column from the table
select ID,FirstName from Customer;

--all column from the table
select * from Customer;

--where clause (Used for the conditions)
select ID,firstName from Customer where firstName = 'Gaurav';

--use and operator
select ID,firstName,LastName from Customer where firstName = 'Pankaj' and lastName = 'yadav';

--use like opertaor -> for more refer w3schools
select ID,FirstName,LastName,age from customer where lastName like '%a';

--use update keyword 
update customer set age = 20 where firstname = 'Aditya' and lastname = 'timsina';

--delete Statement -> that Deletes all data from the table
delete Customer;

--for delete specific data 
delete Customer where firstname = 'Mohit' and lastname = 'Vishwakarma';

--single line comments

/*
multi-line comments
*/

--to add a new column in the table 
alter table customer add city varchar(50);

--Now update that city column in the customer table

--to update all the values in column city
update Customer set city = 'Mumbai';

--to update specific tuple in the table
update Customer set city = 'Delhi' where FirstName = 'Pankaj' and lastname = 'yadav';

--to delete the table 
drop table Customer;

-- identity(1,1) means -> auto-Increment features

create table products (
	ID int not null primary key identity(1,1),
	ProductName varchar(50)
);

--to all the data which is in table
select * from products;

--insert data into the table
insert into products (ProductName) values ('Computers');
insert into products (ProductName) values ('Laptops');
insert into products (ProductName) values ('Wireless mouse');
insert into products (ProductName) values ('Wireless Keyboard');
insert into products (ProductName) values ('Wireless Air dopes');
insert into products (ProductName) values ('Speakers');
insert into products (ProductName) values ('Earphones');
insert into products (ProductName) values ('Mobile phones');

--add a new column price for products
alter table products add price float;


--to update specific tuple in the product table
update products set price = 45000 where ProductName = 'Computers';
update products set price = 50000 where ProductName = 'Laptops';
update products set price = 400 where ProductName = 'Wireless mouse';
update products set price = 1000 where ProductName = 'Wireless Keyboard';
update products set price = 4500 where ProductName = 'Wireless Air dopes';
update products set price = 15000 where ProductName = 'Speakers';
update products set price = 500 where ProductName = 'Earphones';
update products set price = 60000 where ProductName = 'Mobile phones';

--create table orders
create table orders (
	orderID int primary key identity(1,1),
	--datetime format = YYYY-MM-DD HH-MI-SS
	orderDate datetime, 
	customerID int,
	productID int,
);

--getDate() -> gives todays date and time 

insert into orders (orderDate,customerID,productID) values (getDate(),3,5);
insert into orders (orderDate,customerID,productID) values(getDate(),9,8);

select * from orders;
select * from products;
select * from Customer;

--set up foreign keys
--to make customer and order tables relation to be good
alter table orders add foreign key (customerID) references customer(ID);

--to make product and order tables relation to be good
alter table orders add foreign key (productID) references products(id);

--joins 

--Inner jons = both tables have common values
select * from orders inner join products on orders.productID =  products.ID;

--alias -> used to give temporary name on that query -> represented (as) keyword
select * from orders as o inner join products as p on o.productID =  p.ID;

-- and remember (as) keyword is optional 
select * from orders o inner join products p on o.productID =  p.ID;

-- o.* and p.* means all from orders and products table 
select o.orderDate,p.ProductName,p.price,c.* from orders o inner join products p on o.productID =  p.ID 
inner join customer c on o.customerID = c.ID;

--functions and group by 
select c.firstName,sum(p.price),p.ProductName,avg(p.price) Total from orders o inner join products p on o.productID =  p.ID 
inner join customer c on o.customerID = c.ID group by c.firstname,p.ProductName;







