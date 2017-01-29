USE [Easyhelp]
GO

CREATE TABLE Countries
(
	CountryId int primary key identity (1,1),
	CountryName nvarchar(100)
)

CREATE TABLE Airlines
(
	AirlineId int primary key identity (1,1),
	AirlineName nvarchar (100),
	Counrty int foreign key references Countries (CountryId),
	RegistrationAddress nvarchar (250),
	IsActive bit default 0
)

ALTER TABLE Flights 
ADD Airline int foreign key references Airlines (AirlineId)

ALTER TABLE Managers 
ADD Email nvarchar(100)