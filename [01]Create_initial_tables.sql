USE [Easyhelp]
GO

CREATE TABLE Customers
(
    CustomerId int primary key identity (1,1),
	FirstName nvarchar(50),
	SecondName nvarchar(50),
	IsAdult bit default 1,
	PassportNumber nvarchar(50),
	Email nvarchar(100),
	Phone1 nvarchar(15),
	Phone2 nvarchar(15),
)

CREATE TABLE ClaimReasons
(
	ClaimReasonId int primary key identity (1,1),
	ReasonName nvarchar(100)
)

CREATE TABLE ClaimStatuses
(
	ClaimStatusId int primary key identity (1,1),
	StatusName nvarchar(100)
)

CREATE TABLE Managers
( 
	ManagerId int primary key identity (1,1),
	Name nvarchar(50),
	Login nvarchar(50),
	Password nvarchar(100)
)

CREATE TABLE Claims
(
    ClaimId int primary key identity (1,1),
    AuthorId int foreign key references Customers (CustomerId),
    ClaimReason int foreign key references ClaimReasons (ClaimReasonId),
	ClaimStatus int foreign key references ClaimStatuses (ClaimStatusId),
	ManagerId int foreign key references Managers (ManagerId),
    HoursCustomerWasInformed int,
	WasAlternativeFlightOffered bit default 0,
	TotalDelayHours int,
	OfficialClaimExplanation nvarchar(4000),
	DocLinks nvarchar(4000),
	ReservationNumber nvarchar(100),
	TicketNumber nvarchar(100),
	ClaimComment nvarchar(4000)
)

CREATE TABLE CustomerClaim
(
	CustomerClaimId int primary key identity (1,1),
	CustomerId int foreign key references Customers (CustomerId),
	ClaimId int foreign key references Claims (ClaimId)
)

CREATE TABLE Airports
(
	AirportId int primary key identity (1,1),
	CityEn nvarchar(50),
	CityCyrillic nvarchar(50),
	IataCode nvarchar(3)
)

CREATE TABLE Flights
(
	FlightId int primary key identity (1,1),
	AirportFrom int foreign key references Airports (AirportId),
	AirportTo int foreign key references Airports (AirportId),
	DepartureDateTime smalldatetime,
	ArrivalDateTime smalldatetime
)

/* Logs */
CREATE TABLE Logs
(
	LogId int primary key identity (1,1),
	ClaimId int foreign key references Claims (ClaimId),
	ManagerId int foreign key references Managers (ManagerId),
	Text nvarchar(500),
	Created timestamp
)