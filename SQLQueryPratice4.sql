create database aspCRUD;

use aspCRUD;
go

create table contact (
	contactId int not null primary key identity(1,1),
	personName varchar(50),
	mobile varchar(50),
	address varchar(250)
);

select * from contact;


--to see the server name
select @@SERVERNAME;


select * from contact;