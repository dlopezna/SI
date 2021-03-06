USE [IGMIncidencias]
/****** Object:  StoredProcedure [dbo].[paSeguimientoPlantas]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paSeguimientoPlantas]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paSeguimientoPlantas]
GO
/****** Object:  StoredProcedure [dbo].[paGetOrdenesTrabajoCerradas]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetOrdenesTrabajoCerradas]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paGetOrdenesTrabajoCerradas]
GO
/****** Object:  StoredProcedure [dbo].[paGetOrdenTrabajoByID]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetOrdenTrabajoByID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paGetOrdenTrabajoByID]
GO
/****** Object:  StoredProcedure [dbo].[paGetOrdenesTrabajo]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetOrdenesTrabajo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paGetOrdenesTrabajo]
GO
/****** Object:  StoredProcedure [dbo].[paOrdenTrabajoUPD]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paOrdenTrabajoUPD]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paOrdenTrabajoUPD]
GO
/****** Object:  StoredProcedure [dbo].[paOrdenTrabajoINS]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paOrdenTrabajoINS]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paOrdenTrabajoINS]
GO
/****** Object:  StoredProcedure [dbo].[paCrearIncidencia]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paCrearIncidencia]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paCrearIncidencia]
GO
/****** Object:  StoredProcedure [dbo].[paClasificacionIncidenciaDEL]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paClasificacionIncidenciaDEL]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paClasificacionIncidenciaDEL]
GO
/****** Object:  StoredProcedure [dbo].[paClasificacionIncidenciaUPD]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paClasificacionIncidenciaUPD]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paClasificacionIncidenciaUPD]
GO
/****** Object:  StoredProcedure [dbo].[paGetDefIncidenciaByID]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetDefIncidenciaByID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paGetDefIncidenciaByID]
GO
/****** Object:  StoredProcedure [dbo].[paGetIncidencias]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetIncidencias]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paGetIncidencias]
GO
/****** Object:  StoredProcedure [dbo].[paGruposIncidenciaDEL]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGruposIncidenciaDEL]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paGruposIncidenciaDEL]
GO
/****** Object:  StoredProcedure [dbo].[paGetDefIncidencias]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetDefIncidencias]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paGetDefIncidencias]
GO
/****** Object:  StoredProcedure [dbo].[paGruposIncidenciaUPD]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGruposIncidenciaUPD]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paGruposIncidenciaUPD]
GO
/****** Object:  StoredProcedure [dbo].[paGruposIncidenciaINS]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGruposIncidenciaINS]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paGruposIncidenciaINS]
GO
/****** Object:  StoredProcedure [dbo].[paGetIncidenciasbyGrupo]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetIncidenciasbyGrupo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paGetIncidenciasbyGrupo]
GO
/****** Object:  StoredProcedure [dbo].[paCrearString]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paCrearString]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paCrearString]
GO
/****** Object:  StoredProcedure [dbo].[paStringUPD]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paStringUPD]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paStringUPD]
GO
/****** Object:  StoredProcedure [dbo].[paTareasDEL]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paTareasDEL]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paTareasDEL]
GO
/****** Object:  StoredProcedure [dbo].[paTareasUPD]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paTareasUPD]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paTareasUPD]
GO
/****** Object:  StoredProcedure [dbo].[paTareasINS]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paTareasINS]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paTareasINS]
GO
/****** Object:  StoredProcedure [dbo].[paGetTareas]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetTareas]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paGetTareas]
GO
/****** Object:  StoredProcedure [dbo].[paPlantasUPD]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paPlantasUPD]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paPlantasUPD]
GO
/****** Object:  StoredProcedure [dbo].[paCrearInversor]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paCrearInversor]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paCrearInversor]
GO
/****** Object:  StoredProcedure [dbo].[paInversorUPD]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paInversorUPD]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paInversorUPD]
GO
/****** Object:  StoredProcedure [dbo].[paGetInversorByID]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetInversorByID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paGetInversorByID]
GO
/****** Object:  StoredProcedure [dbo].[paGetInversores]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetInversores]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paGetInversores]
GO
/****** Object:  Table [dbo].[SeguimientoPlantas]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SeguimientoPlantas]') AND type in (N'U'))
DROP TABLE [dbo].[SeguimientoPlantas]
GO
/****** Object:  Table [dbo].[OrdenesTrabajo]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrdenesTrabajo]') AND type in (N'U'))
DROP TABLE [dbo].[OrdenesTrabajo]
GO
/****** Object:  Table [dbo].[Incidencias]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Incidencias]') AND type in (N'U'))
DROP TABLE [dbo].[Incidencias]
GO
/****** Object:  Table [dbo].[ClasificacionIncidencias]    Script Date: 02/16/2009 23:34:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClasificacionIncidencias]') AND type in (N'U'))
DROP TABLE [dbo].[ClasificacionIncidencias]
GO
/****** Object:  Table [dbo].[TrabajosMotivos]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TrabajosMotivos]') AND type in (N'U'))
DROP TABLE [dbo].[TrabajosMotivos]
GO
/****** Object:  Table [dbo].[Trabajos]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Trabajos]') AND type in (N'U'))
DROP TABLE [dbo].[Trabajos]
GO
/****** Object:  Table [dbo].[GrupoIncidencias]    Script Date: 02/16/2009 23:34:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GrupoIncidencias]') AND type in (N'U'))
DROP TABLE [dbo].[GrupoIncidencias]
GO
/****** Object:  StoredProcedure [dbo].[paGetSeguimiento]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetSeguimiento]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paGetSeguimiento]
GO
/****** Object:  StoredProcedure [dbo].[paClasificacionIncidenciaINS]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paClasificacionIncidenciaINS]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paClasificacionIncidenciaINS]
GO
/****** Object:  StoredProcedure [dbo].[paNivelesIncidenciaINS]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paNivelesIncidenciaINS]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paNivelesIncidenciaINS]
GO
/****** Object:  StoredProcedure [dbo].[paNivelesIncidenciaUPD]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paNivelesIncidenciaUPD]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paNivelesIncidenciaUPD]
GO
/****** Object:  StoredProcedure [dbo].[paNivelesIncidenciaDEL]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paNivelesIncidenciaDEL]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paNivelesIncidenciaDEL]
GO
/****** Object:  StoredProcedure [dbo].[paSeguidorUPD]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paSeguidorUPD]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paSeguidorUPD]
GO
/****** Object:  StoredProcedure [dbo].[paCrearSeguidor]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paCrearSeguidor]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paCrearSeguidor]
GO
/****** Object:  Table [dbo].[Strings]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Strings]') AND type in (N'U'))
DROP TABLE [dbo].[Strings]
GO
/****** Object:  Table [dbo].[Seguidores]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Seguidores]') AND type in (N'U'))
DROP TABLE [dbo].[Seguidores]
GO
/****** Object:  StoredProcedure [dbo].[paPanelUPD]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paPanelUPD]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paPanelUPD]
GO
/****** Object:  StoredProcedure [dbo].[paEliminarPanel]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paEliminarPanel]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paEliminarPanel]
GO
/****** Object:  StoredProcedure [dbo].[paEliminarSeguidor]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paEliminarSeguidor]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paEliminarSeguidor]
GO
/****** Object:  StoredProcedure [dbo].[paEliminarString]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paEliminarString]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paEliminarString]
GO
/****** Object:  StoredProcedure [dbo].[paEliminarPlanta]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paEliminarPlanta]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paEliminarPlanta]
GO
/****** Object:  StoredProcedure [dbo].[paCrearPlanta]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paCrearPlanta]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paCrearPlanta]
GO
/****** Object:  StoredProcedure [dbo].[paCrearPanel]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paCrearPanel]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paCrearPanel]
GO
/****** Object:  StoredProcedure [dbo].[paEliminarInversor]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paEliminarInversor]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paEliminarInversor]
GO
/****** Object:  Table [dbo].[Tareas]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tareas]') AND type in (N'U'))
DROP TABLE [dbo].[Tareas]
GO
/****** Object:  Table [dbo].[NivelesIncidencia]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NivelesIncidencia]') AND type in (N'U'))
DROP TABLE [dbo].[NivelesIncidencia]
GO
/****** Object:  Table [dbo].[AccionReparacion]    Script Date: 02/16/2009 23:34:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AccionReparacion]') AND type in (N'U'))
DROP TABLE [dbo].[AccionReparacion]
GO
/****** Object:  Table [dbo].[Plantas]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Plantas]') AND type in (N'U'))
DROP TABLE [dbo].[Plantas]
GO
/****** Object:  Table [dbo].[Inversores]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Inversores]') AND type in (N'U'))
DROP TABLE [dbo].[Inversores]
GO
/****** Object:  Table [dbo].[Paneles]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Paneles]') AND type in (N'U'))
DROP TABLE [dbo].[Paneles]
GO
/****** Object:  Default [DF_AccionReparacion_idAccion]    Script Date: 02/16/2009 23:34:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_AccionReparacion_idAccion]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccionReparacion]'))
Begin
ALTER TABLE [dbo].[AccionReparacion] DROP CONSTRAINT [DF_AccionReparacion_idAccion]

End
GO
/****** Object:  Default [DF_AccionReparacion_orden]    Script Date: 02/16/2009 23:34:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_AccionReparacion_orden]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccionReparacion]'))
Begin
ALTER TABLE [dbo].[AccionReparacion] DROP CONSTRAINT [DF_AccionReparacion_orden]

End
GO
/****** Object:  Default [DF_ClasificacionIncidencias_ID]    Script Date: 02/16/2009 23:34:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_ClasificacionIncidencias_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClasificacionIncidencias]'))
Begin
ALTER TABLE [dbo].[ClasificacionIncidencias] DROP CONSTRAINT [DF_ClasificacionIncidencias_ID]

End
GO
/****** Object:  Default [DF_ClasificacionIncidencias_Coste]    Script Date: 02/16/2009 23:34:42 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_ClasificacionIncidencias_Coste]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClasificacionIncidencias]'))
Begin
ALTER TABLE [dbo].[ClasificacionIncidencias] DROP CONSTRAINT [DF_ClasificacionIncidencias_Coste]

End
GO
/****** Object:  Default [DF_Incidencias_ID]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Incidencias_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Incidencias]'))
Begin
ALTER TABLE [dbo].[Incidencias] DROP CONSTRAINT [DF_Incidencias_ID]

End
GO
/****** Object:  Default [DF_OrdenesTrabajo_idOrden]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_OrdenesTrabajo_idOrden]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrdenesTrabajo]'))
Begin
ALTER TABLE [dbo].[OrdenesTrabajo] DROP CONSTRAINT [DF_OrdenesTrabajo_idOrden]

End
GO
/****** Object:  Default [DF_Tareas_idTarea]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Tareas_idTarea]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tareas]'))
Begin
ALTER TABLE [dbo].[Tareas] DROP CONSTRAINT [DF_Tareas_idTarea]

End
GO
/****** Object:  Default [DF_Tareas_Habilitada]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Tareas_Habilitada]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tareas]'))
Begin
ALTER TABLE [dbo].[Tareas] DROP CONSTRAINT [DF_Tareas_Habilitada]

End
GO
/****** Object:  Default [DF_Trabajos_idTrabajo]    Script Date: 02/16/2009 23:34:43 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Trabajos_idTrabajo]') AND parent_object_id = OBJECT_ID(N'[dbo].[Trabajos]'))
Begin
ALTER TABLE [dbo].[Trabajos] DROP CONSTRAINT [DF_Trabajos_idTrabajo]

End
GO
/****** Object:  Table [dbo].[Paneles]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Paneles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Paneles](
	[Nserie] [nchar](15) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[Descripcion] [nvarchar](1000) COLLATE Modern_Spanish_CI_AS NULL,
	[Pmax] [decimal](18, 2) NOT NULL,
	[Ipm] [decimal](18, 2) NOT NULL,
	[FechaAlta] [datetime] NULL,
	[FechaBaja] [datetime] NULL,
	[UltimaRevision] [datetime] NULL,
	[UltimaIncidencia] [datetime] NULL,
	[ID_SEGUIDOR] [nchar](15) COLLATE Modern_Spanish_CI_AS NOT NULL,
 CONSTRAINT [PK_Paneles] PRIMARY KEY CLUSTERED 
(
	[Nserie] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Paneles] ([Nserie], [Descripcion], [Pmax], [Ipm], [FechaAlta], [FechaBaja], [UltimaRevision], [UltimaIncidencia], [ID_SEGUIDOR]) VALUES (N'PANEL          ', N'', CAST(56.00 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), CAST(0x00009BA600041DE0 AS DateTime), NULL, NULL, NULL, N'SEG1234        ')
INSERT [dbo].[Paneles] ([Nserie], [Descripcion], [Pmax], [Ipm], [FechaAlta], [FechaBaja], [UltimaRevision], [UltimaIncidencia], [ID_SEGUIDOR]) VALUES (N'PANEL 1        ', N'', CAST(78.00 AS Decimal(18, 2)), CAST(77.00 AS Decimal(18, 2)), CAST(0x00009BA800007265 AS DateTime), CAST(0x00009BAB0132EE26 AS DateTime), NULL, NULL, N'SEG-01-S1      ')
INSERT [dbo].[Paneles] ([Nserie], [Descripcion], [Pmax], [Ipm], [FechaAlta], [FechaBaja], [UltimaRevision], [UltimaIncidencia], [ID_SEGUIDOR]) VALUES (N'PANEL 2        ', N'', CAST(78.00 AS Decimal(18, 2)), CAST(77.00 AS Decimal(18, 2)), CAST(0x00009BA80000819D AS DateTime), NULL, NULL, NULL, N'SEG-01-S2      ')
/****** Object:  Table [dbo].[Inversores]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Inversores]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Inversores](
	[Nserie] [nchar](15) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[Potencia] [decimal](18, 2) NULL,
	[FechaAlta] [datetime] NULL,
	[FechaBaja] [datetime] NULL,
	[UltimaRevision] [datetime] NULL,
	[UltimaIncidencia] [datetime] NULL,
	[ID_PLANTA] [nchar](15) COLLATE Modern_Spanish_CI_AS NULL,
	[EnlaceSUNNY] [nvarchar](250) COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK_Inversores] PRIMARY KEY CLUSTERED 
(
	[Nserie] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Inversores] ([Nserie], [Potencia], [FechaAlta], [FechaBaja], [UltimaRevision], [UltimaIncidencia], [ID_PLANTA], [EnlaceSUNNY]) VALUES (N'SCC01-24116    ', CAST(600.00 AS Decimal(18, 2)), CAST(0x00009BAB0182AAFF AS DateTime), NULL, NULL, NULL, N'C1-01-01       ', N'http://www.sunnyportal.com/PublicPage.aspx?page=ced58d3b-ec55-48f7-afc1-231b888d6eb1')
INSERT [dbo].[Inversores] ([Nserie], [Potencia], [FechaAlta], [FechaBaja], [UltimaRevision], [UltimaIncidencia], [ID_PLANTA], [EnlaceSUNNY]) VALUES (N'SCC02-23179    ', CAST(600.00 AS Decimal(18, 2)), CAST(0x00009BB0011F25A8 AS DateTime), NULL, CAST(0x00009BB10173F263 AS DateTime), CAST(0x00009BB100000000 AS DateTime), N'C1-02-02       ', N'http://www.sunnyportal.com/PublicPage.aspx?page=7d3628bf-5b6e-4c47-90e4-9df75e18d9d4')
INSERT [dbo].[Inversores] ([Nserie], [Potencia], [FechaAlta], [FechaBaja], [UltimaRevision], [UltimaIncidencia], [ID_PLANTA], [EnlaceSUNNY]) VALUES (N'SCC03-24111    ', CAST(600.00 AS Decimal(18, 2)), CAST(0x00009BB0011F7195 AS DateTime), NULL, NULL, NULL, N'C1-03-03       ', N'http://www.sunnyportal.com/PublicPage.aspx?page=b241d480-500c-4dfb-a23d-a3d85dae8e35')
INSERT [dbo].[Inversores] ([Nserie], [Potencia], [FechaAlta], [FechaBaja], [UltimaRevision], [UltimaIncidencia], [ID_PLANTA], [EnlaceSUNNY]) VALUES (N'SCC04-24113    ', CAST(600.00 AS Decimal(18, 2)), CAST(0x00009BB100AF5972 AS DateTime), NULL, NULL, NULL, N'C1-04-04       ', N'')
/****** Object:  Table [dbo].[Plantas]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Plantas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Plantas](
	[Nserie] [nchar](15) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[Descripcion] [varchar](255) COLLATE Modern_Spanish_CI_AS NULL,
	[FechaAlta] [datetime] NULL,
	[E_Total] [decimal](18, 2) NULL,
	[UltimaRevision] [datetime] NULL,
	[UltimaIncidencia] [datetime] NULL,
	[CIF] [nchar](9) COLLATE Modern_Spanish_CI_AS NULL,
	[Telefono] [nchar](9) COLLATE Modern_Spanish_CI_AS NULL,
	[FechaBaja] [datetime] NULL,
 CONSTRAINT [PK_Plantas] PRIMARY KEY CLUSTERED 
(
	[Nserie] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Plantas] ([Nserie], [Descripcion], [FechaAlta], [E_Total], [UltimaRevision], [UltimaIncidencia], [CIF], [Telefono], [FechaBaja]) VALUES (N'C1-01-01       ', N'CALAÑAS FOTOVOLTAICA, S.L.', CAST(0x00009B9E015FA144 AS DateTime), CAST(642.34 AS Decimal(18, 2)), CAST(0x00009BAB013454B8 AS DateTime), CAST(0x00009BA100000000 AS DateTime), N'B91502443', N'650243985', NULL)
INSERT [dbo].[Plantas] ([Nserie], [Descripcion], [FechaAlta], [E_Total], [UltimaRevision], [UltimaIncidencia], [CIF], [Telefono], [FechaBaja]) VALUES (N'C1-02-02       ', N'CALAÑAS FOTOVOLTAICA UNO, S.L.', CAST(0x00009B9F011C4841 AS DateTime), CAST(383.36 AS Decimal(18, 2)), CAST(0x00009BA3009CFADA AS DateTime), NULL, N'B91506139', N'626940875', NULL)
INSERT [dbo].[Plantas] ([Nserie], [Descripcion], [FechaAlta], [E_Total], [UltimaRevision], [UltimaIncidencia], [CIF], [Telefono], [FechaBaja]) VALUES (N'C1-03-03       ', N'CALAÑAS FOTOVOLTAICA TRES, S.L.', CAST(0x00009B9F0128A8B9 AS DateTime), CAST(379.40 AS Decimal(18, 2)), CAST(0x00009BA700081415 AS DateTime), CAST(0x00009BA000000000 AS DateTime), N'b        ', N'         ', NULL)
INSERT [dbo].[Plantas] ([Nserie], [Descripcion], [FechaAlta], [E_Total], [UltimaRevision], [UltimaIncidencia], [CIF], [Telefono], [FechaBaja]) VALUES (N'C1-04-04       ', N'CALAÑAS FOTOVOLTAICA CUATRO, S.L.', CAST(0x00009B9F0128C875 AS DateTime), CAST(221.00 AS Decimal(18, 2)), CAST(0x00009BA300A66F7C AS DateTime), CAST(0x00009BA000000000 AS DateTime), N'b        ', N'6        ', NULL)
INSERT [dbo].[Plantas] ([Nserie], [Descripcion], [FechaAlta], [E_Total], [UltimaRevision], [UltimaIncidencia], [CIF], [Telefono], [FechaBaja]) VALUES (N'C1-05-05       ', N'CALAÑAS FOTOVOLTAICA CINCO, S.L.', CAST(0x00009B9F0128D1A8 AS DateTime), CAST(228.00 AS Decimal(18, 2)), CAST(0x00009BA300A9AEEA AS DateTime), CAST(0x00009BA100000000 AS DateTime), N'b        ', N'6        ', NULL)
INSERT [dbo].[Plantas] ([Nserie], [Descripcion], [FechaAlta], [E_Total], [UltimaRevision], [UltimaIncidencia], [CIF], [Telefono], [FechaBaja]) VALUES (N'C1-06-06       ', N'CALAÑAS FOTOVOLTAICA SEIS, S.L.', CAST(0x00009B9F0128D7CD AS DateTime), CAST(172.00 AS Decimal(18, 2)), CAST(0x00009BA300AA348F AS DateTime), CAST(0x00009BA100000000 AS DateTime), N'b        ', N'6        ', NULL)
INSERT [dbo].[Plantas] ([Nserie], [Descripcion], [FechaAlta], [E_Total], [UltimaRevision], [UltimaIncidencia], [CIF], [Telefono], [FechaBaja]) VALUES (N'C1-07-07       ', N'C', CAST(0x00009B9F0128DDB5 AS DateTime), CAST(166.00 AS Decimal(18, 2)), CAST(0x00009BA300BE331B AS DateTime), CAST(0x00009B9300000000 AS DateTime), N'b        ', N'6        ', NULL)
INSERT [dbo].[Plantas] ([Nserie], [Descripcion], [FechaAlta], [E_Total], [UltimaRevision], [UltimaIncidencia], [CIF], [Telefono], [FechaBaja]) VALUES (N'C1-08-08       ', N'C', CAST(0x00009B9F0128E3C3 AS DateTime), CAST(284.00 AS Decimal(18, 2)), CAST(0x00009BA4018774E2 AS DateTime), NULL, N'b        ', N'6        ', NULL)
INSERT [dbo].[Plantas] ([Nserie], [Descripcion], [FechaAlta], [E_Total], [UltimaRevision], [UltimaIncidencia], [CIF], [Telefono], [FechaBaja]) VALUES (N'C1-09-09       ', N'C', CAST(0x00009B9F0128E830 AS DateTime), CAST(209.00 AS Decimal(18, 2)), CAST(0x00009BA500031B61 AS DateTime), CAST(0x00009BA500000000 AS DateTime), N'b        ', N'6        ', NULL)
INSERT [dbo].[Plantas] ([Nserie], [Descripcion], [FechaAlta], [E_Total], [UltimaRevision], [UltimaIncidencia], [CIF], [Telefono], [FechaBaja]) VALUES (N'C1-10-10       ', N'C', CAST(0x00009B9F0128F3C5 AS DateTime), CAST(118.00 AS Decimal(18, 2)), CAST(0x00009BA5000160AA AS DateTime), CAST(0x00009BA300000000 AS DateTime), N'b        ', N'6        ', NULL)
INSERT [dbo].[Plantas] ([Nserie], [Descripcion], [FechaAlta], [E_Total], [UltimaRevision], [UltimaIncidencia], [CIF], [Telefono], [FechaBaja]) VALUES (N'C1-11-11       ', N'C', CAST(0x00009B9F0128FFA6 AS DateTime), CAST(190.00 AS Decimal(18, 2)), CAST(0x00009BA401870E46 AS DateTime), CAST(0x00009BA300000000 AS DateTime), N'b        ', N'6        ', NULL)
INSERT [dbo].[Plantas] ([Nserie], [Descripcion], [FechaAlta], [E_Total], [UltimaRevision], [UltimaIncidencia], [CIF], [Telefono], [FechaBaja]) VALUES (N'C1-12-12       ', N'C', CAST(0x00009B9F012907B3 AS DateTime), CAST(293.00 AS Decimal(18, 2)), CAST(0x00009BA500081668 AS DateTime), CAST(0x00009BA300000000 AS DateTime), N'b        ', N'6        ', NULL)
INSERT [dbo].[Plantas] ([Nserie], [Descripcion], [FechaAlta], [E_Total], [UltimaRevision], [UltimaIncidencia], [CIF], [Telefono], [FechaBaja]) VALUES (N'C1-13-13       ', N'CALAÑAS FOTOVOLTAICA TRECE, S.L.', CAST(0x00009BA500FA24A0 AS DateTime), CAST(425.00 AS Decimal(18, 2)), NULL, NULL, N'B91504536', N'954123086', NULL)
INSERT [dbo].[Plantas] ([Nserie], [Descripcion], [FechaAlta], [E_Total], [UltimaRevision], [UltimaIncidencia], [CIF], [Telefono], [FechaBaja]) VALUES (N'C1-14-14       ', N'CALAÑAS FOTOVOLTAICA CATORCE, S.L. ', CAST(0x00009BA80001545B AS DateTime), CAST(280.87 AS Decimal(18, 2)), CAST(0x00009BA80001DD78 AS DateTime), NULL, N'         ', N'         ', NULL)
/****** Object:  Table [dbo].[AccionReparacion]    Script Date: 02/16/2009 23:34:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AccionReparacion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AccionReparacion](
	[idAccion] [uniqueidentifier] NOT NULL,
	[idTipoIncidencia] [uniqueidentifier] NOT NULL,
	[Tarea] [nvarchar](max) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[orden] [int] NULL,
 CONSTRAINT [PK_AccionReparacion] PRIMARY KEY CLUSTERED 
(
	[idAccion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[NivelesIncidencia]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NivelesIncidencia]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NivelesIncidencia](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[Treparacion] [int] NOT NULL,
 CONSTRAINT [PK_NivelesIncidencia] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[NivelesIncidencia] ON
INSERT [dbo].[NivelesIncidencia] ([ID], [Descripcion], [Treparacion]) VALUES (4, N'ALTO', 10)
INSERT [dbo].[NivelesIncidencia] ([ID], [Descripcion], [Treparacion]) VALUES (5, N'MEDIO', 48)
INSERT [dbo].[NivelesIncidencia] ([ID], [Descripcion], [Treparacion]) VALUES (6, N'BAJO', 96)
SET IDENTITY_INSERT [dbo].[NivelesIncidencia] OFF
/****** Object:  Table [dbo].[Tareas]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tareas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tareas](
	[idTarea] [uniqueidentifier] NOT NULL,
	[Descripcion] [nvarchar](max) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[Periodo] [int] NOT NULL,
	[Habilitada] [bit] NOT NULL,
	[TipoComponente] [int] NULL,
 CONSTRAINT [PK_Tareas] PRIMARY KEY CLUSTERED 
(
	[idTarea] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Tareas] ([idTarea], [Descripcion], [Periodo], [Habilitada], [TipoComponente]) VALUES (N'5feafaf5-c36f-46e8-bb28-23034b33b99f', N'Reapriete de tornilleríass', 12, 1, 7)
INSERT [dbo].[Tareas] ([idTarea], [Descripcion], [Periodo], [Habilitada], [TipoComponente]) VALUES (N'38d9f717-a4e2-4c81-a5f6-47e8352257e4', N'JOR', 1, 1, 7)
INSERT [dbo].[Tareas] ([idTarea], [Descripcion], [Periodo], [Habilitada], [TipoComponente]) VALUES (N'aef1203f-2cca-4299-9ccd-4e86e822717a', N'Prueba', 12, 0, 4)
INSERT [dbo].[Tareas] ([idTarea], [Descripcion], [Periodo], [Habilitada], [TipoComponente]) VALUES (N'00097b3d-bba8-4afd-a932-520d27b7c52b', N'Prueba', 0, 1, 0)
INSERT [dbo].[Tareas] ([idTarea], [Descripcion], [Periodo], [Habilitada], [TipoComponente]) VALUES (N'acaf38ce-7078-44e4-861b-787b8f657b79', N'Reapriete de tornillería', 12, 1, 7)
INSERT [dbo].[Tareas] ([idTarea], [Descripcion], [Periodo], [Habilitada], [TipoComponente]) VALUES (N'5af36879-2139-4856-ad5f-95f4fc3e5e98', N'Verificar ángulos del seguidor', 12, 1, 6)
INSERT [dbo].[Tareas] ([idTarea], [Descripcion], [Periodo], [Habilitada], [TipoComponente]) VALUES (N'43d9a7f9-9742-41b5-99a1-aaf6cc407896', N'Reapriete de tornillería', 12, 1, 5)
INSERT [dbo].[Tareas] ([idTarea], [Descripcion], [Periodo], [Habilitada], [TipoComponente]) VALUES (N'31e88702-bf6f-4946-bc43-e10b80d0f906', N'Reapriete de tornillería', 12, 1, 4)
/****** Object:  StoredProcedure [dbo].[paEliminarInversor]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paEliminarInversor]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paEliminarInversor]
(
	@nSerie nchar(15)
	)
AS
	/* SET NOCOUNT ON */
	DELETE FROM INVERSORES WHERE NSerie=@nSerie
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[paCrearPanel]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paCrearPanel]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paCrearPanel]
	(
	@nserie nchar(15),
	@descripcion nvarchar(50),
	@fechaAlta datetime,
	@id_seguidor nchar(15),
	@pmax decimal,
	@ipm decimal
	)
	
