USE [Easyhelp]
GO

ALTER TABLE Airlines ADD IataTwoLetterCode NVARCHAR(5);
ALTER TABLE Airlines ADD IcaoThreeLetterCode NVARCHAR(5);
ALTER TABLE Airlines ADD AwbPreffix NVARCHAR(5);

ALTER TABLE Flights ADD FlightStatsId NVARCHAR(5);