USE [master]
GO

/****** Object:  Database [Pubs]    Script Date: 10/23/2016 7:52:31 PM ******/
CREATE DATABASE [PubsTwo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Pubs', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Pubs.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Pubs_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Pubs_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

ALTER DATABASE [Pubs] SET COMPATIBILITY_LEVEL = 130
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Pubs].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Pubs] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Pubs] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Pubs] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Pubs] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Pubs] SET ARITHABORT OFF 
GO

ALTER DATABASE [Pubs] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Pubs] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Pubs] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Pubs] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Pubs] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Pubs] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Pubs] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Pubs] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Pubs] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Pubs] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Pubs] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Pubs] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Pubs] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Pubs] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Pubs] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Pubs] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Pubs] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Pubs] SET RECOVERY FULL 
GO

ALTER DATABASE [Pubs] SET  MULTI_USER 
GO

ALTER DATABASE [Pubs] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Pubs] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Pubs] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Pubs] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [Pubs] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [Pubs] SET QUERY_STORE = OFF
GO

USE [Pubs]
GO

ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO

ALTER DATABASE [Pubs] SET  READ_WRITE 
GO



