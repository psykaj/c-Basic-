create database mvcCRUD;

use mvcCRUD;
go

create table customer (
	customerId int not null primary key identity(1,1),
	CustomerName varchar(50),
	CustomerDescription varchar(250)
);

insert into customer(CustomerName,Description) values ('Pankaj','Software Developer');

select * from customer;