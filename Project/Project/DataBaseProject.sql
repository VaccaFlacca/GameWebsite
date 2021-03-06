USE [master]
GO
/****** Object:  Database [Project]    Script Date: 12/1/2019 10:33:27 PM ******/
CREATE DATABASE [Project]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Project', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Project.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Project_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Project_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Project] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Project].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Project] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Project] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Project] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Project] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Project] SET ARITHABORT OFF 
GO
ALTER DATABASE [Project] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Project] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Project] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Project] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Project] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Project] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Project] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Project] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Project] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Project] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Project] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Project] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Project] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Project] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Project] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Project] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Project] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Project] SET RECOVERY FULL 
GO
ALTER DATABASE [Project] SET  MULTI_USER 
GO
ALTER DATABASE [Project] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Project] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Project] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Project] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Project] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Project', N'ON'
GO
ALTER DATABASE [Project] SET QUERY_STORE = OFF
GO
USE [Project]
GO
/****** Object:  User [specialuser]    Script Date: 12/1/2019 10:33:27 PM ******/
CREATE USER [specialuser] FOR LOGIN [specialuser] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [specialuser]
GO
/****** Object:  Table [dbo].[AttemptsTable]    Script Date: 12/1/2019 10:33:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttemptsTable](
	[AttemptID] [int] NOT NULL,
	[Round] [int] NULL,
	[score] [int] NULL,
	[kills] [int] NULL,
	[UniqueID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_AttemptsTable] PRIMARY KEY CLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsersTable]    Script Date: 12/1/2019 10:33:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersTable](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[email] [varchar](75) NULL,
 CONSTRAINT [PK_UsersTable] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[spCheckLogin]    Script Date: 12/1/2019 10:33:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spCheckLogin]
	@UserName as varchar(50),
	@Password as varchar(50)
AS
BEGIN
	
	select ID from UsersTable where UserName = @UserName and Password = @Password

END
GO
/****** Object:  StoredProcedure [dbo].[spDeleteAttempt]    Script Date: 12/1/2019 10:33:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spDeleteAttempt]
	@AttemptID as int
AS
BEGIN
	
	Delete From AttemptsTable where UniqueID = @AttemptID
END
GO
/****** Object:  StoredProcedure [dbo].[spDescKills]    Script Date: 12/1/2019 10:33:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spDescKills]
AS
BEGIN
	select AttemptsTable.AttemptID, AttemptsTable.kills, AttemptsTable.Round, AttemptsTable.score, UsersTable.UserName
	from AttemptsTable 
	INNER JOIN UsersTable ON AttemptsTable.AttemptID = UsersTable.ID
	Order by [kills] desc
END
GO
/****** Object:  StoredProcedure [dbo].[spDescRound]    Script Date: 12/1/2019 10:33:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spDescRound]
AS
BEGIN
	select AttemptsTable.AttemptID, AttemptsTable.kills, AttemptsTable.Round, AttemptsTable.score, UsersTable.UserName
	from AttemptsTable 
	INNER JOIN UsersTable ON AttemptsTable.AttemptID = UsersTable.ID
	Order by [Round] desc
END
GO
/****** Object:  StoredProcedure [dbo].[spDescScore]    Script Date: 12/1/2019 10:33:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spDescScore]

AS
BEGIN
	select AttemptsTable.AttemptID, AttemptsTable.kills, AttemptsTable.Round, AttemptsTable.score, UsersTable.UserName
	from AttemptsTable 
	INNER JOIN UsersTable ON AttemptsTable.AttemptID = UsersTable.ID
	Order by [score] desc
END
GO
/****** Object:  StoredProcedure [dbo].[spGetAllAttemps]    Script Date: 12/1/2019 10:33:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetAllAttemps]
	@UserID as int
AS
BEGIN
	select Round,score,kills from AttemptsTable
	where AttemptID = @UserID
	select UserName from UsersTable
	where ID = @UserID
END
GO
/****** Object:  StoredProcedure [dbo].[spGetAttemptsID]    Script Date: 12/1/2019 10:33:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetAttemptsID]

	@UserID as int
AS
BEGIN
	select UniqueID from AttemptsTable where AttemptID = @UserID
	order by [score] desc
END
GO
/****** Object:  StoredProcedure [dbo].[spGetGoodStuff]    Script Date: 12/1/2019 10:33:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetGoodStuff]
	

AS
BEGIN
	select AttemptsTable.AttemptID, AttemptsTable.kills, AttemptsTable.Round, AttemptsTable.score, UsersTable.UserName
	from AttemptsTable 
	INNER JOIN UsersTable ON AttemptsTable.AttemptID = UsersTable.ID
	Order by [score] desc
END
GO
/****** Object:  StoredProcedure [dbo].[spGetUserData]    Script Date: 12/1/2019 10:33:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetUserData]

	@UserID as int

AS
BEGIN

	select * from UsersTable where @UserID = ID

END
GO
/****** Object:  StoredProcedure [dbo].[spInsertAttempt]    Script Date: 12/1/2019 10:33:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsertAttempt]
	@UserID as int,
	@Round as int,
	@score as int,
	@kill as int
AS
BEGIN
	Insert into AttemptsTable (AttemptID,Round,score,kills)
	values  (@UserID,@Round,@score,@kill)
END
GO
/****** Object:  StoredProcedure [dbo].[spInsertPlayer]    Script Date: 12/1/2019 10:33:27 PM ******/
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
		@UserName as varchar(50),
		@Password as varchar(50),
		@Email as varchar(50)
AS
BEGIN
	insert into UsersTable (UserName,Password,email)
	values (@UserName,@Password,@Email)
END
GO
/****** Object:  StoredProcedure [dbo].[spUpdateUser]    Script Date: 12/1/2019 10:33:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdateUser]
		@ID as int,
		@FirstName as varchar(50),
		@LastName as varchar(50),
		@email as varchar(50),
		@UserName as varchar(50)
AS
BEGIN
	update UsersTable set
	UserName = @UserName,
	FirstName = @FirstName,
	LastName = @LastName,
	email = @email
	where ID = @ID

END
GO
USE [master]
GO
ALTER DATABASE [Project] SET  READ_WRITE 
GO