AS
	/* SET NOCOUNT ON */
	
	INSERT INTO PANELES (Nserie,Descripcion,FechaAlta,ID_SEGUIDOR,Pmax,Ipm) 
		values (@nserie,@descripcion,@fechaAlta,@id_seguidor,@pmax,@ipm)
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[paCrearPlanta]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paCrearPlanta]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paCrearPlanta]
	(
	@nserie nchar(15),
	@descPlanta nvarchar(50),
	@fechaAlta datetime,
	@cif nchar(9),
	@tlf nchar(9),
	@e_total decimal
	)
	
AS
	/* SET NOCOUNT ON */
	
	INSERT INTO PLANTAS (Nserie,Descripcion,FechaAlta,cif,e_total,telefono) 
			values (@nserie,@descPlanta,@fechaAlta,@cif,@e_total,@tlf)
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[paEliminarPlanta]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paEliminarPlanta]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paEliminarPlanta]
(
	@nserie nchar(15)
	)
AS
	/* SET NOCOUNT ON */
	DELETE FROM PLANTAS WHERE NSerie=@nSerie
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[paEliminarString]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paEliminarString]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paEliminarString]
(
	@nserie nchar(15)
	)
AS
	/* SET NOCOUNT ON */
	DELETE FROM STRINGS WHERE NSerie=@nserie
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[paEliminarSeguidor]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paEliminarSeguidor]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paEliminarSeguidor]
(
	@nserie nchar(15)
	)
