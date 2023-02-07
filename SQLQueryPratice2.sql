-- to switch the database 
use [Employees_Database]
go

create table tblGender(
ID int not null primary key,
Gender varchar(10) not null
);

insert into tblGender (ID,Gender) values (1,'Male');
insert into tblGender (ID,Gender) values (2,'Female');
insert into tblGender (ID,Gender) values (3,'Unknown');

select * from tblGender;

drop table tblGender;

select * from tblPerson;

--insert into tblPerson (ID,Name,Email,GenderID) values ();