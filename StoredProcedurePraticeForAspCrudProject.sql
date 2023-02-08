--stored procedure for create or update

/*create proc ContactCreateOrUpdate
@contactId int,
@personName varchar(50),
@mobile varchar(50),
@address varchar(250)
as 
begin
	if(@contactId = 0)
		begin 
			insert into contact(personName,mobile,address)
			values (@personName,@mobile,@address)
		end
	else
		begin
			update contact
			set 
			personName = @personName,
			mobile = @mobile,
			address = @address
		where contactId = @contactId
		end
end*/

--stored procedure for contact view all
/*create proc contactViewAll
as 
	begin
	select * from contact
	end*/


--stored procedure for contactDeleteById
/*create proc contactDeleteById
@contactId int
as 
	begin
		delete from contact where contactId = @contactId
	end*/

--stored procedure for contactViewById
/*create proc contactViewById
@contactId int
as 
	begin
		select * from contact where contactId = @contactId
	end*/