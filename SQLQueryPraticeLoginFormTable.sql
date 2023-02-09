drop table userAccountTable;

use loginUserAccount;

drop table userAccountTable;

create table userAccountTable(
	Id int not null primary key,
	UserName varchar(50),
	Password varchar(50)
);

insert into userAccountTable (Id,UserName,Password) values (1,'Pankaj','Pankaj@123');
insert into userAccountTable (Id,UserName,Password) values (2,'Aniket','Aniket@123');
insert into userAccountTable (Id,UserName,Password) values (3,'Aditya','Aditya@123');
insert into userAccountTable (Id,UserName,Password) values (4,'Tushar','Tushar@123');

select * from userAccountTable;

--to see the server name of the microsoft sequal sever name 
select @@SERVERNAME

