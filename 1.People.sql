--интро задача 7

CREATE TABLE People(
Id INT PRIMARY KEY IDENTITY ,
[Name] NVARCHAR(200) NOT NULL,
Picture VARBINARY(MAX),
Height DECIMAL(5,2),
[Weight] DECIMAL(5,2),
Gender CHAR (1)NOT NULL,
Birthday DATE NOT NULL,
Biography VARCHAR(MAX)
)

INSERT INTO People([Name],Height,[Weight],Gender,Birthday)
VALUES ('Tedy',170.00,62.50,'G','10/24/1991'),
('Tedy',170.00,62.50,'G','10/24/1991'),
('Tedy',172.00,60.50,'G','10/24/1991'),
('Tedy',175.00,62.50,'G','10/24/1991'),
('Tedy',170.00,62.50,'G','10/24/1991')

SELECT * FROM People