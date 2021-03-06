USE [master]
GO
/****** Object:  Database [TandemStorage]    Script Date: 4/23/2018 7:16:58 PM ******/
CREATE DATABASE [TandemStorage]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TandemStorage', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\TandemStorage.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TandemStorage_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\TandemStorage_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TandemStorage] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TandemStorage].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TandemStorage] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TandemStorage] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TandemStorage] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TandemStorage] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TandemStorage] SET ARITHABORT OFF 
GO
ALTER DATABASE [TandemStorage] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [TandemStorage] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TandemStorage] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TandemStorage] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TandemStorage] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TandemStorage] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TandemStorage] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TandemStorage] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TandemStorage] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TandemStorage] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TandemStorage] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TandemStorage] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TandemStorage] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TandemStorage] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TandemStorage] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TandemStorage] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TandemStorage] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TandemStorage] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TandemStorage] SET  MULTI_USER 
GO
ALTER DATABASE [TandemStorage] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TandemStorage] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TandemStorage] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TandemStorage] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [TandemStorage] SET DELAYED_DURABILITY = DISABLED 
GO
USE [TandemStorage]
GO
/****** Object:  Table [dbo].[AppleStorage]    Script Date: 4/23/2018 7:16:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AppleStorage](
	[BoxID] [int] IDENTITY(1,1) NOT NULL,
	[Variety] [varchar](50) NOT NULL,
	[Grower] [varchar](50) NULL,
	[DateIn] [smalldatetime] NOT NULL,
	[DateOut] [smalldatetime] NULL,
	[BatchID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[BoxID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Batch]    Script Date: 4/23/2018 7:16:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Batch](
	[BatchID] [int] IDENTITY(1,1) NOT NULL,
	[CiderType] [varchar](50) NOT NULL,
	[GallonsFilled] [int] NULL,
	[FermentTankID] [int] NOT NULL,
	[DateFilled] [smalldatetime] NULL,
	[CarbTankID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[BatchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CarbTanks]    Script Date: 4/23/2018 7:16:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CarbTanks](
	[CarbTankID] [int] IDENTITY(1,1) NOT NULL,
	[TankDescription] [varchar](50) NULL,
	[GallonCap] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CarbTankID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CiderBottles]    Script Date: 4/23/2018 7:16:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CiderBottles](
	[BottleRunID] [int] IDENTITY(1,1) NOT NULL,
	[BatchID] [int] NULL,
	[DateBottled] [smalldatetime] NULL,
	[#ofBottles] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[BottleRunID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CiderCans]    Script Date: 4/23/2018 7:16:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CiderCans](
	[CanRunID] [int] IDENTITY(1,1) NOT NULL,
	[BatchID] [int] NULL,
	[DateCanned] [smalldatetime] NULL,
	[#ofCanCases] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CanRunID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CiderKegs]    Script Date: 4/23/2018 7:16:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CiderKegs](
	[KegRunID] [int] IDENTITY(1,1) NOT NULL,
	[BatchID] [int] NULL,
	[DateKegged] [smalldatetime] NULL,
	[#ofsixths] [int] NULL,
	[#ofhalves] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[KegRunID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CidertoLBStorage]    Script Date: 4/23/2018 7:16:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CidertoLBStorage](
	[LBTransferID] [int] IDENTITY(1,1) NOT NULL,
	[DateofTransfer] [smalldatetime] NULL,
	[BottleRunID] [int] NULL,
	[#ofBottleCases] [int] NULL,
	[KegRunID] [int] NULL,
	[KegHalfInGallons] [int] NULL,
	[KegSixthInGallons] [int] NULL,
	[CanRunID] [int] NULL,
	[NumberofCanCases] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[LBTransferID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CidertoRBStorage]    Script Date: 4/23/2018 7:16:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CidertoRBStorage](
	[RBSTransferID] [int] IDENTITY(1,1) NOT NULL,
	[DateofTransfer] [smalldatetime] NULL,
	[BottleRunID] [int] NULL,
	[#ofBottleCases] [int] NULL,
	[KegRunID] [int] NULL,
	[KegHalfInGallons] [int] NULL,
	[KegSixthInGallons] [int] NULL,
	[CanRunID] [int] NULL,
	[NumberofCanCases] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[RBSTransferID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CidertoTRBackRoom]    Script Date: 4/23/2018 7:16:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CidertoTRBackRoom](
	[TRBackroomTransferID] [int] IDENTITY(1,1) NOT NULL,
	[DateofTransfer] [smalldatetime] NULL,
	[BottleRunID] [int] NULL,
	[#ofBottleCases] [int] NULL,
	[KegRunID] [int] NULL,
	[KegHalfInGallons] [int] NULL,
	[KegSixthInGallons] [int] NULL,
	[CanRunID] [int] NULL,
	[NumberofCanCases] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[TRBackroomTransferID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CidertoTRDraft]    Script Date: 4/23/2018 7:16:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CidertoTRDraft](
	[TRDraftTransferID] [int] IDENTITY(1,1) NOT NULL,
	[DateofTransfer] [smalldatetime] NULL,
	[BatchID] [int] NULL,
	[DraftGallons] [int] NULL,
	[LilWoodyGallons] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[TRDraftTransferID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Fermentors]    Script Date: 4/23/2018 7:16:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Fermentors](
	[FermentTankID] [int] IDENTITY(1,1) NOT NULL,
	[TankDescription] [varchar](50) NULL,
	[GallonCap] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[FermentTankID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[CannedVarieties]    Script Date: 4/23/2018 7:16:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CannedVarieties] AS 
SELECT CanRunID, #ofCanCases, CiderType
FROM CiderCans
JOIN Batch ON Batch.BatchID = CiderCans.BatchID;
GO
/****** Object:  View [dbo].[CurrentFermentingBatches]    Script Date: 4/23/2018 7:16:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CurrentFermentingBatches] AS
SELECT	BatchID, CiderType, TankDescription
FROM Batch
JOIN Fermentors ON Batch.FermentTankID = Fermentors.FermentTankID

GO
ALTER TABLE [dbo].[AppleStorage]  WITH CHECK ADD FOREIGN KEY([BatchID])
REFERENCES [dbo].[Batch] ([BatchID])
GO
ALTER TABLE [dbo].[Batch]  WITH CHECK ADD FOREIGN KEY([CarbTankID])
REFERENCES [dbo].[CarbTanks] ([CarbTankID])
GO
ALTER TABLE [dbo].[Batch]  WITH CHECK ADD FOREIGN KEY([FermentTankID])
REFERENCES [dbo].[Fermentors] ([FermentTankID])
GO
ALTER TABLE [dbo].[CiderBottles]  WITH CHECK ADD FOREIGN KEY([BatchID])
REFERENCES [dbo].[Batch] ([BatchID])
GO
ALTER TABLE [dbo].[CiderCans]  WITH CHECK ADD FOREIGN KEY([BatchID])
REFERENCES [dbo].[Batch] ([BatchID])
GO
ALTER TABLE [dbo].[CiderKegs]  WITH CHECK ADD FOREIGN KEY([BatchID])
REFERENCES [dbo].[Batch] ([BatchID])
GO
ALTER TABLE [dbo].[CidertoLBStorage]  WITH CHECK ADD FOREIGN KEY([BottleRunID])
REFERENCES [dbo].[CiderBottles] ([BottleRunID])
GO
ALTER TABLE [dbo].[CidertoLBStorage]  WITH CHECK ADD FOREIGN KEY([CanRunID])
REFERENCES [dbo].[CiderCans] ([CanRunID])
GO
ALTER TABLE [dbo].[CidertoLBStorage]  WITH CHECK ADD FOREIGN KEY([KegRunID])
REFERENCES [dbo].[CiderKegs] ([KegRunID])
GO
ALTER TABLE [dbo].[CidertoRBStorage]  WITH CHECK ADD FOREIGN KEY([BottleRunID])
REFERENCES [dbo].[CiderBottles] ([BottleRunID])
GO
ALTER TABLE [dbo].[CidertoRBStorage]  WITH CHECK ADD FOREIGN KEY([CanRunID])
REFERENCES [dbo].[CiderCans] ([CanRunID])
GO
ALTER TABLE [dbo].[CidertoRBStorage]  WITH CHECK ADD FOREIGN KEY([KegRunID])
REFERENCES [dbo].[CiderKegs] ([KegRunID])
GO
ALTER TABLE [dbo].[CidertoTRBackRoom]  WITH CHECK ADD FOREIGN KEY([BottleRunID])
REFERENCES [dbo].[CiderBottles] ([BottleRunID])
GO
ALTER TABLE [dbo].[CidertoTRBackRoom]  WITH CHECK ADD FOREIGN KEY([CanRunID])
REFERENCES [dbo].[CiderCans] ([CanRunID])
GO
ALTER TABLE [dbo].[CidertoTRBackRoom]  WITH CHECK ADD FOREIGN KEY([KegRunID])
REFERENCES [dbo].[CiderKegs] ([KegRunID])
GO
ALTER TABLE [dbo].[CidertoTRDraft]  WITH CHECK ADD FOREIGN KEY([BatchID])
REFERENCES [dbo].[Batch] ([BatchID])
GO
/****** Object:  StoredProcedure [dbo].[ViewCannedVarieties]    Script Date: 4/23/2018 7:16:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ViewCannedVarieties]
AS
SELECT * FROM dbo.CannedVarieties
GO;

GO
USE [master]
GO
ALTER DATABASE [TandemStorage] SET  READ_WRITE 
GO
