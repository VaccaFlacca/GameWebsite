USE [Homework]
GO
/****** Object:  Table [dbo].[Players]    Script Date: 9/28/2019 8:21:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Players](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Firstname] [varchar](50) NOT NULL,
	[Lastname] [varchar](50) NULL,
	[Address] [varchar](250) NOT NULL,
	[Phone] [varchar](15) NOT NULL,
	[Gamertag] [varchar](50) NULL,
	[games] [int] NULL,
	[Password] [varchar](50) NULL,
	[UserName] [varchar](50) NULL,
 CONSTRAINT [PK_Player] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[spDeleteUser]    Script Date: 9/28/2019 8:21:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spDeleteUser]
	@userID as int
AS
BEGIN
	Delete From Players where ID = @userID
END
GO
/****** Object:  StoredProcedure [dbo].[spInsertPlayer]    Script Date: 9/28/2019 8:21:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsertPlayer]
	@Username as varchar(50),
	@Password as varchar(50),
	@Firstname as varchar(50),
	@Lastname as varchar(50),
	@Address as varchar(250),
	@Phone as varchar(15),
	@Gamertag as varchar(50)
AS
BEGIN
	insert into Players (Firstname,Lastname,Address,Phone,Gamertag,Password,UserName)
	values (@Firstname,@Lastname,@Address,@Phone,@Gamertag,@Password,@UserName)
END
GO
/****** Object:  StoredProcedure [dbo].[spSelectAllUsers]    Script Date: 9/28/2019 8:21:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spSelectAllUsers]

AS

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM Players
END
GO
/****** Object:  StoredProcedure [dbo].[spSelectSpecificUser]    Script Date: 9/28/2019 8:21:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spSelectSpecificUser]
	@ID as int
AS
BEGIN
	select * from Players where ID = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[spUpdateInfo]    Script Date: 9/28/2019 8:21:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdateInfo]
	@Firstname as varchar(50), @Lastname as varchar(50), @Address as varchar(250), @Phone as varchar(15),
	@Gamertag as varchar(50),
	@Password as varchar(50),
	@UserName as varchar(50),
	@userID as int
AS
BEGIN
	update Players set 
	Firstname = @Firstname,
	Lastname = @Lastname,
	Address = @Address,
	Phone = @Phone,
	Gamertag = @Gamertag,
	Password = @Password,
	UserName = @UserName
	where ID = @userID

END
GO
