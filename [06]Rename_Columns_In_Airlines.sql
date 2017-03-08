USE [Easyhelp]
GO

sp_rename 'Airlines.IsActive', 'IsEligibleForClaim', 'Column'
sp_rename 'Airlines.Counrty', 'Country', 'Column'

