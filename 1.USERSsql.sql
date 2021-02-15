--интро задачи от 8 до 12

CREATE TABLE Users(
Id BIGINT PRIMARY KEY IDENTITY NOT NULL,
Username VARCHAR(30) UNIQUE NOT NULL,
[Password] VARCHAR(26) NOT NULL,
ProfilePicture VARBINARY(MAX)
CHECK(DATALENGTH(ProfilePicture) <=900*1024),
LastLoginTime DATETIME2 NOT NULL,
IsDeleted BIT NOT NULL)

INSERT INTO Users(Username,[Password],LastLoginTime,IsDeleted)
VALUES
('Tedy',22558,'05.11.2021',0),
('Tedyto',22558,'05.12.2021',1),
('Mappy',22558,'05.11.2020',0),
('Mumpen',22558,'05.11.2021',0),
('Pupy',22558,'06.11.2021',1)

SELECT * FROM Users
DELETE FROM USERS
WHERE Id=4

ALTER TABLE Users
DROP CONSTRAINT [PK__Users__3214EC077F5AC402]

ALTER TABLE Users
ADD CONSTRAINT PK_Users_CompositeIdUsername
PRIMARY KEY(Id,Username)

ALTER TABLE Users
ADD CONSTRAINT CK_Users_PasswordLength
CHECK(LEN([Password])>=5)

ALTER TABLE Users
ADD CONSTRAINT DF_Users_LastLoginTime
DEFAULT GETDATE() FOR LastLoginTime

INSERT INTO Users(Username,[Password],IsDeleted)
VALUES
('PUPIMAPI',22558,0)

SELECT * FROM Users

ALTER TABLE Users
DROP CONSTRAINT PK_Users_CompositeIdUsername

ALTER TABLE Users
ADD CONSTRAINT PK_Users_Id
PRIMARY KEY(Id)

ALTER TABLE Users
ADD CONSTRAINT CK_Users_UsernameLength
CHECK(LEN(Username) >=3)