AS
	/* SET NOCOUNT ON */
	DELETE FROM SEGUIDORES WHERE NSerie=@nserie
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[paEliminarPanel]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paEliminarPanel]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paEliminarPanel]
(
	@nserie nchar(15)
	)
AS
	/* SET NOCOUNT ON */
	DELETE FROM PANELES WHERE NSerie=@nserie
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[paPanelUPD]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paPanelUPD]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paPanelUPD]
	
	(
	@nserie nchar(15),
	@descripcion nvarchar(1000),
	@ultimaincidencia datetime = null,
	@ultimarevision datetime = null,
	@fechabaja datetime = null,
	@id_seguidor nchar(15), 
	@pmax decimal,
	@ipm decimal
	)
	
AS
-- MANTENIMIENTO
if(@ultimaincidencia is null  and @ultimarevision is null and @fechabaja is null)
UPDATE  PANELES set Descripcion = @descripcion, ID_SEGUIDOR = @id_seguidor, PMAX = @pmax, IPM = @ipm
		where nserie= @nserie;
-- SEGUIMIENTO
else if (@fechabaja is null)
	UPDATE  PANELES set ultimaincidencia=@ultimaincidencia, ultimarevision = @ultimarevision
		where nserie= @nserie;
-- BAJA
else
UPDATE  PANELES set FECHABAJA=@fechabaja
		where nserie= @nserie;
	RETURN
