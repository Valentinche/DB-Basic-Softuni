--интро задача 15

CREATE DATABASE Hotel 
USE Hotel
CREATE TABLE Employees(
Id INT PRIMARY KEY IDENTITY,
FirstName NVARCHAR(50) ,
LastName NVARCHAR(50) NOT NULL,
Title NVARCHAR(30) ,
Notes NVARCHAR(300),
)
 
CREATE TABLE Customers(
AccountNumber INT PRIMARY KEY IDENTITY,
FirstName NVARCHAR(50) ,
LastName NVARCHAR(50) NOT NULL,
PhoneNumber NVARCHAR(50),
EmergencyName NVARCHAR(50),
EmergencyNumber NVARCHAR(50),
Notes NVARCHAR(300),
)

CREATE TABLE RoomStatus(
RoomStatus NVARCHAR(50) PRIMARY KEY,
Notes NVARCHAR(50)
)

--RoomTypes (RoomType, Notes)

CREATE TABLE RoomTypes(
RoomType NVARCHAR(50) PRIMARY KEY,
Notes NVARCHAR(50)
)

--BedTypes (BedType, Notes)

CREATE TABLE BedTypes(
BedType NVARCHAR(50) PRIMARY KEY,
Notes NVARCHAR(50)
)


CREATE TABLE Rooms(
RoomNumber INT PRIMARY KEY IDENTITY,
RoomType NVARCHAR(50),
BedType NVARCHAR(50),
Rate INT,
RoomStatus NVARCHAR(50),
Notes NVARCHAR(50)
)

CREATE TABLE Payments(
Id INT PRIMARY KEY IDENTITY,
EmployeeId INT FOREIGN KEY REFERENCES Employees(Id),
PaymentDate DATE,
AccountNumber INT,
FirstDateOccupied DATE,
LastDateOccupied DATE,
TotalDays INT,
AmountCharged DECIMAL(5,2) NOT NULL,
TaxRate INT,
TaxAmount DECIMAL(5,2) NOT NULL,
PaymentTotal  DECIMAL(5,2) NOT NULL,
Notes NVARCHAR(50)
)

CREATE TABLE Occupancies(
Id INT PRIMARY KEY IDENTITY,
EmployeeId INT FOREIGN KEY REFERENCES Employees(Id),
DateOccupied DATE,
AccountNumber INT,
RoomNumber INT,
RateApplied INT,
PhoneCharge DECIMAL(5,2),
Notes NVARCHAR(50)
)

INSERT INTO BedTypes(BedType)
VALUES ('single'),
('one bed'),
('two beds')

INSERT INTO Customers(LastName)
VALUES
('Ted'),
('Medy'),
('Fedy')

INSERT INTO Employees(LastName)
VALUES
('Ted'),
('Medy'),
('Fedy')
SELECT * FROM Employees

INSERT INTO Occupancies(RoomNumber,EmployeeId)
VALUES
(1,1),
(2,2),
(3,3)

INSERT INTO Payments(EmployeeId,AmountCharged,TaxAmount,PaymentTotal)
VALUES
(1,10,1,11),
(2,20,2,22),
(3,30,3,33)

INSERT INTO Rooms(Rate)
VALUES
(1),
(2),
(3)

INSERT INTO RoomStatus(Notes,RoomStatus)
VALUES
('1','free'),
('2','booked'),
('3','boked')


INSERT INTO RoomTypes(Notes,RoomType)
VALUES
('1','free'),
('2','booked'),
('3','boked')

UPDATE Payments
		 SET TaxRate -= TaxRate*0.03
		 SELECT * FROM Occupancies
		 DELETE FROM  Occupancies