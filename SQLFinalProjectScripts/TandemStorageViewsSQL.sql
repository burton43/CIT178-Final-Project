USE [TandemStorage]
GO
/****** Object:  View [dbo].[CannedVarieties]    Script Date: 4/23/2018 7:18:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CannedVarieties] AS 
SELECT CanRunID, #ofCanCases, CiderType
FROM CiderCans
JOIN Batch ON Batch.BatchID = CiderCans.BatchID;
GO
/****** Object:  View [dbo].[CurrentFermentingBatches]    Script Date: 4/23/2018 7:18:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CurrentFermentingBatches] AS
SELECT	BatchID, CiderType, TankDescription
FROM Batch
JOIN Fermentors ON Batch.FermentTankID = Fermentors.FermentTankID

GO
