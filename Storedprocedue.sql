delimiter //
create procedure getcustomer(in countryname varchar(100))
begin
Select name from customer where country= countryname
end;
//
call getcustomer("saudi");
