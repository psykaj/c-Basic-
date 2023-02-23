create database pratice4

use pratice4;
go

create table workers (
	id int not null primary key identity(1,1),
	fullName varchar(100),
	gender varchar(100),
	states varchar(100),
	DOB datetime,
	payments int not null,
	addressPlace varchar(100)
);

insert into workers (fullName,gender,states,DOB,payments,addressPlace) 
values ('Pankaj Yadav','Male','Maharashtra','2012-12-14 11:12:54',12000,'kandivali');

select * from workers;

--stored procedure for getAllData
create proc getAllData 
as 
begin
	select * from workers;
end

exec getAllData;

--stored procedure for insertData
create proc insertData (
	@fullName varchar(100),
	@gender varchar(100),
	@states varchar(100),
	@DOB datetime,
	@payments int,
	@addressPlace varchar(100)
)
as
begin
	insert into workers values (@fullName,@gender,@states,@DOB,@payments,@addressPlace);
end

exec insertData 'Rahul','Male','Maharashtra','2011-11-13 11:12:24','13000','Kandivali';

--stored procedure for getDataById
create proc getDataById (
	@id int
)
as
begin
	select * from workers where id = @id;
end

exec getDataById 2;

--stored procedure for update
create proc updateData (
	@id int,
	@fullName varchar(100),
	@gender varchar(100),
	@states varchar(100),
	@DOB datetime,
	@payments int,
	@addressPlace varchar(100)
)
as
begin
	update workers set fullName=@fullName,
	gender=@gender,states=@states,
	DOB=@DOB,payments=@payments,
	addressPlace=@addressPlace
	where id=@id;
end;

exec updateData 2 ,'Tushar Timsina','Male','Goa','2011-11-13 11:12:24','45000','Borivali';

--stored procedure for delete
create proc deleteData (
	@id int
)
as
begin
	delete from workers where id = @id;
end

exec deleteData 1;

--to find the servername
select @@SERVERNAME;