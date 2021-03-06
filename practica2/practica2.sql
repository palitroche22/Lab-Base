USE [master]
GO
/****** Object:  Database [practica2]    Script Date: 4/30/2018 8:30:04 PM ******/
CREATE DATABASE [practica2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'practica2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\practica2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'practica2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\practica2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [practica2] SET COMPATIBILITY_LEVEL = 140
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
ALTER DATABASE [practica2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [practica2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [practica2] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'practica2', N'ON'
GO
ALTER DATABASE [practica2] SET QUERY_STORE = OFF
GO
USE [practica2]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [practica2]
GO
/****** Object:  Table [dbo].[apartado]    Script Date: 4/30/2018 8:30:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[apartado](
	[id_apartado] [int] IDENTITY(1000,1) NOT NULL,
	[cliente] [int] NOT NULL,
	[total_a_pagar] [real] NOT NULL,
	[total_abonado] [real] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 4/30/2018 8:30:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[id_cliente] [int] IDENTITY(100,1) NOT NULL,
	[nombre] [varchar](20) NOT NULL,
	[apellido] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 4/30/2018 8:30:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventario](
	[id_art] [int] IDENTITY(1,1) NOT NULL,
	[nombre_art] [varchar](30) NOT NULL,
	[modelo] [varchar](30) NOT NULL,
	[cantidad] [int] NOT NULL,
	[precio] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_art] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 4/30/2018 8:30:04 PM ******/
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
/****** Object:  Table [dbo].[venta]    Script Date: 4/30/2018 8:30:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venta](
	[id_venta] [int] IDENTITY(1000,1) NOT NULL,
	[vendedor] [varchar](50) NOT NULL,
	[articulo] [varchar](50) NOT NULL,
	[total] [int] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[apartado] ON 

INSERT [dbo].[apartado] ([id_apartado], [cliente], [total_a_pagar], [total_abonado]) VALUES (1000, 100, 100, 20)
INSERT [dbo].[apartado] ([id_apartado], [cliente], [total_a_pagar], [total_abonado]) VALUES (1001, 101, 300, 100)
INSERT [dbo].[apartado] ([id_apartado], [cliente], [total_a_pagar], [total_abonado]) VALUES (1002, 103, 500, 30)
INSERT [dbo].[apartado] ([id_apartado], [cliente], [total_a_pagar], [total_abonado]) VALUES (1003, 105, 450, 200)
INSERT [dbo].[apartado] ([id_apartado], [cliente], [total_a_pagar], [total_abonado]) VALUES (1004, 104, 350, 250)
INSERT [dbo].[apartado] ([id_apartado], [cliente], [total_a_pagar], [total_abonado]) VALUES (1005, 102, 600, 100)
INSERT [dbo].[apartado] ([id_apartado], [cliente], [total_a_pagar], [total_abonado]) VALUES (1006, 106, 700, 350)
INSERT [dbo].[apartado] ([id_apartado], [cliente], [total_a_pagar], [total_abonado]) VALUES (1007, 108, 800, 350)
INSERT [dbo].[apartado] ([id_apartado], [cliente], [total_a_pagar], [total_abonado]) VALUES (1008, 109, 850, 200)
INSERT [dbo].[apartado] ([id_apartado], [cliente], [total_a_pagar], [total_abonado]) VALUES (1009, 107, 485, 100)
SET IDENTITY_INSERT [dbo].[apartado] OFF
SET IDENTITY_INSERT [dbo].[cliente] ON 

INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido]) VALUES (111, N'jose ', N'gutierrez')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido]) VALUES (112, N'juan', N'mendiola')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido]) VALUES (113, N'carlos', N'lopez')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido]) VALUES (106, N'ricardo', N'gutierrez')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido]) VALUES (107, N'karla', N'tamez')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido]) VALUES (108, N'marcelo', N'gonzalez')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido]) VALUES (109, N'juan', N'pistolas')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido]) VALUES (110, N'pepe', N'mentiras')
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido]) VALUES (114, N'alan', N'gonzalez')
SET IDENTITY_INSERT [dbo].[cliente] OFF
SET IDENTITY_INSERT [dbo].[Inventario] ON 

INSERT [dbo].[Inventario] ([id_art], [nombre_art], [modelo], [cantidad], [precio]) VALUES (1, N'zapato hombre ', N'24', 10, 200)
INSERT [dbo].[Inventario] ([id_art], [nombre_art], [modelo], [cantidad], [precio]) VALUES (2, N'flats', N'64', 2, 350)
INSERT [dbo].[Inventario] ([id_art], [nombre_art], [modelo], [cantidad], [precio]) VALUES (3, N'zapatos de tacon', N'74', 3, 150)
INSERT [dbo].[Inventario] ([id_art], [nombre_art], [modelo], [cantidad], [precio]) VALUES (4, N'tennis hombre', N'34', 5, 250)
INSERT [dbo].[Inventario] ([id_art], [nombre_art], [modelo], [cantidad], [precio]) VALUES (5, N'tennis mujer', N'54', 6, 800)
INSERT [dbo].[Inventario] ([id_art], [nombre_art], [modelo], [cantidad], [precio]) VALUES (6, N'pantuflas', N'124', 7, 100)
INSERT [dbo].[Inventario] ([id_art], [nombre_art], [modelo], [cantidad], [precio]) VALUES (7, N'sandalias', N'223', 74, 100)
INSERT [dbo].[Inventario] ([id_art], [nombre_art], [modelo], [cantidad], [precio]) VALUES (8, N'tennis deportivo', N'334', 15, 100)
INSERT [dbo].[Inventario] ([id_art], [nombre_art], [modelo], [cantidad], [precio]) VALUES (9, N'tennis deportivo mujer ', N'444', 10, 100)
INSERT [dbo].[Inventario] ([id_art], [nombre_art], [modelo], [cantidad], [precio]) VALUES (10, N'tennis niña', N'454', 12, 100)
SET IDENTITY_INSERT [dbo].[Inventario] OFF
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([id_usr], [usr], [pwd], [correo]) VALUES (1, N'alex2230', N'123456', N'abc@gmail.com')
INSERT [dbo].[Usuario] ([id_usr], [usr], [pwd], [correo]) VALUES (2, N'Juan', N'troche22', N'abc@gmail.com')
INSERT [dbo].[Usuario] ([id_usr], [usr], [pwd], [correo]) VALUES (3, N'alex22301', N'123456', N'abc@gmail.com')
INSERT [dbo].[Usuario] ([id_usr], [usr], [pwd], [correo]) VALUES (4, N'alex22302', N'123456', N'abc@gmail.com')
INSERT [dbo].[Usuario] ([id_usr], [usr], [pwd], [correo]) VALUES (5, N'Carlos', N'123456', N'abc@gmail.com')
INSERT [dbo].[Usuario] ([id_usr], [usr], [pwd], [correo]) VALUES (6, N'Cesar', N'123456', N'abc@gmail.com')
INSERT [dbo].[Usuario] ([id_usr], [usr], [pwd], [correo]) VALUES (7, N'alex22305', N'torombolo21', N'abc@gmail.com')
INSERT [dbo].[Usuario] ([id_usr], [usr], [pwd], [correo]) VALUES (8, N'alex22306', N'123456', N'abc@gmail.com')
INSERT [dbo].[Usuario] ([id_usr], [usr], [pwd], [correo]) VALUES (9, N'alex22307', N'123456', N'abc@gmail.com')
INSERT [dbo].[Usuario] ([id_usr], [usr], [pwd], [correo]) VALUES (10, N'alex22308', N'123456', N'abc@gmail.com')
SET IDENTITY_INSERT [dbo].[Usuario] OFF
SET IDENTITY_INSERT [dbo].[venta] ON 

INSERT [dbo].[venta] ([id_venta], [vendedor], [articulo], [total]) VALUES (1000, N'2', N'223', 223)
INSERT [dbo].[venta] ([id_venta], [vendedor], [articulo], [total]) VALUES (1001, N'3', N'24', 24)
INSERT [dbo].[venta] ([id_venta], [vendedor], [articulo], [total]) VALUES (1002, N'4', N'64', 64)
INSERT [dbo].[venta] ([id_venta], [vendedor], [articulo], [total]) VALUES (1003, N'3', N'124', 124)
INSERT [dbo].[venta] ([id_venta], [vendedor], [articulo], [total]) VALUES (1005, N'1', N'74', 74)
INSERT [dbo].[venta] ([id_venta], [vendedor], [articulo], [total]) VALUES (1006, N'5', N'444', 444)
INSERT [dbo].[venta] ([id_venta], [vendedor], [articulo], [total]) VALUES (1007, N'6', N'454', 454)
INSERT [dbo].[venta] ([id_venta], [vendedor], [articulo], [total]) VALUES (1008, N'7', N'34', 34)
INSERT [dbo].[venta] ([id_venta], [vendedor], [articulo], [total]) VALUES (1009, N'8', N'334', 334)
INSERT [dbo].[venta] ([id_venta], [vendedor], [articulo], [total]) VALUES (1010, N'1', N'54', 54)
INSERT [dbo].[venta] ([id_venta], [vendedor], [articulo], [total]) VALUES (1011, N'0', N'0', 0)
SET IDENTITY_INSERT [dbo].[venta] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [usr_unico]    Script Date: 4/30/2018 8:30:04 PM ******/
ALTER TABLE [dbo].[Usuario] ADD  CONSTRAINT [usr_unico] UNIQUE NONCLUSTERED 
(
	[usr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD  CONSTRAINT [cantidad] CHECK  (([cantidad]>(0)))
GO
ALTER TABLE [dbo].[Inventario] CHECK CONSTRAINT [cantidad]
GO
USE [master]
GO
ALTER DATABASE [practica2] SET  READ_WRITE 
GO
