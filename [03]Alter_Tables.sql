USE [Easyhelp]
GO

ALTER TABLE Customers
ADD Address NVARCHAR(500)

DROP TABLE CustomerClaim
DROP TABLE Logs
DROP TABLE Claims

CREATE TABLE Claims
(
    ClaimId int primary key identity (1,1),
    WasCreatedByCustomer bit default 0,
    ClaimReason int foreign key references ClaimReasons (ClaimReasonId),
	ClaimStatus int foreign key references ClaimStatuses (ClaimStatusId),
	Flight int foreign key references Flights (FlightId),
	Manager int foreign key references Managers (ManagerId),
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
	Customer int foreign key references Customers (CustomerId),
	Claim int foreign key references Claims (ClaimId)
)

CREATE TABLE Logs
(
	LogId int primary key identity (1,1),
	Claim int foreign key references Claims (ClaimId),
	Manager int foreign key references Managers (ManagerId),
	Text nvarchar(500),
	Created timestamp
)