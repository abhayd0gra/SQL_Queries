go 
use INFO6210
go

INSERT INTO CUSTOMER VALUES
(1, 'Contemporary Casuals', '1355 S. Himes Blvd.', 'Gainesville', 'FL', '32601', 'Commercial');


INSERT INTO CUSTOMER VALUES
(2, 'ABC Inc', '11 Main ST', 'Boston', 'MA', '02771', 'Commercial');

SELECT *
FROM CUSTOMER
WHERE CustomerID = 1


INSERT INTO Product([ProductID]
           ,[ProductDescription]
           ,[ProductFinish]
           ,[ProductStandardPrice]
           ,[ProductLineID])
     VALUES
           ( 1, 'End Table','Cherry', 175, 8 );



INSERT INTO [dbo].[CustomerMA]
SELECT * FROM Customer
WHERE CustomerState = 'MA'

SELECT * FROM [dbo].[CustomerMA]


SELECT * FROM Customer