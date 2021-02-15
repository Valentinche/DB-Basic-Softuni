--интро задача 14

CREATE DATABASE CarRental
USE CarRental
CREATE TABLE Categories (
Id INT PRIMARY KEY IDENTITY,
CategoryName NVARCHAR(200) NOT NULL,
DailyRate INT,
WeeklyRate INT,
MonthlyRate INT,
WeekendRate INT
)

CREATE TABLE Cars(
Id INT PRIMARY KEY IDENTITY,
PlateNumber INT NOT NULL,
Manufacturer INT NOT NULL,
Model NVARCHAR(100) NOT NULL,
CarYear DATE NOT NULL,
CategoryId INT FOREIGN KEY REFERENCES Categories(Id),
Doors INT,
Picture VARBINARY(MAX),
Condition NVARCHAR(100) NOT NULL,
Available BINARY

)

--( (Id, DriverLicenceNumber, FullName, Address, City, ZIPCode, Notes

CREATE TABLE Employees (
Id INT PRIMARY KEY IDENTITY ,
FirstName NVARCHAR(50) NOT NULL,
LastName NVARCHAR(50) NOT NULL,
Title NVARCHAR(50),
Notes NVARCHAR(MAX)
)
CREATE TABLE Customers 
 (
Id INT PRIMARY KEY IDENTITY ,
DriverLicenceNumber INT NOT NULL,
FullName NVARCHAR(50) NOT NULL,
Address NVARCHAR(50),
City NVARCHAR(50),
ZipCode INT,
Notes NVARCHAR(MAX)
)
--TotalKilometrage, StartDate, EndDate, TotalDays,
--RateApplied, TaxRate, OrderStatus, Notes

CREATE TABLE RentalOrders  
 (
Id INT PRIMARY KEY IDENTITY ,
EmployeeId INT FOREIGN KEY REFERENCES Employees(Id),
CustomerId INT FOREIGN KEY REFERENCES Customers(Id),
CarId INT FOREIGN KEY REFERENCES Cars(Id),
TankLevel INT ,
KilometrageStart INT NOT NULL,
KilometrageEnd INT NOT NULL,
TotalKilometrage INT NOT NULL,
[StartDate] DATE,
[EndDate] DATE,
TotalDays INT ,
RateApplied INT,
TaxRate INT,
OrderStatus INT,
Notes NVARCHAR(MAX)
)
INSERT INTO Categories(CategoryName)
VALUES
('Нови'),
('Употребявани'),
('Брак')

INSERT INTO Customers(DriverLicenceNumber,FullName)
VALUES 
(528524,'TEdy Nikolova'),
(55542, 'Milena Petrova'),
(55485, 'Иван Николов')

INSERT INTO Employees(FirstName,LastName)
VALUES
('Tedy','Nikolova'),
('Mumpen','Pamukov'),
('Mappy','')

INSERT INTO RentalOrders(KilometrageStart,KilometrageEnd,TotalKilometrage)
VALUES 
(1,2,3),
(3,4,7),
(10,2,12)


INSERT INTO Cars(PlateNumber,Manufacturer,Model,CarYear,CategoryId,Condition)
VALUES (1,170,'ПЕЖО','10/24/1991',1,'Стара'),
(2,270,'Маздичка','10/24/1991',2,'Нова'),
(3,270,'Маздичка','10/24/1991',3,'Използвана')

SELECT * FROM Categories
SELECT * FROM Cars
SELECT * FROM Customers
SELECT * FROM Employees
SELECT * FROM RentalOrders