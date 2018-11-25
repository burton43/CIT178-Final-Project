USE [TandemStorage]
GO

/****** Object:  StoredProcedure [dbo].[ViewCannedVarieties]    Script Date: 4/23/2018 7:19:29 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ViewCannedVarieties]
AS
SELECT * FROM dbo.CannedVarieties
GO;

GO


