USE [practica2]
GO
ALTER TABLE [dbo].[prestamo] DROP CONSTRAINT [nombre]
GO
ALTER TABLE [dbo].[Inventario] DROP CONSTRAINT [cantidad]
GO
/****** Object:  Index [usr_unico]    Script Date: 2/26/2018 2:45:15 PM ******/
ALTER TABLE [dbo].[Usuario] DROP CONSTRAINT [usr_unico]
GO
/****** Object:  Index [cc_unica]    Script Date: 2/26/2018 2:45:15 PM ******/
ALTER TABLE [dbo].[Tarjeta2] DROP CONSTRAINT [cc_unica]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 2/26/2018 2:45:15 PM ******/
DROP TABLE [dbo].[Usuario]
GO
/****** Object:  Table [dbo].[Tarjeta2]    Script Date: 2/26/2018 2:45:15 PM ******/
DROP TABLE [dbo].[Tarjeta2]
GO
/****** Object:  Table [dbo].[Tarjeta]    Script Date: 2/26/2018 2:45:15 PM ******/
DROP TABLE [dbo].[Tarjeta]
GO
/****** Object:  Table [dbo].[prestamo]    Script Date: 2/26/2018 2:45:15 PM ******/
DROP TABLE [dbo].[prestamo]
GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 2/26/2018 2:45:15 PM ******/
DROP TABLE [dbo].[Inventario]
GO
USE [master]
GO
/****** Object:  Database [practica2]    Script Date: 2/26/2018 2:45:15 PM ******/
DROP DATABASE [practica2]
GO
/****** Object:  Database [practica2]    Script Date: 2/26/2018 2:45:15 PM ******/
CREATE DATABASE [practica2] ON  PRIMARY 
( NAME = N'practica2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\practica2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'practica2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\practica2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
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
ALTER DATABASE [practica2] SET AUTO_CLOSE OFF 
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
ALTER DATABASE [practica2] SET RECOVERY FULL 
GO
ALTER DATABASE [practica2] SET  MULTI_USER 
GO
ALTER DATABASE [practica2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [practica2] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'practica2', N'ON'
GO
USE [practica2]
GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 2/26/2018 2:45:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventario](
	[id_art] [int] IDENTITY(1,1) NOT NULL,
	[nombre_art] [varchar](30) NOT NULL,
	[modelo] [varchar](30) NOT NULL,
	[cantidad] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_art] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prestamo]    Script Date: 2/26/2018 2:45:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prestamo](
	[id_prestamo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](30) NOT NULL,
	[monto] [int] NOT NULL,
	[plazo] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_prestamo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tarjeta]    Script Date: 2/26/2018 2:45:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tarjeta](
	[id_cc] [int] IDENTITY(1,1) NOT NULL,
	[numero_cc] [varchar](16) NOT NULL,
	[cvv] [int] NOT NULL,
 CONSTRAINT [PK_Tarjeta] PRIMARY KEY CLUSTERED 
(
	[id_cc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tarjeta2]    Script Date: 2/26/2018 2:45:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tarjeta2](
	[id_cc] [int] IDENTITY(1,1) NOT NULL,
	[numero_cc] [bigint] NOT NULL,
	[cvv] [int] NOT NULL,
	[empresa] [varchar](8) NOT NULL,
	[nombre] [varchar](30) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 2/26/2018 2:45:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[id_usr] [int] IDENTITY(1,1) NOT NULL,
	[usr] [varchar](20) NOT NULL,
	[pwd] [varchar](30) NOT NULL,
	[correo] [varchar](20) NOT NULL,
 CONSTRAINT [PK_persona] PRIMARY KEY CLUSTERED 
(
	[id_usr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [cc_unica]    Script Date: 2/26/2018 2:45:16 PM ******/
ALTER TABLE [dbo].[Tarjeta2] ADD  CONSTRAINT [cc_unica] UNIQUE NONCLUSTERED 
(
	[numero_cc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [usr_unico]    Script Date: 2/26/2018 2:45:16 PM ******/
ALTER TABLE [dbo].[Usuario] ADD  CONSTRAINT [usr_unico] UNIQUE NONCLUSTERED 
(
	[usr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD  CONSTRAINT [cantidad] CHECK  (([cantidad]>(0)))
GO
ALTER TABLE [dbo].[Inventario] CHECK CONSTRAINT [cantidad]
GO
ALTER TABLE [dbo].[prestamo]  WITH CHECK ADD  CONSTRAINT [nombre] CHECK  (([nombre]>=(1) AND [nombre]<=(30)))
GO
ALTER TABLE [dbo].[prestamo] CHECK CONSTRAINT [nombre]
GO
USE [master]
GO
ALTER DATABASE [practica2] SET  READ_WRITE 
GO