' 
END
GO
/****** Object:  Table [dbo].[Seguidores]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Seguidores]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Seguidores](
	[NSerie] [nchar](15) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[Descripcion] [nvarchar](1000) COLLATE Modern_Spanish_CI_AS NULL,
	[FechaAlta] [datetime] NULL,
	[FechaBaja] [datetime] NULL,
	[UltimaIncidencia] [datetime] NULL,
	[UltimaRevision] [datetime] NULL,
	[ID_STRING] [nchar](15) COLLATE Modern_Spanish_CI_AS NOT NULL,
 CONSTRAINT [PK_Seguidores] PRIMARY KEY CLUSTERED 
(
	[NSerie] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Seguidores] ([NSerie], [Descripcion], [FechaAlta], [FechaBaja], [UltimaIncidencia], [UltimaRevision], [ID_STRING]) VALUES (N'SEG-01-S1      ', N'', CAST(0x00009BA800000206 AS DateTime), NULL, NULL, NULL, N'STRING1        ')
INSERT [dbo].[Seguidores] ([NSerie], [Descripcion], [FechaAlta], [FechaBaja], [UltimaIncidencia], [UltimaRevision], [ID_STRING]) VALUES (N'SEG-01-S2      ', N'', CAST(0x00009BA800000B5D AS DateTime), NULL, NULL, NULL, N'STRING1        ')
INSERT [dbo].[Seguidores] ([NSerie], [Descripcion], [FechaAlta], [FechaBaja], [UltimaIncidencia], [UltimaRevision], [ID_STRING]) VALUES (N'SEG-01-S3      ', N'', CAST(0x00009BA800000EF4 AS DateTime), NULL, NULL, NULL, N'STRING1        ')
INSERT [dbo].[Seguidores] ([NSerie], [Descripcion], [FechaAlta], [FechaBaja], [UltimaIncidencia], [UltimaRevision], [ID_STRING]) VALUES (N'SEG-02-S1      ', N'', CAST(0x00009BA80000461F AS DateTime), NULL, NULL, NULL, N'STRING1        ')
INSERT [dbo].[Seguidores] ([NSerie], [Descripcion], [FechaAlta], [FechaBaja], [UltimaIncidencia], [UltimaRevision], [ID_STRING]) VALUES (N'SEG-02-S2      ', N'', CAST(0x00009BA8000051A4 AS DateTime), NULL, NULL, NULL, N'STRING1        ')
INSERT [dbo].[Seguidores] ([NSerie], [Descripcion], [FechaAlta], [FechaBaja], [UltimaIncidencia], [UltimaRevision], [ID_STRING]) VALUES (N'SEG1234        ', N'', CAST(0x00009BA600040319 AS DateTime), NULL, NULL, NULL, N'STRING1        ')
/****** Object:  Table [dbo].[Strings]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Strings]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Strings](
	[Nserie] [nchar](15) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[Descripcion] [nvarchar](1000) COLLATE Modern_Spanish_CI_AS NULL,
	[FechaAlta] [datetime] NULL,
	[FechaBaja] [datetime] NULL,
	[UltimaIncidencia] [datetime] NULL,
	[UltimaRevision] [datetime] NULL,
	[ID_INVERSOR] [nchar](15) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[CANAL1] [bit] NULL,
	[CANAL2] [bit] NULL,
	[CANAL3] [bit] NULL,
	[CANAL4] [bit] NULL,
	[CANAL5] [bit] NULL,
	[CANAL6] [bit] NULL,
	[CANAL7] [bit] NULL,
	[CANAL8] [bit] NULL,
	[CANAL9] [bit] NULL,
	[CANAL10] [bit] NULL,
	[CANAL11] [bit] NULL,
	[CANAL12] [bit] NULL,
	[CANAL13] [bit] NULL,
	[CANAL14] [bit] NULL,
	[CANAL15] [bit] NULL,
	[CANAL16] [bit] NULL,
 CONSTRAINT [PK_Strings] PRIMARY KEY CLUSTERED 
(
	[Nserie] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Strings] ([Nserie], [Descripcion], [FechaAlta], [FechaBaja], [UltimaIncidencia], [UltimaRevision], [ID_INVERSOR], [CANAL1], [CANAL2], [CANAL3], [CANAL4], [CANAL5], [CANAL6], [CANAL7], [CANAL8], [CANAL9], [CANAL10], [CANAL11], [CANAL12], [CANAL13], [CANAL14], [CANAL15], [CANAL16]) VALUES (N'STRING1        ', N'', CAST(0x00009BA701819975 AS DateTime), NULL, NULL, NULL, N'SCC01-12345    ', 1, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0, 1)
INSERT [dbo].[Strings] ([Nserie], [Descripcion], [FechaAlta], [FechaBaja], [UltimaIncidencia], [UltimaRevision], [ID_INVERSOR], [CANAL1], [CANAL2], [CANAL3], [CANAL4], [CANAL5], [CANAL6], [CANAL7], [CANAL8], [CANAL9], [CANAL10], [CANAL11], [CANAL12], [CANAL13], [CANAL14], [CANAL15], [CANAL16]) VALUES (N'STRING2        ', N'', CAST(0x00009BA7018ACEC5 AS DateTime), NULL, NULL, NULL, N'SCC01-12345    ', 1, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0, 1)
INSERT [dbo].[Strings] ([Nserie], [Descripcion], [FechaAlta], [FechaBaja], [UltimaIncidencia], [UltimaRevision], [ID_INVERSOR], [CANAL1], [CANAL2], [CANAL3], [CANAL4], [CANAL5], [CANAL6], [CANAL7], [CANAL8], [CANAL9], [CANAL10], [CANAL11], [CANAL12], [CANAL13], [CANAL14], [CANAL15], [CANAL16]) VALUES (N'STRING3        ', N'', CAST(0x00009BA7018B0791 AS DateTime), NULL, NULL, NULL, N'SCC01-12345    ', 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1)
/****** Object:  StoredProcedure [dbo].[paCrearSeguidor]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paCrearSeguidor]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paCrearSeguidor]
	(
	@nserie nchar(15),
	@descseguidor nvarchar(50),
	@fechaalta datetime,
	@id_string nchar(15)
	)
	
AS
	/* SET NOCOUNT ON */
	
	INSERT INTO SEGUIDORES (Nserie,Descripcion,FechaAlta,ID_STRING) values (@nSerie,@descseguidor,@fechaalta,@id_string)
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[paSeguidorUPD]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paSeguidorUPD]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paSeguidorUPD]
	
	(
	@nserie nchar(15),
	@descripcion nvarchar(1000),
	@ultimaincidencia datetime=null,
	@ultimarevision datetime=null,
	@fechabaja datetime=null,
	@id_string nchar(15)
	)
	
AS
-- MANTENIMIENTO
if(@ultimaincidencia is null  and @ultimarevision is null and @fechabaja is null)
UPDATE  SEGUIDORES set descripcion = @descripcion, ID_STRING = @id_string
		where nserie= @nserie;
