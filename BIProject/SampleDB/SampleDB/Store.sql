CREATE TABLE [dbo].[Store]
(
	[StoreID] INT NOT NULL PRIMARY KEY, 
    [StoreName] NVARCHAR(150) NOT NULL, 
    [Address] NVARCHAR(255) NOT NULL, 
    [StoreManagerName] NVARCHAR(150) NOT NULL, 
    [SurfaceInMsq] INT NULL
)
