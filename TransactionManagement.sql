BEGIN TRANSACTION 
insert into department ( dept_no, dept_name, location)
values ( 'D7', 'Research', 'Boston')

SAVE TRANSACTION a
insert into department ( dept_no, dept_name)
values ( 'D8', 'Research')
SAVE TRANSACTION b
insert into department ( dept_no, dept_name)
values ( 'D9', 'Management')
ROLLBACK TRANSACTION b
insert into department ( dept_no, dept_name)
values ('D10', 'Sales')
ROLLBACK TRANSACTION a

COMMIT TRANSACTION;


SELECT * FROM department

BEGIN TRANSACTION
	UPDATE department 
		SET location = 'Bangalore'
		where dept_name = 'Support'
		and dept_no = 'd6'
	SAVE TRANSACTION a 
	UPDATE department 
		SET location = 'Seattle'
		where dept_name = 'Finance'
		and dept_no = 'D2'
	
ROLLBACK TRANSACTION b
COMMIT TRANSACTION;


DBCC USEROPTIONS