USE [practica2]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 19/02/2018 09:53:05 p. m. ******/
DROP TABLE [dbo].[usuario]
GO
/****** Object:  Table [dbo].[persona]    Script Date: 19/02/2018 09:53:05 p. m. ******/
DROP TABLE [dbo].[persona]
GO
USE [master]
GO
/****** Object:  Database [practica2]    Script Date: 19/02/2018 09:53:05 p. m. ******/
DROP DATABASE [practica2]
GO
/****** Object:  Database [practica2]    Script Date: 19/02/2018 09:53:05 p. m. ******/
CREATE DATABASE [practica2] ON  PRIMARY 
( NAME = N'practica2', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\practica2.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'practica2_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\practica2_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [practica2] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [practica2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [practica2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [practica2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [practica2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [practica2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [practica2] SET ARITHABORT OFF 
GO
ALTER DATABASE [practica2] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [practica2] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [practica2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [practica2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [practica2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [practica2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [practica2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [practica2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [practica2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [practica2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [practica2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [practica2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [practica2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [practica2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [practica2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [practica2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [practica2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [practica2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [practica2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [practica2] SET  MULTI_USER 
GO
ALTER DATABASE [practica2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [practica2] SET DB_CHAINING OFF 
GO
USE [practica2]
GO
/****** Object:  Table [dbo].[persona]    Script Date: 19/02/2018 09:53:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[persona](
	[id_persona] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](30) NOT NULL,
	[ap_pat] [nvarchar](30) NOT NULL,
	[apt_mat] [nvarchar](30) NOT NULL,
	[edad] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_persona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[usuario]    Script Date: 19/02/2018 09:53:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[id_usuario] [int] IDENTITY(1,1) NOT NULL,
	[usuario] [nvarchar](20) NOT NULL,
	[pwd] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[usuario] ON 

INSERT [dbo].[usuario] ([id_usuario], [usuario], [pwd]) VALUES (1, N'palitroche22', N'123456')
SET IDENTITY_INSERT [dbo].[usuario] OFF
USE [master]
GO
ALTER DATABASE [practica2] SET  READ_WRITE 
GO
