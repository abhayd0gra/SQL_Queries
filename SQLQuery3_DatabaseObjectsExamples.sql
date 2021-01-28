CREATE TABLE Customer(
CustomerID int not null IDENTITY(1,1),
CustomerName nvarchar(25),
CustomerAddress varchar(30),
CustomerCity varchar(20),
CustomerState char(2),
CustomerPostalCode varchar(9)
CONSTRAINT Customer_PK1 primary key (CustomerID));

INSERT INTO CUSTOMER VALUES
('Contemporary Casuals', '1355 S. Himes Blvd.', 'Gainesville', 'FL', '32601', 'Commercial');

select SCOPE_IDENTITY() AS CustomerID

INSERT INTO CUSTOMER VALUES
('ABC Inc', '11 Main ST', 'Boston', 'MA', '02771', 'Commercial');

INSERT INTO CUSTOMER VALUES
('XYZ Inc', '16 John Ave', 'Boston', 'MA', '02771', 'Commercial');

declare @CustomerID int

INSERT INTO Customer VALUES
('SDF cO.', '34 CHARLES STE.', 'JAMAICA', 'EA', '654525', 'PVT');

SELECT @CustomerID = SCOPE_IDENTITY()

INSERT INTO [Order] (OrderID, OrderDate, CustomerID)
values (1, getdate(), @CustomerID)

select * from [order]

go 
use NEUAIRLINES
go

select * from Customer

SELECT * , [dbo].[GetInsuranceOffer] (Price) FROM BookingHistory 


go 
use INFO6210
GO

CREATE SYNONYM Client 
for Customer;

select * from client

EXEC sp_rename @objname = [Orders], @newname = [Order]


