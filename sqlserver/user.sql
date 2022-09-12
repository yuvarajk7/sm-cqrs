use SocialMedia
GO

IF NOT EXISTS(SELECT * FROM sys.server_principals WHERE name = 'SMUser')
BEGIN 
	CREATE LOGIN SMUser WITH PASSWORD=N'StrongPassword2@', DEFAULT_DATABASE=SocialMedia
END

IF NOT EXISTS(SELECT * FROM sys.database_principals WHERE name = 'SMUser')
BEGIN 
	EXEC sp_adduser 'SMUser', 'SMUser', 'db_owner'
END