-- SEGUIMIENTO
else if (@fechabaja is null)
	UPDATE  SEGUIDORES set descripcion = @descripcion, ultimarevision = @ultimarevision,
		ultimaincidencia=@ultimaincidencia
		where nserie= @nserie;
-- BAJA
else
UPDATE  SEGUIDORES set FECHABAJA=@fechabaja
		where nserie= @nserie;
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[paNivelesIncidenciaDEL]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paNivelesIncidenciaDEL]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paNivelesIncidenciaDEL]
	
	(
	@id int
	)
	
AS
	DELETE FROM NivelesIncidencia 
	WHERE id = @id
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[paNivelesIncidenciaUPD]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paNivelesIncidenciaUPD]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paNivelesIncidenciaUPD]
	
	(
	@id int,
	@descripcion nvarchar(50),
	@duracion int
	)
	
AS
	UPDATE NivelesIncidencia set Descripcion = @descripcion, treparacion = @duracion
		where id = @id
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[paNivelesIncidenciaINS]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paNivelesIncidenciaINS]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paNivelesIncidenciaINS]
	
	(
	@descripcion nvarchar(50),
	@duracion int
	)
	
AS
	INSERT INTO NivelesIncidencia (Descripcion, Treparacion) VALUES (@descripcion, @duracion)
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[paClasificacionIncidenciaINS]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paClasificacionIncidenciaINS]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paClasificacionIncidenciaINS]
	(
	@definicion nvarchar(255),
	@coste decimal(18,2),
	@idnivel int,
	@idgrupo int
	)
AS
	
	INSERT INTO ClasificacionIncidencias (Definicion, Coste, idNivel, idGrupo) 
		VALUES (@definicion,@coste, @idnivel, @idgrupo)
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[paGetSeguimiento]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetSeguimiento]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paGetSeguimiento]
	(
	@finicio datetime=null,
	@ffinal datetime=null,
	@nserie nchar(15)
	)
AS
	
	
if(@finicio is null  and @ffinal is null )
SELECT * FROM SEGUIMIENTOPLANTAS WHERE PLANTA = @nserie
else if(@ffinal is null)
SELECT * FROM SEGUIMIENTOPLANTAS WHERE 
	PLANTA = @nserie and (FECHASEGUIMIENTO >= @finicio)
else if (@finicio is null)
SELECT * FROM SEGUIMIENTOPLANTAS WHERE 
	PLANTA = @nserie and (FECHASEGUIMIENTO <= @ffinal)
else
SELECT * FROM SEGUIMIENTOPLANTAS WHERE 
	PLANTA = @nserie and (FECHASEGUIMIENTO >= @finicio and FECHASEGUIMIENTO<=@ffinal)
	RETURN
