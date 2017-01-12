USE [Easyhelp]
GO

BEGIN TRANSACTION
INSERT INTO [dbo].[Customers]
           ([FirstName]
           ,[SecondName]
           ,[IsAdult]
           ,[PassportNumber]
           ,[Email]
           ,[Phone1]
           ,[Phone2]
           ,[Address])
     VALUES
           ('John', 'Dou', '1', 'KS000001', 'john.dou@gmail.com', '001-010101', '001-020202', 'Elm str, LA, CA, USA'),
		   ('Іван', 'Петренко', '1', 'АВ555555', 'ivan@i.ua', '093-010101', '067-020202', 'Зелена 147, Львів, Україна'),
		   ('Ian', 'Scott', '0', 'aaaaaaa', '', '0674033101', '', 'Київ'),
		   ('Test', 'Test', '1', 'KS000333', 'john.dou@test.com', '999999999', '001-020202', 'test address 1'),
		   ('Kim', 'Dou', '1', '111111111', '', '001-010101', '888888888', 'test address 2')
		   
INSERT INTO [dbo].[ClaimReasons]
           ([ReasonName])
     VALUES
           ('Delayed'), ('Cancelled')
		   
INSERT INTO [dbo].[ClaimStatuses]
           ([StatusName])
     VALUES
           ('Created'), ('Cancelled'), ('Working on'), ('Done')
		   
INSERT INTO [dbo].[Managers]
           ([Name]
           ,[Login]
           ,[Password])
     VALUES
           ('Khrystyna', 'Krystyna_login', 'pass1'),
		   ('Ira', 'Ira_login', 'pass2'),
		   ('IraK', 'IraK_login', 'pass3')
		   
INSERT INTO [dbo].[Flights]
           ([AirportFrom]
           ,[AirportTo]
           ,[DepartureDateTime]
           ,[ArrivalDateTime])
     VALUES 
			(4307, 1258, '2016-01-15 01:30', '2012-01-15 12:30'),
			(193, 4307, '2015-06-30 12:30', '2015-06-30 14:00'),
			(2350, 2887, '2016-10-24 00:01', '2016-10-24 07:01'),
			(925, 2692, '2016-03-30 12:30', '2012-03-30 20:30')
			
		   
INSERT INTO [dbo].[Claims]
           ([WasCreatedByCustomer]
           ,[ClaimReason]
           ,[ClaimStatus]
		   ,[Flight]
           ,[Manager]
           ,[HoursCustomerWasInformed]
           ,[WasAlternativeFlightOffered]
           ,[TotalDelayHours]
           ,[OfficialClaimExplanation]
           ,[DocLinks]
           ,[ReservationNumber]
           ,[TicketNumber]
           ,[ClaimComment])
     VALUES
/* WasCreatedByCustomer, ClaimReasonID, ClaimStatus, Flight, Manager, HoursCustomerInformed, WasAlternativeFlightOffered, TotalDelayHour */
           (1, 1, 2, 12, 1, 10, 0, 5, 'official explanation 1', 'somelink.pdf', 'RN12121212', 'TN12121212', 'Claim comment from manager 1'),
		   (1, 2, 3, 13, 2, 24, 1, 1, 'Офіційне пояснення 2', 'somelink2.pdf', 'НБ12121212', 'НК12121212', 'Коментар до заяви 2'),
		   (0, 1, 4, 13, 2, 12, 0, 1, 'Офіційне пояснення 3', 'somelink3.pdf, link2323.doc, link11.txt', 'НБ3333', 'НК33333', 'Коментар до заяви 3'),
		   (0, 1, 3, 14, 1, 12, 1, 0, 'Офіційне пояснення 4', 'somelink4.pdf', 'НБ4444444', 'НК4444444', 'Коментар до заяви 4'),
		   (1, 2, 3, 15, 1, 8, 1, 0, 'Офіційне пояснення 5', 'somelink5.pdf', 'НБ555555', 'НК555555', 'Коментар до заяви 5')

INSERT INTO [dbo].[CustomerClaim]
           ([Customer]
           ,[Claim])
     VALUES
           (1, 5), (3, 6), (1, 9)


INSERT INTO [dbo].[Logs]
           ([Claim]
           ,[Manager]
           ,[Text])
     VALUES (7, 1, 'Manager 1 created claim'),
	 (7, 1, 'Manager 1 edited claim'),
	 (7, 1, 'Manager 1 set claim status to ''completed'' ')
           
END
