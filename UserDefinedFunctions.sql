/*creat a function to summarise 2 numbers*/ 

ALTER FUNCTION AmazingSum (@a int , @b int) RETURNS int  AS
begin
declare @c int

SET @c = @a + @b 
RETURN (@c)

end

SELECT dbo.AmazingSum (23 , 3) AS 'Sum'


---- COMPLEX FUNCTION---- 
/*PASS IN EMPLOYEE NUMBER AND THEN RETURN EMPLOYEE FULL NAME*/

ALTER FUNCTION GetEmployeeName (@emp_no int) RETURNS varchar(200)
AS
BEGIN

DECLARE @emp_name varchar(200)

SELECT @emp_name = e.emp_fname + ' ' + e.emp_lname FROM employee e
WHERE e.emp_no = @emp_no

RETURN @emp_name
END;


SELECT dbo.GetEmployeeName (15002) as FullName  --- This is returning a single value froma function.

SELECT dbo.GetEmployeeName (e.emp_no) as FullName, e.emp_no
from employee e      ---- Returning using set based processing to retreive data from tables. 



