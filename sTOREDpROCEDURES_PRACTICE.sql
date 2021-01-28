ALTER PROCEDURE GetAllEmployees @dept_no varchar(5) AS
BEGIN

SELECT e.emp_fname, e.emp_lname, e.dept_no 
FROM employee e
WHERE e.dept_no = @dept_no;

END


EXEC GetAllEmployees 'D3'


CREATE PROCEDURE ChangeEmployeeDept @emp_no int, @new_dept varchar (5) AS
BEGIN

	UPDATE employee SET dept_no = @new_dept
	WHERE emp_no = @emp_no

END

Select * from employee

EXEC ChangeEmployeeDept 15000, 'D4'


------STORED PROC 3---------------

CREATE PROCEDURE GetLastEmployee AS

DECLARE @MaxEmpNo INT

BEGIN

SELECT @MaxEmpNo = max(emp_no) FROM Employee e

SELECT emp_fname, emp_lname, dept_no
FROM employee
WHERE emp_no = @MaxEmpNo

END

EXEC GetLastEmployee

ALTER PROCEDURE GetLastEmployee @LargestEmpNo int OUTPUT, @SmallestEmpNo int OUTPUT  AS
DECLARE @MaxEmpNo int, @MinEmpNo int
BEGIN 
 
  SELECT @MaxEmpNo = MAX(emp_no), @MinEmpNo = MIN(emp_no) FROM employee;
 
  SELECT emp_fname, emp_lname, dept_no , 'Largest Employee' as Emp_Status
  FROM employee
  WHERE emp_no =@MaxEmpNo

  SELECT emp_fname, emp_lname, dept_no , 'Smallest EMployee' AS Emp_Status
  FROM employee
  WHERE emp_no =@MaxEmpNo

 SET @LargestEmpNo = @MaxEmpNo
 SET @SmallestEmpNo = @MinEmpNo
 
END;
 

declare @LastEmployee int, @FirstEmployee int 

EXEC GetLastEmployee  @LargestEmpNo=@LastEmployee  OUTPUT, @SmallestEmpNo = @FirstEmployee OUTPUT /* this sql is returning
																							2 result set from the stored proc*/ 																				
																											

SELECT @LastEmployee AS LargestEmployee, @FirstEmployee as SmallestEmployee
PRINT 'The largest emp_no is ' + cast(@LastEmployee as varchar) /*this sql block is printing the 2 output parameters of
																the stored procedure*/
