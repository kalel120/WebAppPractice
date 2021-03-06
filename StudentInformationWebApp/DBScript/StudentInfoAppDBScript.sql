USE [master]
GO
/****** Object:  Database [StudentManagementDB]    Script Date: 03-Jan-16 12:40:09 AM ******/
CREATE DATABASE [StudentManagementDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'StudentManagementDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXP\MSSQL\DATA\StudentManagementDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'StudentManagementDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXP\MSSQL\DATA\StudentManagementDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [StudentManagementDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [StudentManagementDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [StudentManagementDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [StudentManagementDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [StudentManagementDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [StudentManagementDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [StudentManagementDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [StudentManagementDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [StudentManagementDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [StudentManagementDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [StudentManagementDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [StudentManagementDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [StudentManagementDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [StudentManagementDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [StudentManagementDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [StudentManagementDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [StudentManagementDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [StudentManagementDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [StudentManagementDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [StudentManagementDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [StudentManagementDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [StudentManagementDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [StudentManagementDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [StudentManagementDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [StudentManagementDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [StudentManagementDB] SET  MULTI_USER 
GO
ALTER DATABASE [StudentManagementDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [StudentManagementDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [StudentManagementDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [StudentManagementDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [StudentManagementDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [StudentManagementDB]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 03-Jan-16 12:40:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RegNo] [varchar](50) NULL,
	[Name] [varchar](max) NULL,
	[Address] [varchar](max) NULL,
	[Phone] [varchar](max) NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([Id], [RegNo], [Name], [Address], [Phone]) VALUES (1, N'001', N'Imran', N'12345 ', N'Mirpur    ')
INSERT [dbo].[Students] ([Id], [RegNo], [Name], [Address], [Phone]) VALUES (2, N'002', N'Ether', N'12785', N'Dhaka     ')
INSERT [dbo].[Students] ([Id], [RegNo], [Name], [Address], [Phone]) VALUES (3, N'003', N'Wade', N'2345', N'USA       ')
INSERT [dbo].[Students] ([Id], [RegNo], [Name], [Address], [Phone]) VALUES (4, N'004', N'Wilson', N'145', N'Dhaka     ')
SET IDENTITY_INSERT [dbo].[Students] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ_Students_RegNo]    Script Date: 03-Jan-16 12:40:09 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UQ_Students_RegNo] ON [dbo].[Students]
(
	[RegNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [StudentManagementDB] SET  READ_WRITE 
GO
