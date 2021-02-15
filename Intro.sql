--DATABASE INTRODUCTION задачи 1-4

CREATE DATABASE Minions_01
USE Minions_01
CREATE TABLE Minions(Id INT PRIMARY KEY NOT NULL,
[Name] NVARCHAR(50) NOT NULL,
Age INT
)

CREATE TABLE Towns(
ID INT PRIMARY KEY NOT NULL,
[Name] NVARCHAR(50)
)

ALTER TABLE Minions
ADD TownID INT FOREIGN KEY REFERENCES Towns(ID)

ALTER TABLE Minions
ADD CONSTRAINT FK_Minions_TownID
FOREIGN KEY (TownID) REFERENCES Towns(ID)


INSERT INTO Towns (ID,[Name])
		VALUES 
		(1,'Sofia'),
		(2,'Plovdiv'),
		(3,'Varna')

		SELECT * FROM Towns

		INSERT INTO Minions(Id,[Name],Age,TownId)

		VALUES
		(1,'Kevin',22,1),
		(2,'Bob',15,3),
		(3,'Steward',NULL,2)

		SELECT * FROM Minions
		SELECT * FROM Towns