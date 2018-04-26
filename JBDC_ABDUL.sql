USE [master]
GO
/****** Object:  Database [JDBC_ABDUL]    Script Date: 4/26/2018 1:43:30 PM ******/
CREATE DATABASE [JDBC_ABDUL]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'JDBC_ABDUL', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS2017\MSSQL\DATA\JDBC_ABDUL.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'JDBC_ABDUL_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS2017\MSSQL\DATA\JDBC_ABDUL_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [JDBC_ABDUL] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JDBC_ABDUL].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JDBC_ABDUL] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JDBC_ABDUL] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JDBC_ABDUL] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JDBC_ABDUL] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JDBC_ABDUL] SET ARITHABORT OFF 
GO
ALTER DATABASE [JDBC_ABDUL] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [JDBC_ABDUL] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JDBC_ABDUL] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JDBC_ABDUL] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JDBC_ABDUL] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JDBC_ABDUL] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JDBC_ABDUL] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JDBC_ABDUL] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JDBC_ABDUL] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JDBC_ABDUL] SET  DISABLE_BROKER 
GO
ALTER DATABASE [JDBC_ABDUL] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JDBC_ABDUL] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JDBC_ABDUL] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JDBC_ABDUL] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JDBC_ABDUL] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JDBC_ABDUL] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [JDBC_ABDUL] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JDBC_ABDUL] SET RECOVERY FULL 
GO
ALTER DATABASE [JDBC_ABDUL] SET  MULTI_USER 
GO
ALTER DATABASE [JDBC_ABDUL] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JDBC_ABDUL] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JDBC_ABDUL] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JDBC_ABDUL] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [JDBC_ABDUL] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [JDBC_ABDUL] SET QUERY_STORE = OFF
GO
USE [JDBC_ABDUL]
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
USE [JDBC_ABDUL]
GO
/****** Object:  Table [dbo].[BUKU]    Script Date: 4/26/2018 1:43:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BUKU](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Judul_Buku] [varchar](60) NOT NULL,
	[Nama_Pengarang] [varchar](125) NULL,
	[Penerbit_ID] [int] NULL,
	[Tahun_Terbit] [int] NULL,
	[Tanggal_Publish] [date] NOT NULL,
	[ISBN] [varchar](64) NOT NULL,
	[Tersedia] [bit] NULL,
	[Created_Date] [datetime] NOT NULL,
	[Last_Update_Date] [datetime] NULL,
	[Created_By] [varchar](10) NULL,
	[Updated_By] [varchar](10) NULL,
 CONSTRAINT [PK_BUKU] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [JDBC_ABDUL] SET  READ_WRITE 
GO
