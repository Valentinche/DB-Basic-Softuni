CREATE DATABASE Movies
USE Movies

CREATE TABLE Directors(
Id INT PRIMARY KEY IDENTITY,
[DirectorName] NVARCHAR(50) NOT NULL,
Notes NVARCHAR(MAX)
)

CREATE TABLE Genres(
Id INT PRIMARY KEY IDENTITY,
[GenresName] NVARCHAR(100) NOT NULL,
Notes NVARCHAR(MAX)
)

CREATE TABLE Categories(
Id INT PRIMARY KEY IDENTITY,
[CategoryName] NVARCHAR(50) NOT NULL,
Notes NVARCHAR(MAX)
)
--интро задача 13
CREATE TABLE Movies(
Id INT PRIMARY KEY IDENTITY,
Title NVARCHAR(50) NOT NULL,
DirectorId INT FOREIGN KEY REFERENCES Directors(Id) NOT NULL,
CopyrightYear DATE NOT NULL,
[Length] NVARCHAR(50),
GenreId INT FOREIGN KEY REFERENCES Genres(Id),
Rating INT NOT NULL,
Notes NVARCHAR(MAX)

)

INSERT INTO Directors([DirectorName])
	VALUES
	('Sofia'),
	('Plovdiv'),
	('Varna'),
	('Burgas'),
	('Спилбърг')

	INSERT INTO Genres([GenresName])
		VALUES
		('Трилър'),
		('Романтика'),
		('Комедия'),
		('Ужаси'),
		('Екшан')

		INSERT INTO Categories([CategoryName])
		VALUES
		('Трилър1'),
		('Романтика2'),
		('Комедия44'),
		('Ужаси8'),
		('Екшан10')


		INSERT INTO Movies(Title,DirectorId, CopyrightYear, Rating)
		 VALUES
		 ('Ivan',1,'02/01/2013',8),
		 ('Petar',5,'03/02/2004',5),
		 ('Maria',3,'08/28/2016',25),
		 ('Georgi',2,'02/01/2013',10),
		 ('Petar',4,'08/28/2016',1)

		 SELECT *FROM Movies;
		 SELECT *FROM Genres;
		  SELECT *FROM Directors;
		  SELECT *FROM Categories;