' 
END
GO
/****** Object:  Table [dbo].[GrupoIncidencias]    Script Date: 02/16/2009 23:34:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GrupoIncidencias]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GrupoIncidencias](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[Descripcion] [varchar](255) COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK_GrupoIncidencias] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[GrupoIncidencias] ON
INSERT [dbo].[GrupoIncidencias] ([ID], [Nombre], [Descripcion]) VALUES (4, N'INVERSOR', N'Incidencias relacionadas con un INVERSOR')
INSERT [dbo].[GrupoIncidencias] ([ID], [Nombre], [Descripcion]) VALUES (5, N'STRING', N'Incidencias relacionadas con un STRING')
INSERT [dbo].[GrupoIncidencias] ([ID], [Nombre], [Descripcion]) VALUES (6, N'SEGUIDOR', N'Incidencias relacionadas con un SEGUIDOR')
INSERT [dbo].[GrupoIncidencias] ([ID], [Nombre], [Descripcion]) VALUES (7, N'PANEL', N'Incidencias relacionadas con un PANEL')
SET IDENTITY_INSERT [dbo].[GrupoIncidencias] OFF
/****** Object:  Table [dbo].[Trabajos]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Trabajos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Trabajos](
	[idTrabajo] [uniqueidentifier] NOT NULL,
	[Descripcion] [nvarchar](max) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[Duracion] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Trabajos] PRIMARY KEY CLUSTERED 
(
	[idTrabajo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[TrabajosMotivos]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TrabajosMotivos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TrabajosMotivos](
	[idTrabajo] [uniqueidentifier] NOT NULL,
	[idMotivo] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_TrabajosMotivos] PRIMARY KEY CLUSTERED 
(
	[idMotivo] ASC,
	[idTrabajo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[ClasificacionIncidencias]    Script Date: 02/16/2009 23:34:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClasificacionIncidencias]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ClasificacionIncidencias](
	[ID] [uniqueidentifier] NOT NULL,
	[Definicion] [nvarchar](1000) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[Coste] [decimal](18, 2) NOT NULL,
	[idNivel] [int] NOT NULL,
	[idGrupo] [int] NOT NULL,
 CONSTRAINT [PK_ClasificacionIncidencias_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[ClasificacionIncidencias] ([ID], [Definicion], [Coste], [idNivel], [idGrupo]) VALUES (N'3480b9b0-1dc7-4eb9-8fa7-1be8452efc1e', N'Incidencia en el Seguidor', CAST(34.78 AS Decimal(18, 2)), 4, 6)
INSERT [dbo].[ClasificacionIncidencias] ([ID], [Definicion], [Coste], [idNivel], [idGrupo]) VALUES (N'b9f1dd97-cfd4-4448-816f-3c4335fac432', N'Incidencia en el Panel', CAST(89.00 AS Decimal(18, 2)), 4, 7)
INSERT [dbo].[ClasificacionIncidencias] ([ID], [Definicion], [Coste], [idNivel], [idGrupo]) VALUES (N'4bac1786-3f5b-4759-9c18-4ba9d84a0f3f', N'Incidencia en el String', CAST(120.54 AS Decimal(18, 2)), 4, 5)
INSERT [dbo].[ClasificacionIncidencias] ([ID], [Definicion], [Coste], [idNivel], [idGrupo]) VALUES (N'fa3748d9-ba73-4988-9e3d-7088093aaf75', N'Incidencia en el Inversor', CAST(21.00 AS Decimal(18, 2)), 6, 4)
/****** Object:  Table [dbo].[Incidencias]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Incidencias]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Incidencias](
	[ID] [uniqueidentifier] NOT NULL,
	[FechaApertura] [datetime] NOT NULL,
	[NSerie_Componente] [nchar](15) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[TipoIncidencia] [uniqueidentifier] NULL,
	[Observaciones] [nvarchar](2000) COLLATE Modern_Spanish_CI_AS NULL,
	[FechaCierre] [datetime] NULL,
	[idUsuario] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Incidencias_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Incidencias] ([ID], [FechaApertura], [NSerie_Componente], [TipoIncidencia], [Observaciones], [FechaCierre], [idUsuario]) VALUES (N'66aa6deb-2b66-4986-9f49-039dae2ab96d', CAST(0x00009BA500000000 AS DateTime), N'C1-09-09       ', N'00000000-0000-0000-0000-000000000000', N'casca!!', NULL, NULL)
INSERT [dbo].[Incidencias] ([ID], [FechaApertura], [NSerie_Componente], [TipoIncidencia], [Observaciones], [FechaCierre], [idUsuario]) VALUES (N'907ca6b4-435e-4db7-91b5-2852839b96d6', CAST(0x00009BA500000000 AS DateTime), N'SCC12-12345    ', N'019d2dd4-543e-4645-b67c-319e0e2b8fd8', N'rtrrtrttrrrtrtrt', NULL, NULL)
INSERT [dbo].[Incidencias] ([ID], [FechaApertura], [NSerie_Componente], [TipoIncidencia], [Observaciones], [FechaCierre], [idUsuario]) VALUES (N'd4d9a593-250d-4286-acff-394986f7ce29', CAST(0x00009BA500000000 AS DateTime), N'SCC11-12345    ', N'019d2dd4-543e-4645-b67c-319e0e2b8fd8', N'pOYEYA!', NULL, NULL)
INSERT [dbo].[Incidencias] ([ID], [FechaApertura], [NSerie_Componente], [TipoIncidencia], [Observaciones], [FechaCierre], [idUsuario]) VALUES (N'e67514d6-5eec-4c02-b062-41e416c6a5d9', CAST(0x00009BA800000000 AS DateTime), N'SCC01-12345    ', N'4bac1786-3f5b-4759-9c18-4ba9d84a0f3f', N'Prueba Dlopez', NULL, NULL)
INSERT [dbo].[Incidencias] ([ID], [FechaApertura], [NSerie_Componente], [TipoIncidencia], [Observaciones], [FechaCierre], [idUsuario]) VALUES (N'2b47e577-a24d-4ede-9b2a-55791b8dc1fc', CAST(0x00009BB100000000 AS DateTime), N'SCC02-23179    ', N'fa3748d9-ba73-4988-9e3d-7088093aaf75', N'', NULL, NULL)
INSERT [dbo].[Incidencias] ([ID], [FechaApertura], [NSerie_Componente], [TipoIncidencia], [Observaciones], [FechaCierre], [idUsuario]) VALUES (N'1d80b47e-abe9-4737-a803-7de7c4507df2', CAST(0x00009BAB00000000 AS DateTime), N'SCC02-12345    ', N'fa3748d9-ba73-4988-9e3d-7088093aaf75', N'jhfhjfjkfjhfh', NULL, NULL)
INSERT [dbo].[Incidencias] ([ID], [FechaApertura], [NSerie_Componente], [TipoIncidencia], [Observaciones], [FechaCierre], [idUsuario]) VALUES (N'0e5cddd6-c32a-47a5-b3ee-8016477050f4', CAST(0x00009BA700000000 AS DateTime), N'SCC12-12345    ', N'4bac1786-3f5b-4759-9c18-4ba9d84a0f3f', N'Prueba DLOPEZ', NULL, NULL)
INSERT [dbo].[Incidencias] ([ID], [FechaApertura], [NSerie_Componente], [TipoIncidencia], [Observaciones], [FechaCierre], [idUsuario]) VALUES (N'7588b500-e3c7-45d5-928a-8801a65c20da', CAST(0x00009BA500000000 AS DateTime), N'SCC11-12345    ', N'019d2dd4-543e-4645-b67c-319e0e2b8fd8', N'pOYEYA!', NULL, NULL)
INSERT [dbo].[Incidencias] ([ID], [FechaApertura], [NSerie_Componente], [TipoIncidencia], [Observaciones], [FechaCierre], [idUsuario]) VALUES (N'5d3ae9ba-2626-4a78-8de9-b609dd1914e6', CAST(0x00009BA500000000 AS DateTime), N'C1-09-09       ', N'00000000-0000-0000-0000-000000000000', N'casca!!', NULL, NULL)
INSERT [dbo].[Incidencias] ([ID], [FechaApertura], [NSerie_Componente], [TipoIncidencia], [Observaciones], [FechaCierre], [idUsuario]) VALUES (N'ee36abcd-b6f4-44b6-a675-bd05fcd049f3', CAST(0x00009BA500000000 AS DateTime), N'SCC12-12345    ', N'019d2dd4-543e-4645-b67c-319e0e2b8fd8', N'UUUIUIUIUIUIU', NULL, NULL)
INSERT [dbo].[Incidencias] ([ID], [FechaApertura], [NSerie_Componente], [TipoIncidencia], [Observaciones], [FechaCierre], [idUsuario]) VALUES (N'ba94a466-48b4-479f-8644-bdde9255ba28', CAST(0x00009BA500000000 AS DateTime), N'SCC12-12345    ', N'019d2dd4-543e-4645-b67c-319e0e2b8fd8', N'uiuiuiuiuiuiuiu', NULL, NULL)
INSERT [dbo].[Incidencias] ([ID], [FechaApertura], [NSerie_Componente], [TipoIncidencia], [Observaciones], [FechaCierre], [idUsuario]) VALUES (N'0e075ab5-c0c4-44dc-a968-eb3b34896a58', CAST(0x00009BA500000000 AS DateTime), N'C1-09-09       ', N'00000000-0000-0000-0000-000000000000', N'POYEYA!!!', NULL, NULL)
/****** Object:  Table [dbo].[OrdenesTrabajo]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrdenesTrabajo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrdenesTrabajo](
	[idOrden] [uniqueidentifier] NOT NULL,
	[FechaInicio] [datetime] NOT NULL,
	[FechaFinEstimada] [datetime] NOT NULL,
	[FechaFin] [datetime] NULL,
	[Descripcion] [nvarchar](max) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[idMotivo] [uniqueidentifier] NOT NULL,
	[Observaciones] [nvarchar](max) COLLATE Modern_Spanish_CI_AS NULL,
	[idUsuario] [uniqueidentifier] NULL,
	[TipoMotivo] [int] NOT NULL,
 CONSTRAINT [PK_OrdenesTrabajo_1] PRIMARY KEY CLUSTERED 
(
	[idOrden] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[OrdenesTrabajo] ([idOrden], [FechaInicio], [FechaFinEstimada], [FechaFin], [Descripcion], [idMotivo], [Observaciones], [idUsuario], [TipoMotivo]) VALUES (N'e7fb7bca-964f-4f37-b909-0a13a8ec30e3', CAST(0x00009BA50007E1E9 AS DateTime), CAST(0x00009BA60007E1EC AS DateTime), CAST(0x00009BAA01768666 AS DateTime), N'TODO: BUSCAR EL TRABAJO ASOCIADO', N'ba94a466-48b4-479f-8644-bdde9255ba28', N'uiuiuiuiuiuiuiu', N'00000000-0000-0000-0000-000000000000', 1)
INSERT [dbo].[OrdenesTrabajo] ([idOrden], [FechaInicio], [FechaFinEstimada], [FechaFin], [Descripcion], [idMotivo], [Observaciones], [idUsuario], [TipoMotivo]) VALUES (N'fd997129-01fe-4d82-a9ad-3eaa66090131', CAST(0x00009BA50007E0CC AS DateTime), CAST(0x00009BA60007E0CC AS DateTime), NULL, N'TODO: BUSCAR EL TRABAJO ASOCIADO', N'00000000-0000-0000-0000-000000000000', N'uiuiuiuiuiuiuiu', N'00000000-0000-0000-0000-000000000000', 0)
INSERT [dbo].[OrdenesTrabajo] ([idOrden], [FechaInicio], [FechaFinEstimada], [FechaFin], [Descripcion], [idMotivo], [Observaciones], [idUsuario], [TipoMotivo]) VALUES (N'72cd7d47-dcb5-48b0-ac81-6396d42d48fd', CAST(0x00009BA7000CC278 AS DateTime), CAST(0x00009BA8000CC299 AS DateTime), CAST(0x00009BA7012937DA AS DateTime), N'TODO: BUSCAR EL TRABAJO ASOCIADO', N'0e5cddd6-c32a-47a5-b3ee-8016477050f4', N'Prueba DLOPEZ ghyuyigug8yg8ugijk', N'00000000-0000-0000-0000-000000000000', 1)
INSERT [dbo].[OrdenesTrabajo] ([idOrden], [FechaInicio], [FechaFinEstimada], [FechaFin], [Descripcion], [idMotivo], [Observaciones], [idUsuario], [TipoMotivo]) VALUES (N'35fe2f29-1861-4c90-8fdc-9f183a8e1304', CAST(0x00009BAB0134960D AS DateTime), CAST(0x00009BAF01349617 AS DateTime), CAST(0x00009BAB0134CA97 AS DateTime), N'Solucionar Incidencia', N'1d80b47e-abe9-4737-a803-7de7c4507df2', N'jhfhjfjkfjhfh', N'00000000-0000-0000-0000-000000000000', 1)
INSERT [dbo].[OrdenesTrabajo] ([idOrden], [FechaInicio], [FechaFinEstimada], [FechaFin], [Descripcion], [idMotivo], [Observaciones], [idUsuario], [TipoMotivo]) VALUES (N'8e774989-d0f6-4e57-9c05-babc0c70dea5', CAST(0x00009BB10173F2B7 AS DateTime), CAST(0x00009BB50173F2C0 AS DateTime), NULL, N'Solucionar Incidencia', N'2b47e577-a24d-4ede-9b2a-55791b8dc1fc', N'', NULL, 1)
INSERT [dbo].[OrdenesTrabajo] ([idOrden], [FechaInicio], [FechaFinEstimada], [FechaFin], [Descripcion], [idMotivo], [Observaciones], [idUsuario], [TipoMotivo]) VALUES (N'93afe4c4-87a1-43ef-9629-cf6c2a54655b', CAST(0x00009BA80001FF0B AS DateTime), CAST(0x00009BA90001FF0B AS DateTime), NULL, N'Solucionar Incidencia', N'e67514d6-5eec-4c02-b062-41e416c6a5d9', N'Prueba Dlopez', NULL, 1)
/****** Object:  Table [dbo].[SeguimientoPlantas]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SeguimientoPlantas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SeguimientoPlantas](
	[Planta] [nchar](15) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[FechaSeguimiento] [datetime] NOT NULL,
	[Pac] [decimal](18, 2) NOT NULL,
	[E_hoy] [decimal](18, 2) NOT NULL,
	[idUsuario] [uniqueidentifier] NULL,
	[Incidencia] [uniqueidentifier] NULL,
 CONSTRAINT [PK_SeguimientoPlantas_1] PRIMARY KEY CLUSTERED 
(
	[Planta] ASC,
	[FechaSeguimiento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SeguimientoPlantas]') AND name = N'IX_SeguimientoPlantas')
CREATE NONCLUSTERED INDEX [IX_SeguimientoPlantas] ON [dbo].[SeguimientoPlantas] 
(
	[FechaSeguimiento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
INSERT [dbo].[SeguimientoPlantas] ([Planta], [FechaSeguimiento], [Pac], [E_hoy], [idUsuario], [Incidencia]) VALUES (N'C1-01-01       ', CAST(0x00009BA6000B2B53 AS DateTime), CAST(56.00 AS Decimal(18, 2)), CAST(98.67 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[SeguimientoPlantas] ([Planta], [FechaSeguimiento], [Pac], [E_hoy], [idUsuario], [Incidencia]) VALUES (N'C1-01-01       ', CAST(0x00009BAB013454B8 AS DateTime), CAST(34.00 AS Decimal(18, 2)), CAST(67.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[SeguimientoPlantas] ([Planta], [FechaSeguimiento], [Pac], [E_hoy], [idUsuario], [Incidencia]) VALUES (N'C1-03-03       ', CAST(0x00009BA7000814AB AS DateTime), CAST(45.00 AS Decimal(18, 2)), CAST(78.98 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[SeguimientoPlantas] ([Planta], [FechaSeguimiento], [Pac], [E_hoy], [idUsuario], [Incidencia]) VALUES (N'C1-09-09       ', CAST(0x00009BA500031BDE AS DateTime), CAST(56.99 AS Decimal(18, 2)), CAST(98.78 AS Decimal(18, 2)), NULL, N'0e075ab5-c0c4-44dc-a968-eb3b34896a58')
INSERT [dbo].[SeguimientoPlantas] ([Planta], [FechaSeguimiento], [Pac], [E_hoy], [idUsuario], [Incidencia]) VALUES (N'C1-10-10       ', CAST(0x00009BA5000160B4 AS DateTime), CAST(67.90 AS Decimal(18, 2)), CAST(12.98 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[SeguimientoPlantas] ([Planta], [FechaSeguimiento], [Pac], [E_hoy], [idUsuario], [Incidencia]) VALUES (N'C1-12-12       ', CAST(0x00009BA500081675 AS DateTime), CAST(78.99 AS Decimal(18, 2)), CAST(12.87 AS Decimal(18, 2)), NULL, N'ba94a466-48b4-479f-8644-bdde9255ba28')
INSERT [dbo].[SeguimientoPlantas] ([Planta], [FechaSeguimiento], [Pac], [E_hoy], [idUsuario], [Incidencia]) VALUES (N'C1-14-14       ', CAST(0x00009BA80001DD7D AS DateTime), CAST(64.56 AS Decimal(18, 2)), CAST(89.87 AS Decimal(18, 2)), NULL, NULL)
/****** Object:  StoredProcedure [dbo].[paGetInversores]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetInversores]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paGetInversores]

AS

SELECT * FROM Inversores
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[paGetInversorByID]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetInversorByID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paGetInversorByID]
(
	@nserie nchar(15)
)
AS

SELECT * FROM Inversores
WHERE NSerie = @nserie
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[paInversorUPD]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paInversorUPD]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paInversorUPD]
	
	(
	@nserie nchar(15),
	@potencia decimal(18,2),
	@ultimaincidencia datetime = null,
	@ultimarevision datetime = null,
	@fechabaja datetime = null,
	@id_planta nchar(15),
	@enlaceSunny nvarchar(250)
	)
	
AS
-- MANTENIMIENTO
if(@ultimaincidencia is null  and @ultimarevision is null and @fechabaja is null)
UPDATE  INVERSORES set potencia = @potencia, ID_PLANTA = @id_planta, EnlaceSUNNY = @enlaceSunny
		where nserie= @nserie;
-- SEGUIMIENTO
else if (@fechabaja is null)
	UPDATE  INVERSORES set ultimaincidencia=@ultimaincidencia, ultimarevision = @ultimarevision
		where nserie= @nserie;
-- BAJA
UPDATE  INVERSORES set FECHABAJA=@fechabaja
		where nserie= @nserie;
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[paCrearInversor]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paCrearInversor]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paCrearInversor]
	
	(
	@nserie nchar(15),
	@potencia decimal,
	@fechaalta datetime,
	@id_planta nchar(15),
	@enlaceSunny nvarchar(250)
	)
	
AS
	/* SET NOCOUNT ON */
	
	INSERT INTO INVERSORES (Nserie,Potencia,FechaAlta,ID_PLANTA,EnlaceSUNNY) values (@nserie,@potencia,@fechaalta,@id_planta, @enlaceSunny)
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[paPlantasUPD]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paPlantasUPD]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paPlantasUPD]
	
	(
	@nserie nchar(15),
	@descPlanta nvarchar(150),
	@ultimaincidencia datetime=null,
	@ultimarevision datetime=null,
	@fechabaja datetime= null,
	@e_total decimal(18,2),
	@cif nchar(9),
	@tlf nchar(9)
	)
	
