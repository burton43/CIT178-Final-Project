USE [TandemStorage]
GO
/****** Object:  Table [dbo].[AppleStorage]    Script Date: 4/23/2018 7:17:47 PM ******/
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
/****** Object:  Table [dbo].[Batch]    Script Date: 4/23/2018 7:17:47 PM ******/
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
/****** Object:  Table [dbo].[CarbTanks]    Script Date: 4/23/2018 7:17:47 PM ******/
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
/****** Object:  Table [dbo].[CiderBottles]    Script Date: 4/23/2018 7:17:47 PM ******/
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
/****** Object:  Table [dbo].[CiderCans]    Script Date: 4/23/2018 7:17:47 PM ******/
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
/****** Object:  Table [dbo].[CiderKegs]    Script Date: 4/23/2018 7:17:47 PM ******/
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
/****** Object:  Table [dbo].[CidertoLBStorage]    Script Date: 4/23/2018 7:17:47 PM ******/
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
/****** Object:  Table [dbo].[CidertoRBStorage]    Script Date: 4/23/2018 7:17:47 PM ******/
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
/****** Object:  Table [dbo].[CidertoTRBackRoom]    Script Date: 4/23/2018 7:17:47 PM ******/
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
/****** Object:  Table [dbo].[CidertoTRDraft]    Script Date: 4/23/2018 7:17:47 PM ******/
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
/****** Object:  Table [dbo].[Fermentors]    Script Date: 4/23/2018 7:17:47 PM ******/
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
