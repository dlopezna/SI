USE [IGMIncidencias]
GO
/****** Objeto:  StoredProcedure [dbo].[paCountOrdenesActivas]    Fecha de la secuencia de comandos: 02/17/2009 17:56:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[paCountOrdenesActivas]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	SELECT COUNT(*) AS Expr1 FROM OrdenesTrabajo WHERE (FechaFin IS NULL)
	RETURN