AS
-- MANTENIMIENTO
if(@ultimaincidencia is null  and @ultimarevision is null and @fechabaja is null)
UPDATE  PLANTAS set Descripcion = @descPlanta, E_Total = @e_total, cif=@cif, Telefono = @tlf
		where nserie= @nserie;
-- SEGUIMIENTO
else if (@fechabaja is null)
UPDATE  PLANTAS set Descripcion = @descPlanta, ultimarevision = @ultimarevision, E_Total = @e_total, 
		UltimaIncidencia = @ultimaincidencia, cif=@cif, Telefono = @tlf
		where nserie= @nserie;
--BAJA
else
UPDATE  PLANTAS set FECHABAJA=@fechabaja
		where nserie= @nserie;
		
	RETURN' 
END
GO
/****** Object:  StoredProcedure [dbo].[paGetTareas]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetTareas]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paGetTareas]

AS
	SELECT        Tareas.idTarea, Tareas.Periodo, Tareas.Descripcion, Tareas.Habilitada, GrupoIncidencias.Nombre, Tareas.TipoComponente
	FROM            Tareas INNER JOIN
	                         GrupoIncidencias ON Tareas.TipoComponente = GrupoIncidencias.ID
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[paTareasINS]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paTareasINS]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paTareasINS]
	(
	@periodo int,
	@tipoComponente int,
	@descripcion nvarchar(MAX),
	@habilitada bit
	)
AS

INSERT INTO TAREAS (Periodo, TipoComponente,Descripcion, Habilitada)
	VALUES (@periodo,@tipoComponente,@descripcion,@habilitada)

	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[paTareasUPD]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paTareasUPD]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paTareasUPD]
	(
	@idTarea uniqueidentifier,
	@periodo int,
	@tipoComponente int,
	@descripcion nvarchar(MAX),
	@habilitada bit
	)
AS

UPDATE TAREAS SET Periodo= @periodo , TipoComponente = @tipoComponente,Descripcion =@descripcion , Habilitada = @habilitada
	WHERE idTarea = @idTarea

	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[paTareasDEL]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paTareasDEL]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paTareasDEL]
	(
	@idTarea uniqueidentifier
	)
AS

DELETE FROM TAREAS
	WHERE idTarea = @idTarea

	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[paStringUPD]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paStringUPD]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paStringUPD]
	
	(
	@nserie nchar(15),
	@descripcion nvarchar(1000),
	@ultimaincidencia datetime=null,
	@ultimarevision datetime=null,
	@fechabaja datetime=null,
	@id_inversor nchar(15),
	@canal1 bit,
	@canal2 bit,
	@canal3 bit,
	@canal4 bit,
	@canal5 bit,
	@canal6 bit,
	@canal7 bit,
	@canal8 bit,
	@canal9 bit,
	@canal10 bit,
	@canal11 bit,
	@canal12 bit,
	@canal13 bit,
	@canal14 bit,
	@canal15 bit,
	@canal16 bit
	)
	
AS
-- MANTENIMIENTO
if(@ultimaincidencia is null  and @ultimarevision is null and @fechabaja is null)
UPDATE  STRINGS set descripcion = @descripcion, ID_INVERSOR=@id_inversor, CANAL1=@canal1, CANAL2=@canal2, CANAL3=@canal3,
						CANAL4=@canal4,CANAL5=@canal5,CANAL6=@canal6,CANAL7=@canal7,CANAL8=@canal8,
						CANAL9=@canal9,CANAL10=@canal10,CANAL11=@canal11,CANAL12=@canal12,CANAL13=@canal13,
						CANAL14=@canal14,CANAL15=@canal15,CANAL16=@canal16
						
		where nserie= @nserie;
-- SEGUIMIENTO
else if (@fechabaja is null)
	UPDATE  STRINGS set descripcion = @descripcion, ultimarevision = @ultimarevision,
		ultimaincidencia=@ultimaincidencia
		where nserie= @nserie;
-- BAJA
else
UPDATE  STRINGS set FECHABAJA=@fechabaja
		where nserie= @nserie;
	RETURN
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[paCrearString]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paCrearString]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paCrearString]
	(
	@nSerie nchar(15),
	@descString nvarchar(50),
	@fechaAlta datetime,
	@id_inversor nchar(15),
	@canal1 bit,
	@canal2 bit,
	@canal3 bit,
	@canal4 bit,
	@canal5 bit,
	@canal6 bit,
	@canal7 bit,
	@canal8 bit,
	@canal9 bit,
	@canal10 bit,
	@canal11 bit,
	@canal12 bit,
	@canal13 bit,
	@canal14 bit,
	@canal15 bit,
	@canal16 bit
	)
	
AS
	/* SET NOCOUNT ON */
	
	INSERT INTO STRINGS (Nserie,Descripcion,FechaAlta,ID_INVERSOR,CANAL1,CANAL2,CANAL3,CANAL4,CANAL5,
									CANAL6,CANAL7,CANAL8,CANAL9,CANAL10,CANAL11,CANAL12,CANAL13,
									CANAL14,CANAL15,CANAL16) 
		VALUES (@nSerie,@descString,@fechaAlta,@id_inversor,	@canal1,@canal2,@canal3,@canal4,@canal5,
									@canal6,@canal7,@canal8,@canal9,@canal10,@canal11,@canal12,@canal13,
									@canal14,@canal15,@canal16)
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[paGetIncidenciasbyGrupo]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetIncidenciasbyGrupo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paGetIncidenciasbyGrupo]
	(
	@grupo nvarchar(10)
	)
AS
SELECT        ClasificacionIncidencias.ID, ClasificacionIncidencias.Definicion, ClasificacionIncidencias.Coste, ClasificacionIncidencias.idNivel, 
                         GrupoIncidencias.Nombre
FROM            ClasificacionIncidencias INNER JOIN
                         GrupoIncidencias ON ClasificacionIncidencias.idGrupo = GrupoIncidencias.ID
WHERE        (GrupoIncidencias.Nombre LIKE @grupo)
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[paGruposIncidenciaINS]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGruposIncidenciaINS]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paGruposIncidenciaINS]
	(
	@descripcion nvarchar(255),
	@nombre nvarchar(50)
	)
AS
	
	INSERT INTO GrupoIncidencias (Nombre, Descripcion) VALUES (@nombre, @descripcion)

		
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[paGruposIncidenciaUPD]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGruposIncidenciaUPD]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paGruposIncidenciaUPD]
	(
	@id int,
	@descripcion nvarchar(255),
	@nombre nvarchar(50)
	)
AS
	
	UPDATE GrupoIncidencias SET Nombre= @nombre, Descripcion = @descripcion
WHERE id=@id
		
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[paGetDefIncidencias]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetDefIncidencias]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paGetDefIncidencias]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS

