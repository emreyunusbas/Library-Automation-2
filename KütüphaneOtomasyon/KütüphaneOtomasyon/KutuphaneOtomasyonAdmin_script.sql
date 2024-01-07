USE [master]
GO
/****** Object:  Database [KutuphaneOtomasyon]    Script Date: 27.12.2023 14:22:27 ******/
CREATE DATABASE [KutuphaneOtomasyon]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KutuphaneOtomasyon', FILENAME = N'C:\Users\PC\KutuphaneOtomasyon.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KutuphaneOtomasyon_log', FILENAME = N'C:\Users\PC\KutuphaneOtomasyon_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [KutuphaneOtomasyon] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KutuphaneOtomasyon].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KutuphaneOtomasyon] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KutuphaneOtomasyon] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KutuphaneOtomasyon] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KutuphaneOtomasyon] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KutuphaneOtomasyon] SET ARITHABORT OFF 
GO
ALTER DATABASE [KutuphaneOtomasyon] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KutuphaneOtomasyon] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KutuphaneOtomasyon] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KutuphaneOtomasyon] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KutuphaneOtomasyon] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KutuphaneOtomasyon] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KutuphaneOtomasyon] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KutuphaneOtomasyon] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KutuphaneOtomasyon] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KutuphaneOtomasyon] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KutuphaneOtomasyon] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KutuphaneOtomasyon] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KutuphaneOtomasyon] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KutuphaneOtomasyon] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KutuphaneOtomasyon] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KutuphaneOtomasyon] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KutuphaneOtomasyon] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KutuphaneOtomasyon] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KutuphaneOtomasyon] SET  MULTI_USER 
GO
ALTER DATABASE [KutuphaneOtomasyon] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KutuphaneOtomasyon] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KutuphaneOtomasyon] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KutuphaneOtomasyon] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KutuphaneOtomasyon] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KutuphaneOtomasyon] SET QUERY_STORE = OFF
GO
USE [KutuphaneOtomasyon]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [KutuphaneOtomasyon]
GO
/****** Object:  Table [dbo].[kayitEkle]    Script Date: 27.12.2023 14:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kayitEkle](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[tc] [int] NULL,
	[adSoyad] [nvarchar](250) NULL,
	[yas] [nvarchar](100) NULL,
	[cinsiyet] [nvarchar](100) NULL,
	[telefon] [nvarchar](100) NULL,
	[email] [nvarchar](100) NULL,
	[adres] [nvarchar](max) NULL,
 CONSTRAINT [PK_kayitEkle_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kitapEkle]    Script Date: 27.12.2023 14:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kitapEkle](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[kitapAdi] [nvarchar](max) NULL,
	[konu] [nvarchar](max) NULL,
	[yil] [nvarchar](50) NULL,
	[kitapNo] [nvarchar](50) NULL,
 CONSTRAINT [PK_kitapEkle] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 27.12.2023 14:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[kAd] [nvarchar](100) NULL,
	[sifre] [nvarchar](100) NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[kayitEkle] ON 

INSERT [dbo].[kayitEkle] ([Id], [tc], [adSoyad], [yas], [cinsiyet], [telefon], [email], [adres]) VALUES (12, 12345, N'12345', N'12345', N'Bay', N'12345', N'12345@test.com', N'12345')
INSERT [dbo].[kayitEkle] ([Id], [tc], [adSoyad], [yas], [cinsiyet], [telefon], [email], [adres]) VALUES (1002, 56789, N'test', N'10', N'Bay', N'12345', N'test@test.com', N'testadres')
INSERT [dbo].[kayitEkle] ([Id], [tc], [adSoyad], [yas], [cinsiyet], [telefon], [email], [adres]) VALUES (1003, 13579, N'test123', N'10', N'Bay', N'12356', N'test1@test.com', N'Adres123')
SET IDENTITY_INSERT [dbo].[kayitEkle] OFF
GO
SET IDENTITY_INSERT [dbo].[kitapEkle] ON 

INSERT [dbo].[kitapEkle] ([Id], [kitapAdi], [konu], [yil], [kitapNo]) VALUES (1, N'testKitap', N'testKonu', N'1111', N'132')
INSERT [dbo].[kitapEkle] ([Id], [kitapAdi], [konu], [yil], [kitapNo]) VALUES (1002, N'test', N'testKonu', N'9876', N'987')
INSERT [dbo].[kitapEkle] ([Id], [kitapAdi], [konu], [yil], [kitapNo]) VALUES (1003, N'test1', N'testKonu1', N'2345', N'876')
INSERT [dbo].[kitapEkle] ([Id], [kitapAdi], [konu], [yil], [kitapNo]) VALUES (1004, N'test2', N'testKonu2', N'3456', N'654')
INSERT [dbo].[kitapEkle] ([Id], [kitapAdi], [konu], [yil], [kitapNo]) VALUES (1007, N'test3', N'testKonu2', N'3456', N'653')
SET IDENTITY_INSERT [dbo].[kitapEkle] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([Id], [kAd], [sifre]) VALUES (1, N'kAd', N'12345')
SET IDENTITY_INSERT [dbo].[users] OFF
GO
USE [master]
GO
ALTER DATABASE [KutuphaneOtomasyon] SET  READ_WRITE 
GO
