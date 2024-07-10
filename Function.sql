DELIMITER $$
CREATE FUNCTION AddTwoNumbers(a INT, b int)
returns int
deterministic
begin
	return a + b;
end$$
DELIMITER ;

select AddTwoNumbers(2,3) as SUM;
