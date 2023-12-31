USE [master]
GO
/****** Object:  Database [üniversite yönetim]    Script Date: 9.09.2023 21:25:35 ******/
CREATE DATABASE [üniversite yönetim]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'üniversite yönetim', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\üniversite yönetim.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'üniversite yönetim_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\üniversite yönetim_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [üniversite yönetim] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [üniversite yönetim].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [üniversite yönetim] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [üniversite yönetim] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [üniversite yönetim] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [üniversite yönetim] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [üniversite yönetim] SET ARITHABORT OFF 
GO
ALTER DATABASE [üniversite yönetim] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [üniversite yönetim] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [üniversite yönetim] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [üniversite yönetim] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [üniversite yönetim] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [üniversite yönetim] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [üniversite yönetim] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [üniversite yönetim] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [üniversite yönetim] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [üniversite yönetim] SET  DISABLE_BROKER 
GO
ALTER DATABASE [üniversite yönetim] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [üniversite yönetim] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [üniversite yönetim] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [üniversite yönetim] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [üniversite yönetim] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [üniversite yönetim] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [üniversite yönetim] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [üniversite yönetim] SET RECOVERY FULL 
GO
ALTER DATABASE [üniversite yönetim] SET  MULTI_USER 
GO
ALTER DATABASE [üniversite yönetim] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [üniversite yönetim] SET DB_CHAINING OFF 
GO
ALTER DATABASE [üniversite yönetim] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [üniversite yönetim] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [üniversite yönetim] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [üniversite yönetim] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'üniversite yönetim', N'ON'
GO
ALTER DATABASE [üniversite yönetim] SET QUERY_STORE = OFF
GO
USE [üniversite yönetim]
GO
/****** Object:  Table [dbo].[BolumTbl]    Script Date: 9.09.2023 21:25:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BolumTbl](
	[BolumId] [int] IDENTITY(200,1) NOT NULL,
	[İsim] [varchar](50) NOT NULL,
	[Dönemlikharç] [int] NOT NULL,
	[Yıllıkharç] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BolumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FakulteTbl]    Script Date: 9.09.2023 21:25:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FakulteTbl](
	[F_Id] [int] IDENTITY(1,1) NOT NULL,
	[İsim] [varchar](50) NOT NULL,
	[İsebaslamatarihi] [date] NOT NULL,
	[Cinsiyet] [varchar](10) NOT NULL,
	[Adres] [varchar](100) NOT NULL,
	[Nitelikler] [varchar](50) NOT NULL,
	[Deneyimler] [int] NOT NULL,
	[BolumId] [int] NOT NULL,
	[Bolum] [varchar](50) NOT NULL,
	[Maas] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GirisTbl]    Script Date: 9.09.2023 21:25:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GirisTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Kullanıcıadı] [varchar](50) NOT NULL,
	[Sifre] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KampusTbl]    Script Date: 9.09.2023 21:25:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KampusTbl](
	[Kampus_Id] [int] IDENTITY(1,1) NOT NULL,
	[İsim] [varchar](50) NOT NULL,
	[Sehir] [varchar](50) NOT NULL,
	[Dekan] [varchar](50) NOT NULL,
	[Derece] [varchar](50) NOT NULL,
	[Katılım_Tarihi] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Kampus_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KursTbl]    Script Date: 9.09.2023 21:25:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KursTbl](
	[Ders_Id] [int] IDENTITY(1,1) NOT NULL,
	[Ders_Adı] [varchar](50) NOT NULL,
	[Kredi_Saati] [int] NOT NULL,
	[Bölüm_Id] [int] NOT NULL,
	[Bölüm] [varchar](50) NOT NULL,
	[Fakülte_Id] [int] NOT NULL,
	[Fakülte_adı] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Ders_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaasTbl]    Script Date: 9.09.2023 21:25:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaasTbl](
	[Maas_Id] [int] IDENTITY(1,1) NOT NULL,
	[F_Id] [int] NOT NULL,
	[F_ismi] [varchar](50) NOT NULL,
	[Maas] [int] NOT NULL,
	[Bolum] [varchar](50) NOT NULL,
	[sonödemetarihi] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Maas_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OgrenciTbl]    Script Date: 9.09.2023 21:25:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OgrenciTbl](
	[OgrenciId] [int] IDENTITY(1,1) NOT NULL,
	[Adı] [varchar](50) NOT NULL,
	[İsebaslamatarihi] [date] NOT NULL,
	[Cinsiyet] [varchar](10) NOT NULL,
	[Adres] [varchar](100) NOT NULL,
	[BolumId] [int] NOT NULL,
	[Bolum] [varchar](50) NOT NULL,
	[Telefon] [varchar](15) NOT NULL,
	[Dönem] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OgrenciId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YillikHarcTbl]    Script Date: 9.09.2023 21:25:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YillikHarcTbl](
	[YillikHarc_Id] [int] IDENTITY(1,1) NOT NULL,
	[OgrenciId] [int] NOT NULL,
	[Ogrenciİsmi] [varchar](50) NOT NULL,
	[OgrenciBolum] [varchar](50) NOT NULL,
	[Donem] [int] NOT NULL,
	[Toplamucret] [int] NOT NULL,
	[Sontarih] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[YillikHarc_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GirisTbl] ON 

INSERT [dbo].[GirisTbl] ([Id], [Kullanıcıadı], [Sifre]) VALUES (1, N'Demet Kasırga', N'12345')
INSERT [dbo].[GirisTbl] ([Id], [Kullanıcıadı], [Sifre]) VALUES (2, N'ridobaba', N'r22031998r')
SET IDENTITY_INSERT [dbo].[GirisTbl] OFF
GO
ALTER TABLE [dbo].[MaasTbl]  WITH CHECK ADD  CONSTRAINT [FK6] FOREIGN KEY([F_Id])
REFERENCES [dbo].[FakulteTbl] ([F_Id])
GO
ALTER TABLE [dbo].[MaasTbl] CHECK CONSTRAINT [FK6]
GO
ALTER TABLE [dbo].[OgrenciTbl]  WITH CHECK ADD  CONSTRAINT [FK1] FOREIGN KEY([BolumId])
REFERENCES [dbo].[BolumTbl] ([BolumId])
GO
ALTER TABLE [dbo].[OgrenciTbl] CHECK CONSTRAINT [FK1]
GO
ALTER TABLE [dbo].[YillikHarcTbl]  WITH CHECK ADD  CONSTRAINT [FK5] FOREIGN KEY([OgrenciId])
REFERENCES [dbo].[OgrenciTbl] ([OgrenciId])
GO
ALTER TABLE [dbo].[YillikHarcTbl] CHECK CONSTRAINT [FK5]
GO
USE [master]
GO
ALTER DATABASE [üniversite yönetim] SET  READ_WRITE 
GO