SELECT        ClasificacionIncidencias.ID, ClasificacionIncidencias.Definicion, ClasificacionIncidencias.Coste, GrupoIncidencias.Nombre AS defGrupo, 
                         NivelesIncidencia.Descripcion AS defNivel, NivelesIncidencia.ID AS idNivel, GrupoIncidencias.ID AS idGrupo
FROM            ClasificacionIncidencias INNER JOIN
                         NivelesIncidencia ON ClasificacionIncidencias.idNivel = NivelesIncidencia.ID INNER JOIN
                         GrupoIncidencias ON ClasificacionIncidencias.idGrupo = GrupoIncidencias.ID
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[paGruposIncidenciaDEL]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGruposIncidenciaDEL]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paGruposIncidenciaDEL]
	(
	@id int
	)
AS
	
	DELETE FROM GrupoIncidencias
	WHERE id=@id 
		
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[paGetIncidencias]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetIncidencias]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paGetIncidencias]

AS

SELECT        TOP (100) Incidencias.ID, Incidencias.FechaApertura, Incidencias.NSerie_Componente, ClasificacionIncidencias.Definicion, Incidencias.Observaciones, 
                         Incidencias.FechaCierre
FROM            Incidencias LEFT OUTER JOIN
                         ClasificacionIncidencias ON ClasificacionIncidencias.ID = Incidencias.TipoIncidencia
ORDER BY Incidencias.FechaApertura DESC
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[paGetDefIncidenciaByID]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetDefIncidenciaByID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paGetDefIncidenciaByID]
	(
	@id uniqueidentifier
	)
AS

SELECT        Definicion, Coste, idNivel, idGrupo, ID
	                    FROM            ClasificacionIncidencias
	                    WHERE        (ID = @id)
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[paClasificacionIncidenciaUPD]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paClasificacionIncidenciaUPD]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paClasificacionIncidenciaUPD]
	(
	@id uniqueidentifier,
	@definicion nvarchar(255),
	@coste decimal(18,2),
	@idnivel int,
	@idgrupo int
	)
AS
	
	UPDATE ClasificacionIncidencias SET Definicion = @definicion, Coste = @coste, idNivel = @idnivel, idGrupo=@idgrupo
	WHERE id=@id 
		
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[paClasificacionIncidenciaDEL]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paClasificacionIncidenciaDEL]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paClasificacionIncidenciaDEL]
	(
	@id uniqueidentifier
	)
AS
	
	DELETE FROM ClasificacionIncidencias
	WHERE id=@id 
		
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[paCrearIncidencia]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paCrearIncidencia]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paCrearIncidencia]
	(
	@id uniqueidentifier OUTPUT,
	@fechaapertura datetime,
	@nserie nchar(15),
	@incidencia uniqueidentifier,
	@observaciones nvarchar(2000)
	)
AS
	INSERT INTO INCIDENCIAS (FechaApertura, NSerie_Componente,TipoIncidencia,Observaciones) 
		VALUES (@fechaapertura,@nserie,@incidencia,@observaciones)
		
		
		
		SELECT @id=id FROM INCIDENCIAS 
			WHERE FechaApertura = @fechaapertura AND 
						NSerie_Componente = @nserie AND TipoIncidencia= @incidencia
		
		
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[paOrdenTrabajoINS]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paOrdenTrabajoINS]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paOrdenTrabajoINS]
	(
	@fechainicio datetime,
	@fechafinestimada datetime,
	@idmotivo uniqueidentifier,
	@tipomotivo int,
	@observaciones nvarchar(MAX),
	@descripcion nvarchar(MAX)
	)
AS

INSERT INTO OrdenesTrabajo (FechaInicio, FechaFinEstimada,Descripcion, TipoMotivo, idMotivo, Observaciones)
	VALUES (@fechainicio,@fechafinestimada,@descripcion,@tipomotivo,@idmotivo,@observaciones)

	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[paOrdenTrabajoUPD]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paOrdenTrabajoUPD]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paOrdenTrabajoUPD]
	(
	@idorden uniqueidentifier,
	@fechafin datetime,
	@observaciones nvarchar(MAX),
	@idusuario uniqueidentifier
	)
AS

UPDATE  OrdenesTrabajo SET FechaFin=@fechafin, Observaciones = @observaciones, 
		idUsuario = @idusuario
		WHERE idOrden=@idorden
	
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[paGetOrdenesTrabajo]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetOrdenesTrabajo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paGetOrdenesTrabajo]

AS
	SELECT        idOrden, FechaInicio, FechaFinEstimada, Descripcion, idMotivo, Observaciones, idUsuario, TipoMotivo
	FROM            OrdenesTrabajo
	WHERE        (FechaFin IS NULL)
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[paGetOrdenTrabajoByID]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetOrdenTrabajoByID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paGetOrdenTrabajoByID]
(
		@idorden uniqueidentifier
)
AS
	SELECT        idOrden, FechaInicio, FechaFinEstimada, Descripcion, idMotivo, Observaciones, idUsuario, TipoMotivo
	FROM            OrdenesTrabajo
	WHERE        idOrden = @idorden
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[paGetOrdenesTrabajoCerradas]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetOrdenesTrabajoCerradas]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paGetOrdenesTrabajoCerradas]

AS
	SELECT        idOrden, FechaInicio, FechaFinEstimada, FechaFin, Descripcion, idMotivo, Observaciones, idUsuario, TipoMotivo
	FROM            OrdenesTrabajo
	WHERE        (FechaFin  IS NOT  NULL)
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[paSeguimientoPlantas]    Script Date: 02/16/2009 23:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paSeguimientoPlantas]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paSeguimientoPlantas]
(
	@nserie nchar(15),
	@fechaseguimiento datetime=null,
	@ehoy decimal(18,2),
	@pac decimal(18,2),
	@incidencia uniqueidentifier
	)
	
AS

if (@incidencia=''{00000000-0000-0000-0000-000000000000}'')
	INSERT INTO SEGUIMIENTOPLANTAS (Planta, FechaSeguimiento, Pac, E_Hoy) 
		VALUES (@nserie,@fechaseguimiento,@pac,@ehoy)
else
	INSERT INTO SEGUIMIENTOPLANTAS (Planta, FechaSeguimiento, Pac, E_Hoy, Incidencia) 
		VALUES (@nserie,@fechaseguimiento,@pac,@ehoy,@incidencia)

	RETURN
' 
END
GO
/****** Object:  Default [DF_AccionReparacion_idAccion]    Script Date: 02/16/2009 23:34:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_AccionReparacion_idAccion]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccionReparacion]'))
Begin
ALTER TABLE [dbo].[AccionReparacion] ADD  CONSTRAINT [DF_AccionReparacion_idAccion]  DEFAULT (newid()) FOR [idAccion]

End
GO
/****** Object:  Default [DF_AccionReparacion_orden]    Script Date: 02/16/2009 23:34:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_AccionReparacion_orden]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccionReparacion]'))
Begin
ALTER TABLE [dbo].[AccionReparacion] ADD  CONSTRAINT [DF_AccionReparacion_orden]  DEFAULT ((1)) FOR [orden]

End
GO
/****** Object:  Default [DF_ClasificacionIncidencias_ID]    Script Date: 02/16/2009 23:34:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_ClasificacionIncidencias_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClasificacionIncidencias]'))
Begin
ALTER TABLE [dbo].[ClasificacionIncidencias] ADD  CONSTRAINT [DF_ClasificacionIncidencias_ID]  DEFAULT (newid()) FOR [ID]

End
GO
/****** Object:  Default [DF_ClasificacionIncidencias_Coste]    Script Date: 02/16/2009 23:34:42 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_ClasificacionIncidencias_Coste]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClasificacionIncidencias]'))
Begin
ALTER TABLE [dbo].[ClasificacionIncidencias] ADD  CONSTRAINT [DF_ClasificacionIncidencias_Coste]  DEFAULT ((0)) FOR [Coste]

End
GO
/****** Object:  Default [DF_Incidencias_ID]    Script Date: 02/16/2009 23:34:43 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Incidencias_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Incidencias]'))
Begin
ALTER TABLE [dbo].[Incidencias] ADD  CONSTRAINT [DF_Incidencias_ID]  DEFAULT (newid()) FOR [ID]

End
GO
/****** Object:  Default [DF_OrdenesTrabajo_idOrden]    Script Date: 02/16/2009 23:34:43 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_OrdenesTrabajo_idOrden]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrdenesTrabajo]'))
Begin
ALTER TABLE [dbo].[OrdenesTrabajo] ADD  CONSTRAINT [DF_OrdenesTrabajo_idOrden]  DEFAULT (newid()) FOR [idOrden]

End
GO
/****** Object:  Default [DF_Tareas_idTarea]    Script Date: 02/16/2009 23:34:43 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Tareas_idTarea]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tareas]'))
Begin
ALTER TABLE [dbo].[Tareas] ADD  CONSTRAINT [DF_Tareas_idTarea]  DEFAULT (newid()) FOR [idTarea]

End
GO
/****** Object:  Default [DF_Tareas_Habilitada]    Script Date: 02/16/2009 23:34:43 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Tareas_Habilitada]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tareas]'))
Begin
ALTER TABLE [dbo].[Tareas] ADD  CONSTRAINT [DF_Tareas_Habilitada]  DEFAULT ((0)) FOR [Habilitada]

End
GO
/****** Object:  Default [DF_Trabajos_idTrabajo]    Script Date: 02/16/2009 23:34:43 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Trabajos_idTrabajo]') AND parent_object_id = OBJECT_ID(N'[dbo].[Trabajos]'))
Begin
ALTER TABLE [dbo].[Trabajos] ADD  CONSTRAINT [DF_Trabajos_idTrabajo]  DEFAULT (newid()) FOR [idTrabajo]

End
GO
