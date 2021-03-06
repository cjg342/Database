USE [master]
GO
/****** Object:  Database [sample]    Script Date: 5/1/2017 4:48:46 PM ******/
CREATE DATABASE [sample]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'sample', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\sample.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'sample_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\sample_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [sample] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [sample].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [sample] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [sample] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [sample] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [sample] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [sample] SET ARITHABORT OFF 
GO
ALTER DATABASE [sample] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [sample] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [sample] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [sample] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [sample] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [sample] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [sample] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [sample] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [sample] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [sample] SET  DISABLE_BROKER 
GO
ALTER DATABASE [sample] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [sample] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [sample] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [sample] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [sample] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [sample] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [sample] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [sample] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [sample] SET  MULTI_USER 
GO
ALTER DATABASE [sample] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [sample] SET DB_CHAINING OFF 
GO
ALTER DATABASE [sample] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [sample] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [sample] SET DELAYED_DURABILITY = DISABLED 
GO
USE [sample]
GO
/****** Object:  User [IIS APPPOOL\ASP.NET v4.0]    Script Date: 5/1/2017 4:48:46 PM ******/
CREATE USER [IIS APPPOOL\ASP.NET v4.0] FOR LOGIN [IIS APPPOOL\ASP.NET v4.0] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [IIS APPPOOL\ASP.NET v4.0]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 5/1/2017 4:48:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Location] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employees]    Script Date: 5/1/2017 4:48:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[Salary] [int] NULL,
	[DepartmentId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employees1]    Script Date: 5/1/2017 4:48:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees1](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[Salary] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[products]    Script Date: 5/1/2017 4:48:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Students]    Script Date: 5/1/2017 4:48:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCity]    Script Date: 5/1/2017 4:48:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCity](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[IsSelected] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblDepartment]    Script Date: 5/1/2017 4:48:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDepartment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblEmployee]    Script Date: 5/1/2017 4:48:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmployee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Gender] [nvarchar](10) NULL,
	[City] [nvarchar](50) NULL,
	[DateOfBirth] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblStudents]    Script Date: 5/1/2017 4:48:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStudents](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[TotalMarks] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([ID])
GO
/****** Object:  StoredProcedure [dbo].[DeleteEmployee]    Script Date: 5/1/2017 4:48:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[DeleteEmployee]
@ID int
as
Begin
     Delete from Employees1 where ID = @ID
End

GO
/****** Object:  StoredProcedure [dbo].[InsertEmployee]    Script Date: 5/1/2017 4:48:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create procedure [dbo].[InsertEmployee]
@Name nvarchar(50),
@Gender nvarchar(50),
@Salary int
as
Begin
     Insert into Employees1 values (@Name, @Gender, @Salary)   
End

GO
/****** Object:  StoredProcedure [dbo].[spAddEmployee]    Script Date: 5/1/2017 4:48:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[spAddEmployee]  
@Name nvarchar(50),  
@Gender nvarchar (10),  
@City nvarchar (50),  
@DateOfBirth DateTime  
as  
Begin  
 Insert into tblEmployee (Name, Gender, City, DateOfBirth)  
 Values (@Name, @Gender, @City, @DateOfBirth)  
End


GO
/****** Object:  StoredProcedure [dbo].[spDeleteEmployee]    Script Date: 5/1/2017 4:48:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[spDeleteEmployee]
@Id int
as
Begin
 Delete from tblEmployee 
 where Id = @Id
End
GO
/****** Object:  StoredProcedure [dbo].[spGetAllEmployees]    Script Date: 5/1/2017 4:48:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spGetAllEmployees]
as
Begin
 Select Id, Name, Gender, City, DateOfBirth
 from tblEmployee
End

GO
/****** Object:  StoredProcedure [dbo].[UpdateEmployee]    Script Date: 5/1/2017 4:48:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[UpdateEmployee]
@ID int,
@Name nvarchar(50),
@Gender nvarchar(50),
@Salary int
as
Begin
     Update Employees1 Set Name = @Name, Gender = @Gender,
     Salary = @Salary
     where ID = @ID
End

GO
USE [master]
GO
ALTER DATABASE [sample] SET  READ_WRITE 
GO
