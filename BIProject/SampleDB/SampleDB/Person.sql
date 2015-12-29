CREATE TABLE [dbo].[Person]
(
	[PersonID] INT NOT NULL PRIMARY KEY, 
    [PersonFullName] NVARCHAR(150) NOT NULL, 
    [BirthDate] DATE NOT NULL, 
    [BirthCountry] NVARCHAR(150) NULL
)
