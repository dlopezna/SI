USE [IGMIncidencias]
GO
/****** Objeto:  StoredProcedure [dbo].[paCountIncidenciasActivas]    Fecha de la secuencia de comandos: 02/17/2009 17:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[paCountIncidenciasActivas]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	SELECT COUNT(*) AS Expr1 FROM Incidencias WHERE (FechaCierre IS NULL)
	RETURN
