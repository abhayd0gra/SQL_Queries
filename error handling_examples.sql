CREATE PROCEDURE DivideTwoNumber
@Number1 INT, 
@Number2 INT
AS
BEGIN
  DECLARE @Result INT
  SET @Result = 0
  SET @Result = @Number1 / @Number2
  PRINT 'RESULT IS :'+CAST(@Result AS VARCHAR)
END

exec DivideTwoNumber 20,2 

exec DivideTwoNumber 10,0

--Handling the Error using Global variable:

ALTER PROCEDURE DivideTwoNumber
@Number1 INT, 
@Number2 INT
AS
BEGIN
  DECLARE @Result INT
  SET @Result = 0

  IF(@Number2 = 0)
    RAISERROR('Second Number Cannot be zero',16,1)
  ELSE
	  BEGIN
		SET @Result = @Number1 / @Number2
		PRINT 'RESULT IS :'+CAST(@Result AS VARCHAR)
	  END
END

exec DivideTwoNumber 10,0



ALTER PROCEDURE DivideTwoNumbers
@Number1 INT, 
@Number2 INT
AS
BEGIN
  DECLARE @Result DECIMAL(4,4)
  SET @Result = 0
  BEGIN TRY
    SET @Result = @Number1 / @Number2
    PRINT 'RESULT IS : '+CAST(@Result AS VARCHAR)
  END TRY
  BEGIN CATCH
    PRINT 'SECOND NUMBER SHOULD NOT BE ZERO'
  END CATCH
END

BEGIN

    BEGIN TRY
	 --Example showing implementation of transaction
		BEGIN TRANSACTION 
			update employee
				SET dept_no ='D1'
			WHERE emp_no = 15000/0; ---FORCED AN ERROR BY DIVIDING BY ZERO

			update works_on
			SET project_no ='p3'
			Where emp_no =15000
			and project_no ='p1' 
      COMMIT TRANSACTION
    END TRY


    BEGIN CATCH
      ROLLBACK TRANSACTION
      SELECT  ERROR_NUMBER() as ErrorNumber,
          ERROR_MESSAGE() as ErrorMessage,
          ERROR_PROCEDURE() as ErrorProcedure,
          ERROR_STATE() as ErrorState,
          ERROR_SEVERITY() as ErrorSeverity,
          ERROR_LINE() as ErrorLine
    END CATCH

END


