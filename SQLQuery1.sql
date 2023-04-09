CREATE DATABASE School
Go
Use School

CREATE TABLE Students
(
Id INT PRIMARY KEY IDENTITY,
FullName NVARCHAR(20) CHECK(LEN(FullName)>1)
)

INSERT INTO Students
VALUES
('Rashad Abbasov'),
('Rovshan Suleymanov'),
('Jamil Safarov'),
('Ilkin Aliyev'),
('Huseyin Shafiyev')

ALTER TABLE Students
ADD GroupId INT FOREIGN KEY REFERENCES Groups(Id)

CREATE TABLE Groups
(
Id INT PRIMARY KEY IDENTITY,
GroupNo NVARCHAR(20) CHECK(LEN(GroupNo)>1) UNIQUE
)

INSERT INTO Groups
VALUES
('P232'),
('S777'),
('D567'),
('G777'),
('P123')

	SELECT * FROM Students
	 JOIN Groups
	ON Students.GroupId=Groups.Id


	CREATE TABLE Exams
	(
	ID INT PRIMARY KEY IDENTITY,
	Name NVARCHAR(20)
	)

	

	INSERT INTO Exams
	VALUES
	('BACK-END'),
	('FRONT-END'),
	('SYSTEM'),
	('DESIGN')

	

	CREATE TABLE ExamResults
	(
	Id INT PRIMARY KEY IDENTITY,
	Point INT,
	StartDate DATETIME2
	)

	


	INSERT INTO ExamResults
	VALUES
	(56,'2008-11-11 12:34'),
	(67,'2023-01-12 09:35'),
	(56,'2008-11-11 08:30'),
	(69,'2008-11-11 11:34')

	ALTER TABLE Exams
	ADD ExamResultId INT FOREIGN KEY REFERENCES ExamResults(Id)

	Select ExamResultId,Name FROM Exams 
	JOIN ExamResults.Point
	ON Exams.ExamResultsId=ExamResults(Id)
