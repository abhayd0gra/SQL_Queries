
---CREATING AND OPERATING TRIGGERS WITHIN SQL--------------
CREATE TABLE [dbo].[departmentAudit](
	[departmentAuditID] int NOT NULL PRIMARY KEY IDENTITY (1000,1),
	[dept_no] [char](4) NOT NULL,
	[dept_name] [varchar](25) NOT NULL,
	[location] [varchar](25) NULL,
	[Action] char(1),
	[ActionDate] datetime
)



-----------

ALTER TRIGGER deptHistory on [dbo].[department]
FOR UPDATE
AS
begin

declare @action char(1)
SET @action = 'U' -- this means update


INSERT INTO [dbo].[departmentAudit]
           ([dept_no]
           ,[dept_name]
           ,[location]
           ,[Action]
           ,[ActionDate])

SELECT		[dept_no]
           ,[dept_name]
           ,[location]
           ,@action 
           ,getdate()
		   FROM deleted
end;

SELECT * FROM department
WHERE dept_no = 'D2'

UPDATE department SET [location] = 'Seattle10 ' where dept_no = 'd2'

SELECT * FROM departmentAudit