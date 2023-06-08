CREATE DATABASE DrugstoreApp

USE DrugstoreApp

CREATE TABLE Owners(
ID int PRIMARY KEY IDENTITY,
Name nvarchar(50) NOT NULL,
Surname nvarchar(50) NOT NULL,
)
SELECT * FROM  Owners
INSERT INTO Owners VALUES
('Naim', 'Rahimov')
CREATE TABLE Drugstores(
ID int PRIMARY KEY IDENTITY,
Name nvarchar(50) NOT NULL UNIQUE,
Address nvarchar(255) NOT NULL,
ContactNumber nvarchar(50) DEFAULT(+994000000000),
CreationDate datetime,
OwnerID int FOREIGN KEY REFERENCES Owners(ID)
)

SELECT * FROM Drugstores
INSERT INTO Drugstores VALUES
('Kanon','Khara Kharayev',default,'06.06.2023',1)

CREATE TABLE Druggists(
ID int PRIMARY KEY IDENTITY,
Name nvarchar(50) NOT NULL UNIQUE,
Surname nvarchar(50) NOT NULL,
Age int CHECK(Age > 18),
Experience int,
DrugstoreID int FOREIGN KEY  REFERENCES Drugstores(ID)
)

SELECT * FROM Druggists
INSERT INTO Druggists VALUES
('Isa','Rahimov',26,5,1)

CREATE TABLE Drugs(
ID int PRIMARY KEY IDENTITY,
Name nvarchar(50) NOT NULL UNIQUE,
Price decimal(16,2),
Count int CHECK(Count > 0),
DrugstoreID int FOREIGN KEY  REFERENCES Drugstores(ID)
)

SELECT * FROM Drugs
INSERT INTO Drugs VALUES
('Pain-killer',15.5,2,1)
