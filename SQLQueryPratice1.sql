--To create database
create database employeeDetails

--To delete database
drop database Employees_Database;

create table empployees(
emp_id int,
firstName varchar(20),
lastName varchar(20),
designation varchar(20),
);

insert into empployees (emp_id,firstName,lastName,designation) values (1,'pankaj','Yadav','SDE');
insert into empployees (emp_id,firstName,lastName,designation) values (2,'Aniket','Karki','Software developer');
insert into empployees (emp_id,firstName,lastName,designation) values (3,'Aditya','Timsina','Software Engineer');
insert into empployees (emp_id,firstName,lastName,designation) values (4,'Tushar','Timsina','Devops Engineer');
insert into empployees (emp_id,firstName,lastName,designation) values (5,'Rahul','Yadav','SDE-2');

select * from empployees;

-- to rename database name -> alter database databaseName modify name = modifiedName
alter database employeeDetails modify name = employee_Database;

--alternate ways to change database name
-- sp_renameDB 'previousName' , 'updatedName'
sp_renameDB 'employee_Database' , 'Employees_Database';



