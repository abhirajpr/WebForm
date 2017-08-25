
Alter PROCEDURE LoginAttempt @Username nvarchar(100),@LoginAttempts int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	DECLARE @UserExists int
		Select @UserExists = COUNT(*)from [dbo].[UserDb] where Username = @Username 
		Select @LoginAttempts = Try from [dbo].[UserDb] where Username = @Username 
	IF (@UserExists = 1)
	BEGIN
		IF(@LoginAttempts > 0)
		BEGIN
			SET @LoginAttempts -=1
			update [dbo].[UserDb] set Try = @LoginAttempts where Username = @Username 
			--SET @Status = cast(@LoginAttempts as nvarchar(20)) + ' Attempts Left!!'

		END
		ELSE
			begin
			update [dbo].[UserDb] set IsLocked = 1 where Username = @Username 
			 
			update [dbo].[UserDb] set Date = getdate() where Username = @Username
			--SET @Status = 'No more Attempts'	
			end	
	END
	--ELSE
		--BEGIN
			--SET @Status = 'Invalid Username or Password'
		--END
END
GO



declare @login1 int

exec LoginAttempt Abhiraj ,@login1 output
print  @login1

select getdate()


SELECT TOP 1000 [ID]
      ,[Username]
      ,[Email]
      ,[Password]
      ,[Try]
      ,[isLocked]
      ,[Date]
  FROM [TestDB].[dbo].[UserDb]

  update [dbo].[UserDb] set Try=5
  update [dbo].[UserDb] set isLocked=0
   update [dbo].[UserDb] set Date=NULL