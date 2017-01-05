USE [master]
GO

/****** Object:  Database [Easyhelp]    Script Date: 1/5/2017 12:34:29 PM ******/
CREATE DATABASE [Easyhelp]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Easyhelp', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\Easyhelp.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Easyhelp_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\Easyhelp_log.ldf' , SIZE = 4096KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [Easyhelp] SET COMPATIBILITY_LEVEL = 110
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Easyhelp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Easyhelp] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Easyhelp] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Easyhelp] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Easyhelp] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Easyhelp] SET ARITHABORT OFF 
GO

ALTER DATABASE [Easyhelp] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Easyhelp] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Easyhelp] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Easyhelp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Easyhelp] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Easyhelp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Easyhelp] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Easyhelp] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Easyhelp] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Easyhelp] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Easyhelp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Easyhelp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Easyhelp] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Easyhelp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Easyhelp] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Easyhelp] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Easyhelp] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Easyhelp] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [Easyhelp] SET  MULTI_USER 
GO

ALTER DATABASE [Easyhelp] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Easyhelp] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Easyhelp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Easyhelp] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [Easyhelp] SET  READ_WRITE 
GO


