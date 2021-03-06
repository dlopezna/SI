/****** Objeto:  ForeignKey [FK__aspnet_Me__Appli__145C0A3F]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Me__Appli__145C0A3F]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
ALTER TABLE [dbo].[aspnet_Membership] DROP CONSTRAINT [FK__aspnet_Me__Appli__145C0A3F]
GO
/****** Objeto:  ForeignKey [FK__aspnet_Me__UserI__15502E78]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Me__UserI__15502E78]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
ALTER TABLE [dbo].[aspnet_Membership] DROP CONSTRAINT [FK__aspnet_Me__UserI__15502E78]
GO
/****** Objeto:  ForeignKey [FK__aspnet_Pa__Appli__45F365D3]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pa__Appli__45F365D3]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]'))
ALTER TABLE [dbo].[aspnet_Paths] DROP CONSTRAINT [FK__aspnet_Pa__Appli__45F365D3]
GO
/****** Objeto:  ForeignKey [FK__aspnet_Pe__PathI__4BAC3F29]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__PathI__4BAC3F29]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers]'))
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers] DROP CONSTRAINT [FK__aspnet_Pe__PathI__4BAC3F29]
GO
/****** Objeto:  ForeignKey [FK__aspnet_Pe__PathI__4F7CD00D]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__PathI__4F7CD00D]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] DROP CONSTRAINT [FK__aspnet_Pe__PathI__4F7CD00D]
GO
/****** Objeto:  ForeignKey [FK__aspnet_Pe__UserI__5070F446]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__UserI__5070F446]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] DROP CONSTRAINT [FK__aspnet_Pe__UserI__5070F446]
GO
/****** Objeto:  ForeignKey [FK__aspnet_Pr__UserI__29572725]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pr__UserI__29572725]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Profile]'))
ALTER TABLE [dbo].[aspnet_Profile] DROP CONSTRAINT [FK__aspnet_Pr__UserI__29572725]
GO
/****** Objeto:  ForeignKey [FK__aspnet_Ro__Appli__32E0915F]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Ro__Appli__32E0915F]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]'))
ALTER TABLE [dbo].[aspnet_Roles] DROP CONSTRAINT [FK__aspnet_Ro__Appli__32E0915F]
GO
/****** Objeto:  ForeignKey [FK__aspnet_Us__Appli__0425A276]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__Appli__0425A276]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
ALTER TABLE [dbo].[aspnet_Users] DROP CONSTRAINT [FK__aspnet_Us__Appli__0425A276]
GO
/****** Objeto:  ForeignKey [FK__aspnet_Us__RoleI__37A5467C]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__RoleI__37A5467C]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]'))
ALTER TABLE [dbo].[aspnet_UsersInRoles] DROP CONSTRAINT [FK__aspnet_Us__RoleI__37A5467C]
GO
/****** Objeto:  ForeignKey [FK__aspnet_Us__UserI__36B12243]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__UserI__36B12243]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]'))
ALTER TABLE [dbo].[aspnet_UsersInRoles] DROP CONSTRAINT [FK__aspnet_Us__UserI__36B12243]
GO
/****** Objeto:  ForeignKey [FK_ClasificacionIncidencias_GrupoIncidencias]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ClasificacionIncidencias_GrupoIncidencias]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClasificacionIncidencias]'))
ALTER TABLE [dbo].[ClasificacionIncidencias] DROP CONSTRAINT [FK_ClasificacionIncidencias_GrupoIncidencias]
GO
/****** Objeto:  ForeignKey [FK_ClasificacionIncidencias_NivelesIncidencia]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ClasificacionIncidencias_NivelesIncidencia]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClasificacionIncidencias]'))
ALTER TABLE [dbo].[ClasificacionIncidencias] DROP CONSTRAINT [FK_ClasificacionIncidencias_NivelesIncidencia]
GO
/****** Objeto:  ForeignKey [FK_Incidencias_ClasificacionIncidencias]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Incidencias_ClasificacionIncidencias]') AND parent_object_id = OBJECT_ID(N'[dbo].[Incidencias]'))
ALTER TABLE [dbo].[Incidencias] DROP CONSTRAINT [FK_Incidencias_ClasificacionIncidencias]
GO
/****** Objeto:  ForeignKey [FK_Inversores_Plantas]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Inversores_Plantas]') AND parent_object_id = OBJECT_ID(N'[dbo].[Inversores]'))
ALTER TABLE [dbo].[Inversores] DROP CONSTRAINT [FK_Inversores_Plantas]
GO
/****** Objeto:  ForeignKey [FK_Paneles_Seguidores]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Paneles_Seguidores]') AND parent_object_id = OBJECT_ID(N'[dbo].[Paneles]'))
ALTER TABLE [dbo].[Paneles] DROP CONSTRAINT [FK_Paneles_Seguidores]
GO
/****** Objeto:  ForeignKey [FK_Seguidores_Strings]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Seguidores_Strings]') AND parent_object_id = OBJECT_ID(N'[dbo].[Seguidores]'))
ALTER TABLE [dbo].[Seguidores] DROP CONSTRAINT [FK_Seguidores_Strings]
GO
/****** Objeto:  ForeignKey [FK_SeguimientoPlantas_Plantas]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SeguimientoPlantas_Plantas]') AND parent_object_id = OBJECT_ID(N'[dbo].[SeguimientoPlantas]'))
ALTER TABLE [dbo].[SeguimientoPlantas] DROP CONSTRAINT [FK_SeguimientoPlantas_Plantas]
GO
/****** Objeto:  ForeignKey [FK_Strings_Inversores]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Strings_Inversores]') AND parent_object_id = OBJECT_ID(N'[dbo].[Strings]'))
ALTER TABLE [dbo].[Strings] DROP CONSTRAINT [FK_Strings_Inversores]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_DeleteProfiles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_SetProperties]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_SetProperties]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_CreateUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_CreateUser]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_CreateRole]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Roles_CreateRole]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_DeleteAllState]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_ResetSharedState]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_FindState]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_GetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_ResetUserState]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_GetCountOfState]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_SetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]
GO
/****** Objeto:  StoredProcedure [dbo].[paCrearPlanta]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paCrearPlanta]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paCrearPlanta]
GO
/****** Objeto:  StoredProcedure [dbo].[paEliminarPlanta]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paEliminarPlanta]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paEliminarPlanta]
GO
/****** Objeto:  StoredProcedure [dbo].[paPlantasUPD]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paPlantasUPD]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paPlantasUPD]
GO
/****** Objeto:  StoredProcedure [dbo].[paCrearInversor]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paCrearInversor]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paCrearInversor]
GO
/****** Objeto:  StoredProcedure [dbo].[paInversorUPD]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paInversorUPD]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paInversorUPD]
GO
/****** Objeto:  StoredProcedure [dbo].[paGetInversorByID]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetInversorByID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paGetInversorByID]
GO
/****** Objeto:  StoredProcedure [dbo].[paGetInversores]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetInversores]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paGetInversores]
GO
/****** Objeto:  StoredProcedure [dbo].[paEliminarInversor]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paEliminarInversor]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paEliminarInversor]
GO
/****** Objeto:  StoredProcedure [dbo].[paPanelUPD]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paPanelUPD]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paPanelUPD]
GO
/****** Objeto:  StoredProcedure [dbo].[paEliminarPanel]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paEliminarPanel]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paEliminarPanel]
GO
/****** Objeto:  StoredProcedure [dbo].[paCrearPanel]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paCrearPanel]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paCrearPanel]
GO
/****** Objeto:  StoredProcedure [dbo].[paUpdateAlertaFromUsuario]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paUpdateAlertaFromUsuario]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paUpdateAlertaFromUsuario]
GO
/****** Objeto:  StoredProcedure [dbo].[paAddAlertaToCliente]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paAddAlertaToCliente]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paAddAlertaToCliente]
GO
/****** Objeto:  StoredProcedure [dbo].[paGetTareasEnabled]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetTareasEnabled]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paGetTareasEnabled]
GO
/****** Objeto:  StoredProcedure [dbo].[paGetMisTareas]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetMisTareas]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paGetMisTareas]
GO
/****** Objeto:  View [dbo].[vw_aspnet_WebPartState_Shared]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_Shared]'))
DROP VIEW [dbo].[vw_aspnet_WebPartState_Shared]
GO
/****** Objeto:  View [dbo].[vw_aspnet_WebPartState_User]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_User]'))
DROP VIEW [dbo].[vw_aspnet_WebPartState_User]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Paths_CreatePath]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Paths_CreatePath]
GO
/****** Objeto:  View [dbo].[vw_aspnet_WebPartState_Paths]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_Paths]'))
DROP VIEW [dbo].[vw_aspnet_WebPartState_Paths]
GO
/****** Objeto:  StoredProcedure [dbo].[paIsPlantaInCliente]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paIsPlantaInCliente]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paIsPlantaInCliente]
GO
/****** Objeto:  StoredProcedure [dbo].[paAddPlantaToCliente]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paAddPlantaToCliente]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paAddPlantaToCliente]
GO
/****** Objeto:  StoredProcedure [dbo].[paRemovePlantaFromCliente]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paRemovePlantaFromCliente]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paRemovePlantaFromCliente]
GO
/****** Objeto:  StoredProcedure [dbo].[paIsUserInCliente]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paIsUserInCliente]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paIsUserInCliente]
GO
/****** Objeto:  StoredProcedure [dbo].[paRemoveUserFromCliente]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paRemoveUserFromCliente]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paRemoveUserFromCliente]
GO
/****** Objeto:  StoredProcedure [dbo].[paAddUserToCliente]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paAddUserToCliente]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paAddUserToCliente]
GO
/****** Objeto:  StoredProcedure [dbo].[paGetMisPlantas]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetMisPlantas]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paGetMisPlantas]
GO
/****** Objeto:  View [dbo].[vw_aspnet_UsersInRoles]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_UsersInRoles]'))
DROP VIEW [dbo].[vw_aspnet_UsersInRoles]
GO
/****** Objeto:  StoredProcedure [dbo].[paGetClientes]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetClientes]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paGetClientes]
GO
/****** Objeto:  StoredProcedure [dbo].[paRemoveCliente]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paRemoveCliente]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paRemoveCliente]
GO
/****** Objeto:  StoredProcedure [dbo].[paClienteUPD]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paClienteUPD]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paClienteUPD]
GO
/****** Objeto:  StoredProcedure [dbo].[paAddCliente]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paAddCliente]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paAddCliente]
GO
/****** Objeto:  View [dbo].[vw_aspnet_Roles]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Roles]'))
DROP VIEW [dbo].[vw_aspnet_Roles]
GO
/****** Objeto:  View [dbo].[vw_aspnet_Profiles]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Profiles]'))
DROP VIEW [dbo].[vw_aspnet_Profiles]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_CreateUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Users_CreateUser]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByUserId]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
GO
/****** Objeto:  View [dbo].[vw_aspnet_MembershipUsers]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_MembershipUsers]'))
DROP VIEW [dbo].[vw_aspnet_MembershipUsers]
GO
/****** Objeto:  View [dbo].[vw_aspnet_Users]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Users]'))
DROP VIEW [dbo].[vw_aspnet_Users]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_DeleteRole]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetNumberOfUsersOnline]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetProperties]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_GetProperties]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_GetUsersInRoles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_FindUsersInRole]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_AddUsersToRoles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_GetRolesForUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_DeleteInactiveProfiles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UpdateUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_IsUserInRole]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UnlockUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_ResetPassword]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_SetPassword]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_SetPassword]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetPassword]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetPassword]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UpdateUserInfo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetPasswordWithFormat]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByEmail]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_DeleteUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Users_DeleteUser]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_FindUsersByName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Applications_CreateApplication]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_GetAllRoles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Roles_GetAllRoles]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_RoleExists]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Roles_RoleExists]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetAllUsers]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetProfiles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_FindUsersByEmail]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
GO
/****** Objeto:  View [dbo].[vw_aspnet_Applications]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Applications]'))
DROP VIEW [dbo].[vw_aspnet_Applications]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Personalization_GetApplicationId]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId]
GO
/****** Objeto:  StoredProcedure [dbo].[paHistoricoMantenimientosINS]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paHistoricoMantenimientosINS]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paHistoricoMantenimientosINS]
GO
/****** Objeto:  StoredProcedure [dbo].[paMantenimientoCaducado]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paMantenimientoCaducado]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paMantenimientoCaducado]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_AnyDataInTables]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_AnyDataInTables]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_WebEvent_LogEvent]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
GO
/****** Objeto:  StoredProcedure [dbo].[paGetEstadoMantenimientoComponente]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetEstadoMantenimientoComponente]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paGetEstadoMantenimientoComponente]
GO
/****** Objeto:  StoredProcedure [dbo].[paSubTareaINS]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paSubTareaINS]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paSubTareaINS]
GO
/****** Objeto:  StoredProcedure [dbo].[paGetEstadoMantenimientoComponentePendiente]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetEstadoMantenimientoComponentePendiente]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paGetEstadoMantenimientoComponentePendiente]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_RegisterSchemaVersion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UnRegisterSchemaVersion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_CheckSchemaVersion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
GO
/****** Objeto:  StoredProcedure [dbo].[paSeguimientoPlantas]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paSeguimientoPlantas]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paSeguimientoPlantas]
GO
/****** Objeto:  StoredProcedure [dbo].[paCountOrdenesActivas]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paCountOrdenesActivas]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paCountOrdenesActivas]
GO
/****** Objeto:  StoredProcedure [dbo].[paGetOrdenesTrabajoCerradas]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetOrdenesTrabajoCerradas]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paGetOrdenesTrabajoCerradas]
GO
/****** Objeto:  StoredProcedure [dbo].[paGetOrdenTrabajoByID]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetOrdenTrabajoByID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paGetOrdenTrabajoByID]
GO
/****** Objeto:  StoredProcedure [dbo].[paGetOrdenesTrabajo]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetOrdenesTrabajo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paGetOrdenesTrabajo]
GO
/****** Objeto:  StoredProcedure [dbo].[paOrdenTrabajoUPD]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paOrdenTrabajoUPD]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paOrdenTrabajoUPD]
GO
/****** Objeto:  StoredProcedure [dbo].[paOrdenTrabajoINS]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paOrdenTrabajoINS]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paOrdenTrabajoINS]
GO
/****** Objeto:  StoredProcedure [dbo].[paCountIncidenciasActivas]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paCountIncidenciasActivas]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paCountIncidenciasActivas]
GO
/****** Objeto:  StoredProcedure [dbo].[paCrearIncidencia]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paCrearIncidencia]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paCrearIncidencia]
GO
/****** Objeto:  StoredProcedure [dbo].[paIncidenciaUPD]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paIncidenciaUPD]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paIncidenciaUPD]
GO
/****** Objeto:  StoredProcedure [dbo].[paGetIncidenciaByID]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetIncidenciaByID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paGetIncidenciaByID]
GO
/****** Objeto:  StoredProcedure [dbo].[paGetTopTenIncidencias]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetTopTenIncidencias]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paGetTopTenIncidencias]
GO
/****** Objeto:  StoredProcedure [dbo].[paClasificacionIncidenciaDEL]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paClasificacionIncidenciaDEL]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paClasificacionIncidenciaDEL]
GO
/****** Objeto:  StoredProcedure [dbo].[paClasificacionIncidenciaUPD]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paClasificacionIncidenciaUPD]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paClasificacionIncidenciaUPD]
GO
/****** Objeto:  StoredProcedure [dbo].[paGetDefIncidenciaByID]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetDefIncidenciaByID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paGetDefIncidenciaByID]
GO
/****** Objeto:  StoredProcedure [dbo].[paGetIncidencias]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetIncidencias]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paGetIncidencias]
GO
/****** Objeto:  StoredProcedure [dbo].[paGruposIncidenciaDEL]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGruposIncidenciaDEL]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paGruposIncidenciaDEL]
GO
/****** Objeto:  StoredProcedure [dbo].[paGruposIncidenciaUPD]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGruposIncidenciaUPD]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paGruposIncidenciaUPD]
GO
/****** Objeto:  StoredProcedure [dbo].[paGruposIncidenciaINS]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGruposIncidenciaINS]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paGruposIncidenciaINS]
GO
/****** Objeto:  StoredProcedure [dbo].[paGetIncidenciasbyGrupo]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetIncidenciasbyGrupo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paGetIncidenciasbyGrupo]
GO
/****** Objeto:  StoredProcedure [dbo].[paCrearString]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paCrearString]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paCrearString]
GO
/****** Objeto:  StoredProcedure [dbo].[paStringUPD]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paStringUPD]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paStringUPD]
GO
/****** Objeto:  StoredProcedure [dbo].[paCrearSeguidor]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paCrearSeguidor]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paCrearSeguidor]
GO
/****** Objeto:  StoredProcedure [dbo].[paSeguidorUPD]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paSeguidorUPD]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paSeguidorUPD]
GO
/****** Objeto:  StoredProcedure [dbo].[paTareasDEL]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paTareasDEL]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paTareasDEL]
GO
/****** Objeto:  StoredProcedure [dbo].[paTareasUPD]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paTareasUPD]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paTareasUPD]
GO
/****** Objeto:  StoredProcedure [dbo].[paTareasINS]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paTareasINS]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paTareasINS]
GO
/****** Objeto:  StoredProcedure [dbo].[paGetTareas]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetTareas]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paGetTareas]
GO
/****** Objeto:  StoredProcedure [dbo].[paGetTareaByID]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetTareaByID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paGetTareaByID]
GO
/****** Objeto:  StoredProcedure [dbo].[paNivelesIncidenciaDEL]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paNivelesIncidenciaDEL]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paNivelesIncidenciaDEL]
GO
/****** Objeto:  StoredProcedure [dbo].[paGetDefIncidencias]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetDefIncidencias]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paGetDefIncidencias]
GO
/****** Objeto:  StoredProcedure [dbo].[paNivelesIncidenciaINS]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paNivelesIncidenciaINS]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paNivelesIncidenciaINS]
GO
/****** Objeto:  StoredProcedure [dbo].[paNivelesIncidenciaUPD]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paNivelesIncidenciaUPD]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paNivelesIncidenciaUPD]
GO
/****** Objeto:  StoredProcedure [dbo].[paAñadirSuceso]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paAñadirSuceso]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paAñadirSuceso]
GO
/****** Objeto:  Table [dbo].[SeguimientoPlantas]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SeguimientoPlantas]') AND type in (N'U'))
DROP TABLE [dbo].[SeguimientoPlantas]
GO
/****** Objeto:  Table [dbo].[aspnet_PersonalizationAllUsers]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_PersonalizationAllUsers]
GO
/****** Objeto:  Table [dbo].[aspnet_PersonalizationPerUser]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_PersonalizationPerUser]
GO
/****** Objeto:  Table [dbo].[aspnet_UsersInRoles]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_UsersInRoles]
GO
/****** Objeto:  Table [dbo].[aspnet_Profile]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_Profile]
GO
/****** Objeto:  Table [dbo].[aspnet_Membership]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_Membership]
GO
/****** Objeto:  Table [dbo].[aspnet_Paths]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_Paths]
GO
/****** Objeto:  Table [dbo].[aspnet_Roles]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_Roles]
GO
/****** Objeto:  Table [dbo].[aspnet_Users]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_Users]
GO
/****** Objeto:  Table [dbo].[Incidencias]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Incidencias]') AND type in (N'U'))
DROP TABLE [dbo].[Incidencias]
GO
/****** Objeto:  Table [dbo].[Paneles]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Paneles]') AND type in (N'U'))
DROP TABLE [dbo].[Paneles]
GO
/****** Objeto:  Table [dbo].[Seguidores]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Seguidores]') AND type in (N'U'))
DROP TABLE [dbo].[Seguidores]
GO
/****** Objeto:  Table [dbo].[Strings]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Strings]') AND type in (N'U'))
DROP TABLE [dbo].[Strings]
GO
/****** Objeto:  Table [dbo].[Inversores]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Inversores]') AND type in (N'U'))
DROP TABLE [dbo].[Inversores]
GO
/****** Objeto:  Table [dbo].[ClasificacionIncidencias]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClasificacionIncidencias]') AND type in (N'U'))
DROP TABLE [dbo].[ClasificacionIncidencias]
GO
/****** Objeto:  Table [dbo].[Plantas]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Plantas]') AND type in (N'U'))
DROP TABLE [dbo].[Plantas]
GO
/****** Objeto:  Table [dbo].[USUARIO-ALERTA]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USUARIO-ALERTA]') AND type in (N'U'))
DROP TABLE [dbo].[USUARIO-ALERTA]
GO
/****** Objeto:  StoredProcedure [dbo].[paRemoveAlertaFromCliente]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paRemoveAlertaFromCliente]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paRemoveAlertaFromCliente]
GO
/****** Objeto:  Table [dbo].[DefinicionAlertas]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DefinicionAlertas]') AND type in (N'U'))
DROP TABLE [dbo].[DefinicionAlertas]
GO
/****** Objeto:  Table [dbo].[CLIENTES-PLANTAS]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLIENTES-PLANTAS]') AND type in (N'U'))
DROP TABLE [dbo].[CLIENTES-PLANTAS]
GO
/****** Objeto:  Table [dbo].[CLIENTES-USUARIOS]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLIENTES-USUARIOS]') AND type in (N'U'))
DROP TABLE [dbo].[CLIENTES-USUARIOS]
GO
/****** Objeto:  Table [dbo].[CLIENTES]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLIENTES]') AND type in (N'U'))
DROP TABLE [dbo].[CLIENTES]
GO
/****** Objeto:  Table [dbo].[aspnet_Applications]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Applications]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_Applications]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Setup_RemoveAllRoleMembers]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
GO
/****** Objeto:  Table [dbo].[HistoricoMantenimientos]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HistoricoMantenimientos]') AND type in (N'U'))
DROP TABLE [dbo].[HistoricoMantenimientos]
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Setup_RestorePermissions]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
GO
/****** Objeto:  Table [dbo].[aspnet_WebEvent_Events]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_WebEvent_Events]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_WebEvent_Events]
GO
/****** Objeto:  Table [dbo].[subTareas]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[subTareas]') AND type in (N'U'))
DROP TABLE [dbo].[subTareas]
GO
/****** Objeto:  StoredProcedure [dbo].[paGetSubTareasByTarea]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetSubTareasByTarea]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paGetSubTareasByTarea]
GO
/****** Objeto:  Table [dbo].[aspnet_SchemaVersions]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_SchemaVersions]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_SchemaVersions]
GO
/****** Objeto:  Table [dbo].[OrdenesTrabajo]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrdenesTrabajo]') AND type in (N'U'))
DROP TABLE [dbo].[OrdenesTrabajo]
GO
/****** Objeto:  Table [dbo].[TrabajosMotivos]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TrabajosMotivos]') AND type in (N'U'))
DROP TABLE [dbo].[TrabajosMotivos]
GO
/****** Objeto:  Table [dbo].[Trabajos]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Trabajos]') AND type in (N'U'))
DROP TABLE [dbo].[Trabajos]
GO
/****** Objeto:  Table [dbo].[GrupoIncidencias]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GrupoIncidencias]') AND type in (N'U'))
DROP TABLE [dbo].[GrupoIncidencias]
GO
/****** Objeto:  StoredProcedure [dbo].[paGetSeguimiento]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetSeguimiento]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paGetSeguimiento]
GO
/****** Objeto:  StoredProcedure [dbo].[paClasificacionIncidenciaINS]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paClasificacionIncidenciaINS]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paClasificacionIncidenciaINS]
GO
/****** Objeto:  StoredProcedure [dbo].[paEliminarSeguidor]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paEliminarSeguidor]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paEliminarSeguidor]
GO
/****** Objeto:  StoredProcedure [dbo].[paEliminarString]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paEliminarString]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[paEliminarString]
GO
/****** Objeto:  Table [dbo].[Tareas]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tareas]') AND type in (N'U'))
DROP TABLE [dbo].[Tareas]
GO
/****** Objeto:  Table [dbo].[NivelesIncidencia]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NivelesIncidencia]') AND type in (N'U'))
DROP TABLE [dbo].[NivelesIncidencia]
GO
/****** Objeto:  Table [dbo].[VisorSucesos]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VisorSucesos]') AND type in (N'U'))
DROP TABLE [dbo].[VisorSucesos]
GO
/****** Objeto:  Table [dbo].[AccionReparacion]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AccionReparacion]') AND type in (N'U'))
DROP TABLE [dbo].[AccionReparacion]
GO
/****** Objeto:  Default [DF_AccionReparacion_idAccion]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_AccionReparacion_idAccion]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccionReparacion]'))
Begin
ALTER TABLE [dbo].[AccionReparacion] DROP CONSTRAINT [DF_AccionReparacion_idAccion]

End
GO
/****** Objeto:  Default [DF_AccionReparacion_orden]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_AccionReparacion_orden]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccionReparacion]'))
Begin
ALTER TABLE [dbo].[AccionReparacion] DROP CONSTRAINT [DF_AccionReparacion_orden]

End
GO
/****** Objeto:  Default [DF__aspnet_Ap__Appli__014935CB]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Ap__Appli__014935CB]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Applications]'))
Begin
ALTER TABLE [dbo].[aspnet_Applications] DROP CONSTRAINT [DF__aspnet_Ap__Appli__014935CB]

End
GO
/****** Objeto:  Default [DF__aspnet_Me__Passw__164452B1]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Me__Passw__164452B1]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
Begin
ALTER TABLE [dbo].[aspnet_Membership] DROP CONSTRAINT [DF__aspnet_Me__Passw__164452B1]

End
GO
/****** Objeto:  Default [DF__aspnet_Pa__PathI__46E78A0C]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Pa__PathI__46E78A0C]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]'))
Begin
ALTER TABLE [dbo].[aspnet_Paths] DROP CONSTRAINT [DF__aspnet_Pa__PathI__46E78A0C]

End
GO
/****** Objeto:  Default [DF__aspnet_Perso__Id__4E88ABD4]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Perso__Id__4E88ABD4]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
Begin
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] DROP CONSTRAINT [DF__aspnet_Perso__Id__4E88ABD4]

End
GO
/****** Objeto:  Default [DF__aspnet_Ro__RoleI__33D4B598]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Ro__RoleI__33D4B598]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]'))
Begin
ALTER TABLE [dbo].[aspnet_Roles] DROP CONSTRAINT [DF__aspnet_Ro__RoleI__33D4B598]

End
GO
/****** Objeto:  Default [DF__aspnet_Us__UserI__0519C6AF]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Us__UserI__0519C6AF]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
Begin
ALTER TABLE [dbo].[aspnet_Users] DROP CONSTRAINT [DF__aspnet_Us__UserI__0519C6AF]

End
GO
/****** Objeto:  Default [DF__aspnet_Us__Mobil__060DEAE8]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Us__Mobil__060DEAE8]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
Begin
ALTER TABLE [dbo].[aspnet_Users] DROP CONSTRAINT [DF__aspnet_Us__Mobil__060DEAE8]

End
GO
/****** Objeto:  Default [DF__aspnet_Us__IsAno__07020F21]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Us__IsAno__07020F21]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
Begin
ALTER TABLE [dbo].[aspnet_Users] DROP CONSTRAINT [DF__aspnet_Us__IsAno__07020F21]

End
GO
/****** Objeto:  Default [DF_ClasificacionIncidencias_ID]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_ClasificacionIncidencias_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClasificacionIncidencias]'))
Begin
ALTER TABLE [dbo].[ClasificacionIncidencias] DROP CONSTRAINT [DF_ClasificacionIncidencias_ID]

End
GO
/****** Objeto:  Default [DF_ClasificacionIncidencias_Coste]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_ClasificacionIncidencias_Coste]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClasificacionIncidencias]'))
Begin
ALTER TABLE [dbo].[ClasificacionIncidencias] DROP CONSTRAINT [DF_ClasificacionIncidencias_Coste]

End
GO
/****** Objeto:  Default [DF_DefinicionAlertas_idAlerta]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_DefinicionAlertas_idAlerta]') AND parent_object_id = OBJECT_ID(N'[dbo].[DefinicionAlertas]'))
Begin
ALTER TABLE [dbo].[DefinicionAlertas] DROP CONSTRAINT [DF_DefinicionAlertas_idAlerta]

End
GO
/****** Objeto:  Default [DF_DefinicionAlertas_Habilitada]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_DefinicionAlertas_Habilitada]') AND parent_object_id = OBJECT_ID(N'[dbo].[DefinicionAlertas]'))
Begin
ALTER TABLE [dbo].[DefinicionAlertas] DROP CONSTRAINT [DF_DefinicionAlertas_Habilitada]

End
GO
/****** Objeto:  Default [DF_HistoricoMantenimientos_Estado]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_HistoricoMantenimientos_Estado]') AND parent_object_id = OBJECT_ID(N'[dbo].[HistoricoMantenimientos]'))
Begin
ALTER TABLE [dbo].[HistoricoMantenimientos] DROP CONSTRAINT [DF_HistoricoMantenimientos_Estado]

End
GO
/****** Objeto:  Default [DF_Incidencias_ID]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Incidencias_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Incidencias]'))
Begin
ALTER TABLE [dbo].[Incidencias] DROP CONSTRAINT [DF_Incidencias_ID]

End
GO
/****** Objeto:  Default [DF_OrdenesTrabajo_idOrden]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_OrdenesTrabajo_idOrden]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrdenesTrabajo]'))
Begin
ALTER TABLE [dbo].[OrdenesTrabajo] DROP CONSTRAINT [DF_OrdenesTrabajo_idOrden]

End
GO
/****** Objeto:  Default [DF_Tareas_idTarea]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Tareas_idTarea]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tareas]'))
Begin
ALTER TABLE [dbo].[Tareas] DROP CONSTRAINT [DF_Tareas_idTarea]

End
GO
/****** Objeto:  Default [DF_Tareas_Habilitada]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Tareas_Habilitada]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tareas]'))
Begin
ALTER TABLE [dbo].[Tareas] DROP CONSTRAINT [DF_Tareas_Habilitada]

End
GO
/****** Objeto:  Default [DF_Trabajos_idTrabajo]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Trabajos_idTrabajo]') AND parent_object_id = OBJECT_ID(N'[dbo].[Trabajos]'))
Begin
ALTER TABLE [dbo].[Trabajos] DROP CONSTRAINT [DF_Trabajos_idTrabajo]

End
GO
/****** Objeto:  Default [DF_USUARIO-ALERTA_Diaria]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_USUARIO-ALERTA_Diaria]') AND parent_object_id = OBJECT_ID(N'[dbo].[USUARIO-ALERTA]'))
Begin
ALTER TABLE [dbo].[USUARIO-ALERTA] DROP CONSTRAINT [DF_USUARIO-ALERTA_Diaria]

End
GO
/****** Objeto:  Default [DF_USUARIO-ALERTA_Estado]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_USUARIO-ALERTA_Estado]') AND parent_object_id = OBJECT_ID(N'[dbo].[USUARIO-ALERTA]'))
Begin
ALTER TABLE [dbo].[USUARIO-ALERTA] DROP CONSTRAINT [DF_USUARIO-ALERTA_Estado]

End
GO
/****** Objeto:  Default [DF_USUARIO-ALERTA_Instantanea]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_USUARIO-ALERTA_Instantanea]') AND parent_object_id = OBJECT_ID(N'[dbo].[USUARIO-ALERTA]'))
Begin
ALTER TABLE [dbo].[USUARIO-ALERTA] DROP CONSTRAINT [DF_USUARIO-ALERTA_Instantanea]

End
GO
/****** Objeto:  Default [DF_USUARIO-ALERTA_Email]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_USUARIO-ALERTA_Email]') AND parent_object_id = OBJECT_ID(N'[dbo].[USUARIO-ALERTA]'))
Begin
ALTER TABLE [dbo].[USUARIO-ALERTA] DROP CONSTRAINT [DF_USUARIO-ALERTA_Email]

End
GO
/****** Objeto:  Schema [aspnet_Membership_BasicAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:31 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_BasicAccess')
DROP SCHEMA [aspnet_Membership_BasicAccess]
GO
/****** Objeto:  Schema [aspnet_Membership_FullAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:31 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_FullAccess')
DROP SCHEMA [aspnet_Membership_FullAccess]
GO
/****** Objeto:  Schema [aspnet_Membership_ReportingAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:31 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_ReportingAccess')
DROP SCHEMA [aspnet_Membership_ReportingAccess]
GO
/****** Objeto:  Schema [aspnet_Personalization_BasicAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:31 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_BasicAccess')
DROP SCHEMA [aspnet_Personalization_BasicAccess]
GO
/****** Objeto:  Schema [aspnet_Personalization_FullAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:31 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_FullAccess')
DROP SCHEMA [aspnet_Personalization_FullAccess]
GO
/****** Objeto:  Schema [aspnet_Personalization_ReportingAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:32 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_ReportingAccess')
DROP SCHEMA [aspnet_Personalization_ReportingAccess]
GO
/****** Objeto:  Schema [aspnet_Profile_BasicAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:32 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_BasicAccess')
DROP SCHEMA [aspnet_Profile_BasicAccess]
GO
/****** Objeto:  Schema [aspnet_Profile_FullAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:32 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_FullAccess')
DROP SCHEMA [aspnet_Profile_FullAccess]
GO
/****** Objeto:  Schema [aspnet_Profile_ReportingAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:32 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_ReportingAccess')
DROP SCHEMA [aspnet_Profile_ReportingAccess]
GO
/****** Objeto:  Schema [aspnet_Roles_BasicAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:32 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_BasicAccess')
DROP SCHEMA [aspnet_Roles_BasicAccess]
GO
/****** Objeto:  Schema [aspnet_Roles_FullAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:32 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_FullAccess')
DROP SCHEMA [aspnet_Roles_FullAccess]
GO
/****** Objeto:  Schema [aspnet_Roles_ReportingAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:32 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_ReportingAccess')
DROP SCHEMA [aspnet_Roles_ReportingAccess]
GO
/****** Objeto:  Schema [aspnet_WebEvent_FullAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:32 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_WebEvent_FullAccess')
DROP SCHEMA [aspnet_WebEvent_FullAccess]
GO
/****** Objeto:  Role [aspnet_Membership_BasicAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Membership_BasicAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from dbo.sysusers 
	where uid in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_BasicAccess' AND type = 'R')
DROP ROLE [aspnet_Membership_BasicAccess]
GO
/****** Objeto:  Role [aspnet_Membership_FullAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Membership_FullAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from dbo.sysusers 
	where uid in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_FullAccess' AND type = 'R')
DROP ROLE [aspnet_Membership_FullAccess]
GO
/****** Objeto:  Role [aspnet_Membership_ReportingAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Membership_ReportingAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from dbo.sysusers 
	where uid in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_ReportingAccess' AND type = 'R')
DROP ROLE [aspnet_Membership_ReportingAccess]
GO
/****** Objeto:  Role [aspnet_Personalization_BasicAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Personalization_BasicAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from dbo.sysusers 
	where uid in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_BasicAccess' AND type = 'R')
DROP ROLE [aspnet_Personalization_BasicAccess]
GO
/****** Objeto:  Role [aspnet_Personalization_FullAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Personalization_FullAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from dbo.sysusers 
	where uid in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_FullAccess' AND type = 'R')
DROP ROLE [aspnet_Personalization_FullAccess]
GO
/****** Objeto:  Role [aspnet_Personalization_ReportingAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Personalization_ReportingAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from dbo.sysusers 
	where uid in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_ReportingAccess' AND type = 'R')
DROP ROLE [aspnet_Personalization_ReportingAccess]
GO
/****** Objeto:  Role [aspnet_Profile_BasicAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Profile_BasicAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from dbo.sysusers 
	where uid in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_BasicAccess' AND type = 'R')
DROP ROLE [aspnet_Profile_BasicAccess]
GO
/****** Objeto:  Role [aspnet_Profile_FullAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:31 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Profile_FullAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from dbo.sysusers 
	where uid in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_FullAccess' AND type = 'R')
DROP ROLE [aspnet_Profile_FullAccess]
GO
/****** Objeto:  Role [aspnet_Profile_ReportingAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:31 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Profile_ReportingAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from dbo.sysusers 
	where uid in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_ReportingAccess' AND type = 'R')
DROP ROLE [aspnet_Profile_ReportingAccess]
GO
/****** Objeto:  Role [aspnet_Roles_BasicAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:31 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Roles_BasicAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from dbo.sysusers 
	where uid in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_BasicAccess' AND type = 'R')
DROP ROLE [aspnet_Roles_BasicAccess]
GO
/****** Objeto:  Role [aspnet_Roles_FullAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:31 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Roles_FullAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from dbo.sysusers 
	where uid in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_FullAccess' AND type = 'R')
DROP ROLE [aspnet_Roles_FullAccess]
GO
/****** Objeto:  Role [aspnet_Roles_ReportingAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:31 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Roles_ReportingAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from dbo.sysusers 
	where uid in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_ReportingAccess' AND type = 'R')
DROP ROLE [aspnet_Roles_ReportingAccess]
GO
/****** Objeto:  Role [aspnet_WebEvent_FullAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:31 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_WebEvent_FullAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from dbo.sysusers 
	where uid in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_WebEvent_FullAccess' AND type = 'R')
DROP ROLE [aspnet_WebEvent_FullAccess]
GO
/****** Objeto:  Role [aspnet_Membership_BasicAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_BasicAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_BasicAccess' AND type = 'R')
CREATE ROLE [aspnet_Membership_BasicAccess] AUTHORIZATION [dbo]

END
GO
/****** Objeto:  Role [aspnet_Membership_FullAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_FullAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_Membership_FullAccess] AUTHORIZATION [dbo]

END
GO
/****** Objeto:  Role [aspnet_Membership_ReportingAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_ReportingAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_ReportingAccess' AND type = 'R')
CREATE ROLE [aspnet_Membership_ReportingAccess] AUTHORIZATION [dbo]

END
GO
/****** Objeto:  Role [aspnet_Personalization_BasicAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_BasicAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_BasicAccess' AND type = 'R')
CREATE ROLE [aspnet_Personalization_BasicAccess] AUTHORIZATION [dbo]

END
GO
/****** Objeto:  Role [aspnet_Personalization_FullAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_FullAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_Personalization_FullAccess] AUTHORIZATION [dbo]

END
GO
/****** Objeto:  Role [aspnet_Personalization_ReportingAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_ReportingAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_ReportingAccess' AND type = 'R')
CREATE ROLE [aspnet_Personalization_ReportingAccess] AUTHORIZATION [dbo]

END
GO
/****** Objeto:  Role [aspnet_Profile_BasicAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_BasicAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_BasicAccess' AND type = 'R')
CREATE ROLE [aspnet_Profile_BasicAccess] AUTHORIZATION [dbo]

END
GO
/****** Objeto:  Role [aspnet_Profile_FullAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:31 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_FullAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_Profile_FullAccess] AUTHORIZATION [dbo]

END
GO
/****** Objeto:  Role [aspnet_Profile_ReportingAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:31 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_ReportingAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_ReportingAccess' AND type = 'R')
CREATE ROLE [aspnet_Profile_ReportingAccess] AUTHORIZATION [dbo]

END
GO
/****** Objeto:  Role [aspnet_Roles_BasicAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:31 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_BasicAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_BasicAccess' AND type = 'R')
CREATE ROLE [aspnet_Roles_BasicAccess] AUTHORIZATION [dbo]

END
GO
/****** Objeto:  Role [aspnet_Roles_FullAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:31 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_FullAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_Roles_FullAccess] AUTHORIZATION [dbo]

END
GO
/****** Objeto:  Role [aspnet_Roles_ReportingAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:31 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_ReportingAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_ReportingAccess' AND type = 'R')
CREATE ROLE [aspnet_Roles_ReportingAccess] AUTHORIZATION [dbo]

END
GO
/****** Objeto:  Role [aspnet_WebEvent_FullAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:31 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_WebEvent_FullAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_WebEvent_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_WebEvent_FullAccess] AUTHORIZATION [dbo]

END
GO
/****** Objeto:  Schema [aspnet_Membership_BasicAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:31 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_BasicAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Membership_BasicAccess] AUTHORIZATION [aspnet_Membership_BasicAccess]'
GO
/****** Objeto:  Schema [aspnet_Membership_FullAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:31 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Membership_FullAccess] AUTHORIZATION [aspnet_Membership_FullAccess]'
GO
/****** Objeto:  Schema [aspnet_Membership_ReportingAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:31 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_ReportingAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Membership_ReportingAccess] AUTHORIZATION [aspnet_Membership_ReportingAccess]'
GO
/****** Objeto:  Schema [aspnet_Personalization_BasicAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:31 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_BasicAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Personalization_BasicAccess] AUTHORIZATION [aspnet_Personalization_BasicAccess]'
GO
/****** Objeto:  Schema [aspnet_Personalization_FullAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:31 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Personalization_FullAccess] AUTHORIZATION [aspnet_Personalization_FullAccess]'
GO
/****** Objeto:  Schema [aspnet_Personalization_ReportingAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:32 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_ReportingAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Personalization_ReportingAccess] AUTHORIZATION [aspnet_Personalization_ReportingAccess]'
GO
/****** Objeto:  Schema [aspnet_Profile_BasicAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:32 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_BasicAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Profile_BasicAccess] AUTHORIZATION [aspnet_Profile_BasicAccess]'
GO
/****** Objeto:  Schema [aspnet_Profile_FullAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:32 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Profile_FullAccess] AUTHORIZATION [aspnet_Profile_FullAccess]'
GO
/****** Objeto:  Schema [aspnet_Profile_ReportingAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:32 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_ReportingAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Profile_ReportingAccess] AUTHORIZATION [aspnet_Profile_ReportingAccess]'
GO
/****** Objeto:  Schema [aspnet_Roles_BasicAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:32 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_BasicAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Roles_BasicAccess] AUTHORIZATION [aspnet_Roles_BasicAccess]'
GO
/****** Objeto:  Schema [aspnet_Roles_FullAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:32 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Roles_FullAccess] AUTHORIZATION [aspnet_Roles_FullAccess]'
GO
/****** Objeto:  Schema [aspnet_Roles_ReportingAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:32 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_ReportingAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Roles_ReportingAccess] AUTHORIZATION [aspnet_Roles_ReportingAccess]'
GO
/****** Objeto:  Schema [aspnet_WebEvent_FullAccess]    Fecha de la secuencia de comandos: 03/01/2009 23:54:32 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_WebEvent_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_WebEvent_FullAccess] AUTHORIZATION [aspnet_WebEvent_FullAccess]'
GO
/****** Objeto:  Table [dbo].[AccionReparacion]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
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
/****** Objeto:  Table [dbo].[VisorSucesos]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VisorSucesos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VisorSucesos](
	[Suceso] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[AfectaA] [nvarchar](max) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[Fecha] [datetime] NOT NULL
)
END
GO
INSERT [dbo].[VisorSucesos] ([Suceso], [AfectaA], [Fecha]) VALUES (N'CrearComponente', N'INV-9876', CAST(0x00009BBE00D8940B AS DateTime))
INSERT [dbo].[VisorSucesos] ([Suceso], [AfectaA], [Fecha]) VALUES (N'ModificarComponente', N'INV-9876', CAST(0x00009BBE0113CF2A AS DateTime))
INSERT [dbo].[VisorSucesos] ([Suceso], [AfectaA], [Fecha]) VALUES (N'BorrarComponente', N'INV-9876', CAST(0x00009BBE011EA700 AS DateTime))
INSERT [dbo].[VisorSucesos] ([Suceso], [AfectaA], [Fecha]) VALUES (N'BorrarComponente', N'INV-012346', CAST(0x00009BBE011EA932 AS DateTime))
INSERT [dbo].[VisorSucesos] ([Suceso], [AfectaA], [Fecha]) VALUES (N'BorrarComponente', N'INV-012345', CAST(0x00009BBE011EAB6E AS DateTime))
INSERT [dbo].[VisorSucesos] ([Suceso], [AfectaA], [Fecha]) VALUES (N'BorrarComponente', N'C1-09-09', CAST(0x00009BBE011EDC5E AS DateTime))
INSERT [dbo].[VisorSucesos] ([Suceso], [AfectaA], [Fecha]) VALUES (N'ModificarAlerta', N'Alerta: a3fc9fb4-399d-430c-afa3-20352bc608e5, Usuario: 6440cf07-c2cb-468e-bccb-07bc1232572a', CAST(0x00009BBE011EF609 AS DateTime))
INSERT [dbo].[VisorSucesos] ([Suceso], [AfectaA], [Fecha]) VALUES (N'BorrarAlerta', N'Alerta: a3fc9fb4-399d-430c-afa3-20352bc608e5, Usuario: 6440cf07-c2cb-468e-bccb-07bc1232572a', CAST(0x00009BBE011F0ED1 AS DateTime))
INSERT [dbo].[VisorSucesos] ([Suceso], [AfectaA], [Fecha]) VALUES (N'BorrarAlerta', N'Alerta: 4416642f-fb19-46c7-8d7b-6225d84d45a6, Usuario: 6440cf07-c2cb-468e-bccb-07bc1232572a', CAST(0x00009BBE011F10B8 AS DateTime))
INSERT [dbo].[VisorSucesos] ([Suceso], [AfectaA], [Fecha]) VALUES (N'BorrarAlerta', N'Alerta: 1a069338-4a0f-4c8f-8894-d3e128d53431, Usuario: 6440cf07-c2cb-468e-bccb-07bc1232572a', CAST(0x00009BBE011F1213 AS DateTime))
INSERT [dbo].[VisorSucesos] ([Suceso], [AfectaA], [Fecha]) VALUES (N'ModificarComponente', N'C1-01-01', CAST(0x00009BBE011F3D2D AS DateTime))
INSERT [dbo].[VisorSucesos] ([Suceso], [AfectaA], [Fecha]) VALUES (N'AccionSeguimiento', N'C1-01-01', CAST(0x00009BBE011F3D40 AS DateTime))
INSERT [dbo].[VisorSucesos] ([Suceso], [AfectaA], [Fecha]) VALUES (N'ModificarComponente', N'C1-02-02', CAST(0x00009BBE011F7004 AS DateTime))
INSERT [dbo].[VisorSucesos] ([Suceso], [AfectaA], [Fecha]) VALUES (N'AltaTarea', N'_Incidencia', CAST(0x00009BBE011F7016 AS DateTime))
INSERT [dbo].[VisorSucesos] ([Suceso], [AfectaA], [Fecha]) VALUES (N'AltaIncidencia', N'C1-02-02', CAST(0x00009BBE011F7016 AS DateTime))
INSERT [dbo].[VisorSucesos] ([Suceso], [AfectaA], [Fecha]) VALUES (N'BajaTarea', N'545039fb-2817-4746-a7e2-4b58b10bc63f', CAST(0x00009BBE012F8BD1 AS DateTime))
INSERT [dbo].[VisorSucesos] ([Suceso], [AfectaA], [Fecha]) VALUES (N'BajaIncidencia', N'C1-02-02', CAST(0x00009BBE012F8BDB AS DateTime))
INSERT [dbo].[VisorSucesos] ([Suceso], [AfectaA], [Fecha]) VALUES (N'BajaTarea', N'545039fb-2817-4746-a7e2-4b58b10bc63f', CAST(0x00009BBE012FA7F2 AS DateTime))
INSERT [dbo].[VisorSucesos] ([Suceso], [AfectaA], [Fecha]) VALUES (N'BajaIncidencia', N'C1-02-02', CAST(0x00009BBE012FA7F4 AS DateTime))
/****** Objeto:  Table [dbo].[NivelesIncidencia]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
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
SET IDENTITY_INSERT [dbo].[NivelesIncidencia] OFF
/****** Objeto:  Table [dbo].[Tareas]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
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
INSERT [dbo].[Tareas] ([idTarea], [Descripcion], [Periodo], [Habilitada], [TipoComponente]) VALUES (N'5feafaf5-c36f-46e8-bb28-23034b33b99f', N'Limpieza de Paneles', 12, 0, 6)
INSERT [dbo].[Tareas] ([idTarea], [Descripcion], [Periodo], [Habilitada], [TipoComponente]) VALUES (N'acaf38ce-7078-44e4-861b-787b8f657b79', N'Mantenimiento de Inversor Anual', 12, 0, 4)
INSERT [dbo].[Tareas] ([idTarea], [Descripcion], [Periodo], [Habilitada], [TipoComponente]) VALUES (N'5af36879-2139-4856-ad5f-95f4fc3e5e98', N'Inspección visual de Plantas', 1, 0, 6)
INSERT [dbo].[Tareas] ([idTarea], [Descripcion], [Periodo], [Habilitada], [TipoComponente]) VALUES (N'43d9a7f9-9742-41b5-99a1-aaf6cc407896', N'Mantenimiento de Inversor Semestral', 6, 0, 4)
INSERT [dbo].[Tareas] ([idTarea], [Descripcion], [Periodo], [Habilitada], [TipoComponente]) VALUES (N'31e88702-bf6f-4946-bc43-e10b80d0f906', N'Mantenimiento String Semestral', 6, 0, 5)
/****** Objeto:  StoredProcedure [dbo].[paEliminarString]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
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
/****** Objeto:  StoredProcedure [dbo].[paEliminarSeguidor]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
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
/****** Objeto:  StoredProcedure [dbo].[paClasificacionIncidenciaINS]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
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
/****** Objeto:  StoredProcedure [dbo].[paGetSeguimiento]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
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
/****** Objeto:  Table [dbo].[GrupoIncidencias]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
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
INSERT [dbo].[GrupoIncidencias] ([ID], [Nombre], [Descripcion]) VALUES (8, N'PLANTA', N'Incidencias relacionadas con la Planta')
SET IDENTITY_INSERT [dbo].[GrupoIncidencias] OFF
/****** Objeto:  Table [dbo].[Trabajos]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
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
/****** Objeto:  Table [dbo].[TrabajosMotivos]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
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
/****** Objeto:  Table [dbo].[OrdenesTrabajo]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
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
INSERT [dbo].[OrdenesTrabajo] ([idOrden], [FechaInicio], [FechaFinEstimada], [FechaFin], [Descripcion], [idMotivo], [Observaciones], [idUsuario], [TipoMotivo]) VALUES (N'5749ddee-d615-4076-aad2-c79d1667e8fb', CAST(0x00009BBE011F7008 AS DateTime), CAST(0x00009BBF0038B994 AS DateTime), CAST(0x00009BBE012FA7F1 AS DateTime), N'Solucionar Incidencia', N'545039fb-2817-4746-a7e2-4b58b10bc63f', N'', N'00000000-0000-0000-0000-000000000000', 1)
/****** Objeto:  Table [dbo].[aspnet_SchemaVersions]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_SchemaVersions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
 CONSTRAINT [PK__aspnet_SchemaVer__08EA5793] PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'common', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'health monitoring', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'membership', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'personalization', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'profile', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'role manager', N'1', 1)
/****** Objeto:  StoredProcedure [dbo].[paGetSubTareasByTarea]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetSubTareasByTarea]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paGetSubTareasByTarea]
	(
		@idTarea uniqueidentifier
	)
AS
	SELECT        id, idTarea, Descripcion
	FROM            subTareas
	WHERE        (idTarea = @idTarea)
	RETURN
' 
END
GO
/****** Objeto:  Table [dbo].[subTareas]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[subTareas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[subTareas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idTarea] [uniqueidentifier] NOT NULL,
	[Descripcion] [nvarchar](250) COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK_subTareas] PRIMARY KEY CLUSTERED 
(
	[idTarea] ASC,
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Objeto:  Table [dbo].[aspnet_WebEvent_Events]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_WebEvent_Events]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_WebEvent_Events](
	[EventId] [char](32) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[EventTimeUtc] [datetime] NOT NULL,
	[EventTime] [datetime] NOT NULL,
	[EventType] [nvarchar](256) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[EventSequence] [decimal](19, 0) NOT NULL,
	[EventOccurrence] [decimal](19, 0) NOT NULL,
	[EventCode] [int] NOT NULL,
	[EventDetailCode] [int] NOT NULL,
	[Message] [nvarchar](1024) COLLATE Modern_Spanish_CI_AS NULL,
	[ApplicationPath] [nvarchar](256) COLLATE Modern_Spanish_CI_AS NULL,
	[ApplicationVirtualPath] [nvarchar](256) COLLATE Modern_Spanish_CI_AS NULL,
	[MachineName] [nvarchar](256) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[RequestUrl] [nvarchar](1024) COLLATE Modern_Spanish_CI_AS NULL,
	[ExceptionType] [nvarchar](256) COLLATE Modern_Spanish_CI_AS NULL,
	[Details] [ntext] COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK__aspnet_WebEvent___5FB337D6] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Setup_RestorePermissions]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
    @name   sysname
AS
BEGIN
    DECLARE @object sysname
    DECLARE @protectType char(10)
    DECLARE @action varchar(60)
    DECLARE @grantee sysname
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT Object, ProtectType, [Action], Grantee FROM #aspnet_Permissions where Object = @name

    OPEN c1

    FETCH c1 INTO @object, @protectType, @action, @grantee
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = @protectType + '' '' + @action + '' on '' + @object + '' TO ['' + @grantee + '']''
        EXEC (@cmd)
        FETCH c1 INTO @object, @protectType, @action, @grantee
    END

    CLOSE c1
    DEALLOCATE c1
END' 
END
GO
/****** Objeto:  Table [dbo].[HistoricoMantenimientos]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HistoricoMantenimientos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HistoricoMantenimientos](
	[Componente] [nchar](15) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[idTarea] [uniqueidentifier] NOT NULL,
	[idSubTarea] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Caduca] [datetime] NOT NULL,
	[Estado] [bit] NOT NULL,
	[Observaciones] [nvarchar](max) COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK_HistoricoMantenimientos_1] PRIMARY KEY CLUSTERED 
(
	[Componente] ASC,
	[idTarea] ASC,
	[idSubTarea] ASC,
	[Fecha] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Setup_RemoveAllRoleMembers]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
    @name   sysname
AS
BEGIN
    CREATE TABLE #aspnet_RoleMembers
    (
        Group_name      sysname,
        Group_id        smallint,
        Users_in_group  sysname,
        User_id         smallint
    )

    INSERT INTO #aspnet_RoleMembers
    EXEC sp_helpuser @name

    DECLARE @user_id smallint
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT User_id FROM #aspnet_RoleMembers

    OPEN c1

    FETCH c1 INTO @user_id
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = ''EXEC sp_droprolemember '' + '''''''' + @name + '''''', '''''' + USER_NAME(@user_id) + ''''''''
        EXEC (@cmd)
        FETCH c1 INTO @user_id
    END

    CLOSE c1
    DEALLOCATE c1
END' 
END
GO
/****** Objeto:  Table [dbo].[aspnet_Applications]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Applications]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationName] [nvarchar](256) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[LoweredApplicationName] [nvarchar](256) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](256) COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK__aspnet_Applicati__7E6CC920] PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON),
 CONSTRAINT [UQ__aspnet_Applicati__00551192] UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON),
 CONSTRAINT [UQ__aspnet_Applicati__7F60ED59] UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Applications]') AND name = N'aspnet_Applications_Index')
CREATE CLUSTERED INDEX [aspnet_Applications_Index] ON [dbo].[aspnet_Applications] 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
INSERT [dbo].[aspnet_Applications] ([ApplicationName], [LoweredApplicationName], [ApplicationId], [Description]) VALUES (N'/', N'/', N'2b56125d-a8f8-4e7c-b663-af66f3623997', NULL)
/****** Objeto:  Table [dbo].[CLIENTES]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLIENTES]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CLIENTES](
	[idCliente] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[Direccion] [nvarchar](max) COLLATE Modern_Spanish_CI_AS NULL,
	[Telefono] [nchar](10) COLLATE Modern_Spanish_CI_AS NULL,
	[Email] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK_CLIENTES] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[CLIENTES] ON
INSERT [dbo].[CLIENTES] ([idCliente], [Nombre], [Direccion], [Telefono], [Email]) VALUES (1, N'IGM', N'Torneo', N'954951006 ', N'mtv@igmsl.es')
INSERT [dbo].[CLIENTES] ([idCliente], [Nombre], [Direccion], [Telefono], [Email]) VALUES (2, N'ASTROREY ENERGÍA', N'República Argentina 15', N'954991335 ', N'anaranjo@astroreyenergia.es')
SET IDENTITY_INSERT [dbo].[CLIENTES] OFF
/****** Objeto:  Table [dbo].[CLIENTES-USUARIOS]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLIENTES-USUARIOS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CLIENTES-USUARIOS](
	[idCliente] [int] NOT NULL,
	[idUsuario] [uniqueidentifier] NOT NULL
)
END
GO
INSERT [dbo].[CLIENTES-USUARIOS] ([idCliente], [idUsuario]) VALUES (1, N'6440cf07-c2cb-468e-bccb-07bc1232572a')
/****** Objeto:  Table [dbo].[CLIENTES-PLANTAS]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLIENTES-PLANTAS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CLIENTES-PLANTAS](
	[idCliente] [int] NOT NULL,
	[NSeriePlanta] [nchar](15) COLLATE Modern_Spanish_CI_AS NOT NULL
)
END
GO
INSERT [dbo].[CLIENTES-PLANTAS] ([idCliente], [NSeriePlanta]) VALUES (2, N'C1-02-02       ')
INSERT [dbo].[CLIENTES-PLANTAS] ([idCliente], [NSeriePlanta]) VALUES (2, N'c1-02-02       ')
INSERT [dbo].[CLIENTES-PLANTAS] ([idCliente], [NSeriePlanta]) VALUES (2, N'C1-03-03       ')
INSERT [dbo].[CLIENTES-PLANTAS] ([idCliente], [NSeriePlanta]) VALUES (2, N'C1-02-02       ')
INSERT [dbo].[CLIENTES-PLANTAS] ([idCliente], [NSeriePlanta]) VALUES (2, N'C1-03-03       ')
INSERT [dbo].[CLIENTES-PLANTAS] ([idCliente], [NSeriePlanta]) VALUES (2, N'C1-04-04       ')
INSERT [dbo].[CLIENTES-PLANTAS] ([idCliente], [NSeriePlanta]) VALUES (2, N'C1-02-02       ')
INSERT [dbo].[CLIENTES-PLANTAS] ([idCliente], [NSeriePlanta]) VALUES (2, N'C1-03-03       ')
INSERT [dbo].[CLIENTES-PLANTAS] ([idCliente], [NSeriePlanta]) VALUES (2, N'C1-04-04       ')
INSERT [dbo].[CLIENTES-PLANTAS] ([idCliente], [NSeriePlanta]) VALUES (2, N'C1-05-05       ')
INSERT [dbo].[CLIENTES-PLANTAS] ([idCliente], [NSeriePlanta]) VALUES (2, N'C1-04-04       ')
INSERT [dbo].[CLIENTES-PLANTAS] ([idCliente], [NSeriePlanta]) VALUES (2, N'C1-06-06       ')
INSERT [dbo].[CLIENTES-PLANTAS] ([idCliente], [NSeriePlanta]) VALUES (1, N'C1-01-01       ')
INSERT [dbo].[CLIENTES-PLANTAS] ([idCliente], [NSeriePlanta]) VALUES (1, N'C1-02-02       ')
INSERT [dbo].[CLIENTES-PLANTAS] ([idCliente], [NSeriePlanta]) VALUES (1, N'C1-03-03       ')
INSERT [dbo].[CLIENTES-PLANTAS] ([idCliente], [NSeriePlanta]) VALUES (1, N'C1-04-04       ')
INSERT [dbo].[CLIENTES-PLANTAS] ([idCliente], [NSeriePlanta]) VALUES (2, N'C1-02-02       ')
INSERT [dbo].[CLIENTES-PLANTAS] ([idCliente], [NSeriePlanta]) VALUES (2, N'C1-03-03       ')
INSERT [dbo].[CLIENTES-PLANTAS] ([idCliente], [NSeriePlanta]) VALUES (2, N'C1-04-04       ')
INSERT [dbo].[CLIENTES-PLANTAS] ([idCliente], [NSeriePlanta]) VALUES (2, N'C1-05-05       ')
INSERT [dbo].[CLIENTES-PLANTAS] ([idCliente], [NSeriePlanta]) VALUES (2, N'C1-06-06       ')
INSERT [dbo].[CLIENTES-PLANTAS] ([idCliente], [NSeriePlanta]) VALUES (2, N'C1-01-01       ')
INSERT [dbo].[CLIENTES-PLANTAS] ([idCliente], [NSeriePlanta]) VALUES (2, N'C1-02-02       ')
INSERT [dbo].[CLIENTES-PLANTAS] ([idCliente], [NSeriePlanta]) VALUES (2, N'C1-03-03       ')
INSERT [dbo].[CLIENTES-PLANTAS] ([idCliente], [NSeriePlanta]) VALUES (2, N'C1-04-04       ')
INSERT [dbo].[CLIENTES-PLANTAS] ([idCliente], [NSeriePlanta]) VALUES (2, N'C1-05-05       ')
INSERT [dbo].[CLIENTES-PLANTAS] ([idCliente], [NSeriePlanta]) VALUES (2, N'C1-06-06       ')
INSERT [dbo].[CLIENTES-PLANTAS] ([idCliente], [NSeriePlanta]) VALUES (2, N'C1-07-07       ')
INSERT [dbo].[CLIENTES-PLANTAS] ([idCliente], [NSeriePlanta]) VALUES (2, N'C1-08-08       ')
INSERT [dbo].[CLIENTES-PLANTAS] ([idCliente], [NSeriePlanta]) VALUES (1, N'C1-01-01       ')
INSERT [dbo].[CLIENTES-PLANTAS] ([idCliente], [NSeriePlanta]) VALUES (1, N'C1-02-02       ')
INSERT [dbo].[CLIENTES-PLANTAS] ([idCliente], [NSeriePlanta]) VALUES (1, N'C1-03-03       ')
INSERT [dbo].[CLIENTES-PLANTAS] ([idCliente], [NSeriePlanta]) VALUES (1, N'C1-04-04       ')
INSERT [dbo].[CLIENTES-PLANTAS] ([idCliente], [NSeriePlanta]) VALUES (1, N'C1-05-05       ')
INSERT [dbo].[CLIENTES-PLANTAS] ([idCliente], [NSeriePlanta]) VALUES (1, N'C1-06-06       ')
INSERT [dbo].[CLIENTES-PLANTAS] ([idCliente], [NSeriePlanta]) VALUES (1, N'C1-07-07       ')
INSERT [dbo].[CLIENTES-PLANTAS] ([idCliente], [NSeriePlanta]) VALUES (1, N'C1-08-08       ')
/****** Objeto:  Table [dbo].[DefinicionAlertas]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DefinicionAlertas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DefinicionAlertas](
	[idAlerta] [uniqueidentifier] NOT NULL,
	[Descripcion] [nvarchar](max) COLLATE Modern_Spanish_CI_AS NULL,
	[Habilitada] [bit] NOT NULL,
 CONSTRAINT [PK_DefinicionAlertas] PRIMARY KEY CLUSTERED 
(
	[idAlerta] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[DefinicionAlertas] ([idAlerta], [Descripcion], [Habilitada]) VALUES (N'a3fc9fb4-399d-430c-afa3-20352bc608e5', N'Nueva Incidencia', 1)
INSERT [dbo].[DefinicionAlertas] ([idAlerta], [Descripcion], [Habilitada]) VALUES (N'14740724-8e0d-4280-87dc-2cea288a6b9c', N'Inicio de Trabajo', 1)
INSERT [dbo].[DefinicionAlertas] ([idAlerta], [Descripcion], [Habilitada]) VALUES (N'8e4b02ee-d992-4c0c-9682-38259d540c19', N'Fin de Trabajo', 1)
INSERT [dbo].[DefinicionAlertas] ([idAlerta], [Descripcion], [Habilitada]) VALUES (N'86f19af3-5ffd-4140-a312-cea8fdc87281', N'Realización Mantenimiento', 1)
INSERT [dbo].[DefinicionAlertas] ([idAlerta], [Descripcion], [Habilitada]) VALUES (N'1a069338-4a0f-4c8f-8894-d3e128d53431', N'Cierre Incidencia', 1)
INSERT [dbo].[DefinicionAlertas] ([idAlerta], [Descripcion], [Habilitada]) VALUES (N'a724e395-8014-4dad-a964-f547fadbedd1', N'Realización de Seguimiento', 1)
/****** Objeto:  StoredProcedure [dbo].[paRemoveAlertaFromCliente]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paRemoveAlertaFromCliente]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paRemoveAlertaFromCliente]
	(
	@idusuario uniqueidentifier,
	@idalerta uniqueidentifier
	)
AS
	DELETE FROM [USUARIO-ALERTA] 
	WHERE idUsuario = @idusuario AND idAlerta=@idalerta
	RETURN
' 
END
GO
/****** Objeto:  Table [dbo].[USUARIO-ALERTA]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USUARIO-ALERTA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[USUARIO-ALERTA](
	[idUsuario] [uniqueidentifier] NOT NULL,
	[idAlerta] [uniqueidentifier] NOT NULL,
	[Diaria] [bit] NOT NULL,
	[Habilitada] [bit] NOT NULL,
	[Instantanea] [bit] NOT NULL,
	[Dias] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[Hora] [nchar](5) COLLATE Modern_Spanish_CI_AS NULL,
	[Email] [bit] NOT NULL,
 CONSTRAINT [PK_USUARIO-ALERTA_1] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC,
	[idAlerta] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Objeto:  Table [dbo].[Plantas]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
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
INSERT [dbo].[Plantas] ([Nserie], [Descripcion], [FechaAlta], [E_Total], [UltimaRevision], [UltimaIncidencia], [CIF], [Telefono], [FechaBaja]) VALUES (N'C1-01-01       ', N'CALAÑAS FOTOVOLTAICA, S.L.', CAST(0x00009B9E015FA144 AS DateTime), CAST(178.00 AS Decimal(18, 2)), CAST(0x00009BBE011F3D03 AS DateTime), NULL, N'B91502443', N'650243985', NULL)
INSERT [dbo].[Plantas] ([Nserie], [Descripcion], [FechaAlta], [E_Total], [UltimaRevision], [UltimaIncidencia], [CIF], [Telefono], [FechaBaja]) VALUES (N'C1-02-02       ', N'CALAÑAS FOTOVOLTAICA UNO, S.L.', CAST(0x00009B9F011C4841 AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0x00009BB600C6EAA8 AS DateTime), CAST(0x00009BBE00000000 AS DateTime), N'B91506139', N'626940875', NULL)
INSERT [dbo].[Plantas] ([Nserie], [Descripcion], [FechaAlta], [E_Total], [UltimaRevision], [UltimaIncidencia], [CIF], [Telefono], [FechaBaja]) VALUES (N'C1-03-03       ', N'CALAÑAS FOTOVOLTAICA TRES, S.L.', CAST(0x00009B9F0128A8B9 AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0x00009BB600C6F3C7 AS DateTime), NULL, N'         ', N'         ', NULL)
INSERT [dbo].[Plantas] ([Nserie], [Descripcion], [FechaAlta], [E_Total], [UltimaRevision], [UltimaIncidencia], [CIF], [Telefono], [FechaBaja]) VALUES (N'C1-04-04       ', N'CALAÑAS FOTOVOLTAICA CUATRO, S.L.', CAST(0x00009B9F0128C875 AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0x00009BB600C6FCCE AS DateTime), NULL, N'         ', N'         ', NULL)
INSERT [dbo].[Plantas] ([Nserie], [Descripcion], [FechaAlta], [E_Total], [UltimaRevision], [UltimaIncidencia], [CIF], [Telefono], [FechaBaja]) VALUES (N'C1-05-05       ', N'CALAÑAS FOTOVOLTAICA CINCO, S.L.', CAST(0x00009B9F0128D1A8 AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0x00009BB600C702CF AS DateTime), NULL, N'         ', N'         ', NULL)
INSERT [dbo].[Plantas] ([Nserie], [Descripcion], [FechaAlta], [E_Total], [UltimaRevision], [UltimaIncidencia], [CIF], [Telefono], [FechaBaja]) VALUES (N'C1-06-06       ', N'CALAÑAS FOTOVOLTAICA SEIS, S.L.', CAST(0x00009B9F0128D7CD AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0x00009BB600C7079B AS DateTime), NULL, N'         ', N'         ', NULL)
INSERT [dbo].[Plantas] ([Nserie], [Descripcion], [FechaAlta], [E_Total], [UltimaRevision], [UltimaIncidencia], [CIF], [Telefono], [FechaBaja]) VALUES (N'C1-07-07       ', N'CALAÑAS FOTOVOLTAICA SIETE, S.L.', CAST(0x00009B9F0128DDB5 AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0x00009BB600C70CA4 AS DateTime), CAST(0x00009BBA00000000 AS DateTime), N'         ', N'         ', NULL)
INSERT [dbo].[Plantas] ([Nserie], [Descripcion], [FechaAlta], [E_Total], [UltimaRevision], [UltimaIncidencia], [CIF], [Telefono], [FechaBaja]) VALUES (N'C1-08-08       ', N'CALAÑAS FOTOVOLTAICA OCHO, S.L.', CAST(0x00009BBB01178447 AS DateTime), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, N'         ', N'         ', NULL)
/****** Objeto:  Table [dbo].[ClasificacionIncidencias]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
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
INSERT [dbo].[ClasificacionIncidencias] ([ID], [Definicion], [Coste], [idNivel], [idGrupo]) VALUES (N'cbca57bc-02e9-4023-beb9-5b91b3fb2fc5', N'Incidencia en el Inversor', CAST(562.00 AS Decimal(18, 2)), 4, 4)
INSERT [dbo].[ClasificacionIncidencias] ([ID], [Definicion], [Coste], [idNivel], [idGrupo]) VALUES (N'87aba3e6-5b21-487a-bfed-653caabf0eae', N'Incidencia en el Panel', CAST(45.00 AS Decimal(18, 2)), 5, 7)
INSERT [dbo].[ClasificacionIncidencias] ([ID], [Definicion], [Coste], [idNivel], [idGrupo]) VALUES (N'52e0ae34-32a9-4b93-8cee-99e3e91fe7b7', N'Incidencia en la planta', CAST(1000.00 AS Decimal(18, 2)), 4, 8)
INSERT [dbo].[ClasificacionIncidencias] ([ID], [Definicion], [Coste], [idNivel], [idGrupo]) VALUES (N'bb124bc5-5d22-4f5a-9885-c8a673a38767', N'Incidencia en el String', CAST(678.00 AS Decimal(18, 2)), 4, 5)
/****** Objeto:  Table [dbo].[Inversores]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
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
/****** Objeto:  Table [dbo].[Strings]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
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
/****** Objeto:  Table [dbo].[Seguidores]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
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
/****** Objeto:  Table [dbo].[Paneles]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
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
/****** Objeto:  Table [dbo].[Incidencias]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
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
INSERT [dbo].[Incidencias] ([ID], [FechaApertura], [NSerie_Componente], [TipoIncidencia], [Observaciones], [FechaCierre], [idUsuario]) VALUES (N'545039fb-2817-4746-a7e2-4b58b10bc63f', CAST(0x00009BBE00000000 AS DateTime), N'C1-02-02       ', N'52e0ae34-32a9-4b93-8cee-99e3e91fe7b7', N'', CAST(0x00009BBE012FA7F3 AS DateTime), NULL)
/****** Objeto:  Table [dbo].[aspnet_Users]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[LoweredUserName] [nvarchar](256) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[MobileAlias] [nvarchar](16) COLLATE Modern_Spanish_CI_AS NULL,
	[IsAnonymous] [bit] NOT NULL,
	[LastActivityDate] [datetime] NOT NULL,
 CONSTRAINT [PK__aspnet_Users__03317E3D] PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users]') AND name = N'aspnet_Users_Index')
CREATE UNIQUE CLUSTERED INDEX [aspnet_Users_Index] ON [dbo].[aspnet_Users] 
(
	[ApplicationId] ASC,
	[LoweredUserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users]') AND name = N'aspnet_Users_Index2')
CREATE NONCLUSTERED INDEX [aspnet_Users_Index2] ON [dbo].[aspnet_Users] 
(
	[ApplicationId] ASC,
	[LastActivityDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'2b56125d-a8f8-4e7c-b663-af66f3623997', N'a40547cb-7f78-4cdb-967c-e5fdc99a032e', N'Alegría', N'alegría', NULL, 0, CAST(0x00009BBC00BA13BE AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'2b56125d-a8f8-4e7c-b663-af66f3623997', N'6440cf07-c2cb-468e-bccb-07bc1232572a', N'dlopez', N'dlopez', NULL, 0, CAST(0x00009BBF0167F139 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'2b56125d-a8f8-4e7c-b663-af66f3623997', N'fe7d9d3d-3337-4585-86d5-17c6f4b0ce88', N'IGM', N'igm', NULL, 0, CAST(0x00009BBC00CACCC6 AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'2b56125d-a8f8-4e7c-b663-af66f3623997', N'b1024789-1e7b-4c6c-93c5-3cd5b1c8615b', N'vlopez', N'vlopez', NULL, 0, CAST(0x00009BBE012651B4 AS DateTime))
/****** Objeto:  Table [dbo].[aspnet_Roles]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[LoweredRoleName] [nvarchar](256) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[Description] [nvarchar](256) COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK__aspnet_Roles__31EC6D26] PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]') AND name = N'aspnet_Roles_index1')
CREATE UNIQUE CLUSTERED INDEX [aspnet_Roles_index1] ON [dbo].[aspnet_Roles] 
(
	[ApplicationId] ASC,
	[LoweredRoleName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'2b56125d-a8f8-4e7c-b663-af66f3623997', N'94a9ce56-952d-4f6c-9f31-1109ec55efca', N'Administrador', N'administrador', NULL)
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'2b56125d-a8f8-4e7c-b663-af66f3623997', N'119ba7c3-8c0e-4432-a3c7-9f0d7f641629', N'Cliente', N'cliente', NULL)
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'2b56125d-a8f8-4e7c-b663-af66f3623997', N'ef219af4-7395-4586-9c50-67c5f5698026', N'Mantenimiento', N'mantenimiento', NULL)
/****** Objeto:  Table [dbo].[aspnet_Paths]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Paths](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NOT NULL,
	[Path] [nvarchar](256) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[LoweredPath] [nvarchar](256) COLLATE Modern_Spanish_CI_AS NOT NULL,
 CONSTRAINT [PK__aspnet_Paths__44FF419A] PRIMARY KEY NONCLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]') AND name = N'aspnet_Paths_index')
CREATE UNIQUE CLUSTERED INDEX [aspnet_Paths_index] ON [dbo].[aspnet_Paths] 
(
	[ApplicationId] ASC,
	[LoweredPath] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
/****** Objeto:  Table [dbo].[aspnet_Membership]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[PasswordFormat] [int] NOT NULL,
	[PasswordSalt] [nvarchar](128) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[MobilePIN] [nvarchar](16) COLLATE Modern_Spanish_CI_AS NULL,
	[Email] [nvarchar](256) COLLATE Modern_Spanish_CI_AS NULL,
	[LoweredEmail] [nvarchar](256) COLLATE Modern_Spanish_CI_AS NULL,
	[PasswordQuestion] [nvarchar](256) COLLATE Modern_Spanish_CI_AS NULL,
	[PasswordAnswer] [nvarchar](128) COLLATE Modern_Spanish_CI_AS NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [ntext] COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK__aspnet_Membershi__1367E606] PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]') AND name = N'aspnet_Membership_index')
CREATE CLUSTERED INDEX [aspnet_Membership_index] ON [dbo].[aspnet_Membership] 
(
	[ApplicationId] ASC,
	[LoweredEmail] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'2b56125d-a8f8-4e7c-b663-af66f3623997', N'a40547cb-7f78-4cdb-967c-e5fdc99a032e', N'HFTDZnkXEaO211ajIiwsRaomvHY=', 1, N'p323wK3dLA+muuIBi2CwVQ==', NULL, N'anaranjo@astroreyenergia.es', N'anaranjo@astroreyenergia.es', N'perro', N'Aetb2J+FGiy+UtDrnVoTz5wT1Dg=', 1, 0, CAST(0x00009BBC00BA1260 AS DateTime), CAST(0x00009BBC00BA13BE AS DateTime), CAST(0x00009BBC00BA1260 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'2b56125d-a8f8-4e7c-b663-af66f3623997', N'6440cf07-c2cb-468e-bccb-07bc1232572a', N'gNMJjKp1awRz+4hPdYxtjCFY1sU=', 1, N'5CLi9aElSF+2ZCdoihW5ng==', NULL, N'dlopez@avante.es', N'dlopez@avante.es', N'perro', N'6K9IkwGEzt0yGlMdyZY3VqSzgFE=', 1, 0, CAST(0x00009B82010E8070 AS DateTime), CAST(0x00009BBF0167F139 AS DateTime), CAST(0x00009BBB010B700C AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'2b56125d-a8f8-4e7c-b663-af66f3623997', N'fe7d9d3d-3337-4585-86d5-17c6f4b0ce88', N'wcNU5KMQKQpMCSezdc24UgJNulM=', 1, N'MlKPuleWRXPz844AciUhUA==', NULL, N'mtv@igmsl.es', N'mtv@igmsl.es', N'perro', N'2Qa5BbMqfjJ38eBeHAD5n5Lu4Js=', 1, 0, CAST(0x00009BBC00CACC68 AS DateTime), CAST(0x00009BBC00CACCC6 AS DateTime), CAST(0x00009BBC00CACC68 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'2b56125d-a8f8-4e7c-b663-af66f3623997', N'b1024789-1e7b-4c6c-93c5-3cd5b1c8615b', N'bPS9m5EVdonD3+D5H13nD3leRVg=', 1, N'rBAHMFJvLNJIKkt+D2uugw==', NULL, N'vlopez@avante.es', N'vlopez@avante.es', N'perro', N'ebRprmvxbxLeNF+C3OTEYleeW0w=', 1, 0, CAST(0x00009BBE012651B4 AS DateTime), CAST(0x00009BBE012651B4 AS DateTime), CAST(0x00009BBE012651B4 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
/****** Objeto:  Table [dbo].[aspnet_Profile]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Profile](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [ntext] COLLATE Modern_Spanish_CI_AS NOT NULL,
	[PropertyValuesString] [ntext] COLLATE Modern_Spanish_CI_AS NOT NULL,
	[PropertyValuesBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK__aspnet_Profile__286302EC] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Objeto:  Table [dbo].[aspnet_UsersInRoles]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK__aspnet_UsersInRo__35BCFE0A] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]') AND name = N'aspnet_UsersInRoles_index')
CREATE NONCLUSTERED INDEX [aspnet_UsersInRoles_index] ON [dbo].[aspnet_UsersInRoles] 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'6440cf07-c2cb-468e-bccb-07bc1232572a', N'94a9ce56-952d-4f6c-9f31-1109ec55efca')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'fe7d9d3d-3337-4585-86d5-17c6f4b0ce88', N'94a9ce56-952d-4f6c-9f31-1109ec55efca')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'a40547cb-7f78-4cdb-967c-e5fdc99a032e', N'94a9ce56-952d-4f6c-9f31-1109ec55efca')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'b1024789-1e7b-4c6c-93c5-3cd5b1c8615b', N'119ba7c3-8c0e-4432-a3c7-9f0d7f641629')
/****** Objeto:  Table [dbo].[aspnet_PersonalizationPerUser]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_PersonalizationPerUser](
	[Id] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK__aspnet_Personali__4D94879B] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]') AND name = N'aspnet_PersonalizationPerUser_index1')
CREATE UNIQUE CLUSTERED INDEX [aspnet_PersonalizationPerUser_index1] ON [dbo].[aspnet_PersonalizationPerUser] 
(
	[PathId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]') AND name = N'aspnet_PersonalizationPerUser_ncindex2')
CREATE UNIQUE NONCLUSTERED INDEX [aspnet_PersonalizationPerUser_ncindex2] ON [dbo].[aspnet_PersonalizationPerUser] 
(
	[UserId] ASC,
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
/****** Objeto:  Table [dbo].[aspnet_PersonalizationAllUsers]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers](
	[PathId] [uniqueidentifier] NOT NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK__aspnet_Personali__4AB81AF0] PRIMARY KEY CLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Objeto:  Table [dbo].[SeguimientoPlantas]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
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
INSERT [dbo].[SeguimientoPlantas] ([Planta], [FechaSeguimiento], [Pac], [E_hoy], [idUsuario], [Incidencia]) VALUES (N'C1-01-01       ', CAST(0x00009BBE011F3D36 AS DateTime), CAST(100.00 AS Decimal(18, 2)), CAST(178.00 AS Decimal(18, 2)), NULL, NULL)
/****** Objeto:  StoredProcedure [dbo].[paAñadirSuceso]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paAñadirSuceso]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paAñadirSuceso]
	(
	@fecha datetime,
	@suceso nvarchar(50),
	@afectado nvarchar(MAX)
	)
AS
	INSERT INTO VisorSucesos (Fecha, Suceso, AfectaA)
	VALUES (@fecha, @suceso, @afectado)
	RETURN
' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[paNivelesIncidenciaUPD]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
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
/****** Objeto:  StoredProcedure [dbo].[paNivelesIncidenciaINS]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
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
/****** Objeto:  StoredProcedure [dbo].[paGetDefIncidencias]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
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
/****** Objeto:  StoredProcedure [dbo].[paNivelesIncidenciaDEL]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
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
/****** Objeto:  StoredProcedure [dbo].[paGetTareaByID]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetTareaByID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paGetTareaByID]
(
@idTarea uniqueidentifier
)

AS
	SELECT        Tareas.idTarea, Tareas.Periodo, Tareas.Descripcion, Tareas.Habilitada, GrupoIncidencias.Nombre, Tareas.TipoComponente
	FROM            Tareas INNER JOIN
	                         GrupoIncidencias ON Tareas.TipoComponente = GrupoIncidencias.ID
	WHERE Tareas.idTarea = @idTarea
	RETURN
' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[paGetTareas]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
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
/****** Objeto:  StoredProcedure [dbo].[paTareasINS]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
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
/****** Objeto:  StoredProcedure [dbo].[paTareasUPD]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
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
/****** Objeto:  StoredProcedure [dbo].[paTareasDEL]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
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
/****** Objeto:  StoredProcedure [dbo].[paSeguidorUPD]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
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
/****** Objeto:  StoredProcedure [dbo].[paCrearSeguidor]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
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
/****** Objeto:  StoredProcedure [dbo].[paStringUPD]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
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
/****** Objeto:  StoredProcedure [dbo].[paCrearString]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
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
/****** Objeto:  StoredProcedure [dbo].[paGetIncidenciasbyGrupo]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
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
/****** Objeto:  StoredProcedure [dbo].[paGruposIncidenciaINS]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
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
/****** Objeto:  StoredProcedure [dbo].[paGruposIncidenciaUPD]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
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
/****** Objeto:  StoredProcedure [dbo].[paGruposIncidenciaDEL]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
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
/****** Objeto:  StoredProcedure [dbo].[paGetIncidencias]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
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
/****** Objeto:  StoredProcedure [dbo].[paGetDefIncidenciaByID]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
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
/****** Objeto:  StoredProcedure [dbo].[paClasificacionIncidenciaUPD]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
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
/****** Objeto:  StoredProcedure [dbo].[paClasificacionIncidenciaDEL]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
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
/****** Objeto:  StoredProcedure [dbo].[paGetTopTenIncidencias]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetTopTenIncidencias]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paGetTopTenIncidencias]

AS

SELECT     TOP(10) Incidencias.ID, ClasificacionIncidencias.Definicion, Count(Incidencias.ID) AS SumaInc
FROM            Incidencias LEFT OUTER JOIN
                         ClasificacionIncidencias ON ClasificacionIncidencias.ID = Incidencias.TipoIncidencia
GROUP BY Incidencias.ID, ClasificacionIncidencias.Definicion
ORDER BY SumaInc DESC
	RETURN
' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[paGetIncidenciaByID]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetIncidenciaByID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paGetIncidenciaByID]
(
@idIncidencia uniqueidentifier
)
AS

SELECT        *
FROM            Incidencias
WHERE id = @idIncidencia
	RETURN
' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[paIncidenciaUPD]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paIncidenciaUPD]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paIncidenciaUPD]
	(
	@id uniqueidentifier,
	@fechacierre datetime
	)
AS
UPDATE Incidencias set fechacierre = @fechacierre
where id=@id
		
		
	RETURN
' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[paCrearIncidencia]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
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
/****** Objeto:  StoredProcedure [dbo].[paCountIncidenciasActivas]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paCountIncidenciasActivas]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paCountIncidenciasActivas]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	SELECT COUNT(*) AS Expr1 FROM Incidencias WHERE (FechaCierre IS NULL)
	RETURN
' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[paOrdenTrabajoINS]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
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
/****** Objeto:  StoredProcedure [dbo].[paOrdenTrabajoUPD]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
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
/****** Objeto:  StoredProcedure [dbo].[paGetOrdenesTrabajo]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
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
/****** Objeto:  StoredProcedure [dbo].[paGetOrdenTrabajoByID]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
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
/****** Objeto:  StoredProcedure [dbo].[paGetOrdenesTrabajoCerradas]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
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
/****** Objeto:  StoredProcedure [dbo].[paCountOrdenesActivas]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paCountOrdenesActivas]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paCountOrdenesActivas]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	SELECT COUNT(*) AS Expr1 FROM OrdenesTrabajo WHERE (FechaFin IS NULL)
	RETURN
' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[paSeguimientoPlantas]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
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
/****** Objeto:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_CheckSchemaVersion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    IF (EXISTS( SELECT  *
                FROM    dbo.aspnet_SchemaVersions
                WHERE   Feature = LOWER( @Feature ) AND
                        CompatibleSchemaVersion = @CompatibleSchemaVersion ))
        RETURN 0

    RETURN 1
END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UnRegisterSchemaVersion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    DELETE FROM dbo.aspnet_SchemaVersions
        WHERE   Feature = LOWER(@Feature) AND @CompatibleSchemaVersion = CompatibleSchemaVersion
END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_RegisterSchemaVersion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128),
    @IsCurrentVersion          bit,
    @RemoveIncompatibleSchema  bit
AS
BEGIN
    IF( @RemoveIncompatibleSchema = 1 )
    BEGIN
        DELETE FROM dbo.aspnet_SchemaVersions WHERE Feature = LOWER( @Feature )
    END
    ELSE
    BEGIN
        IF( @IsCurrentVersion = 1 )
        BEGIN
            UPDATE dbo.aspnet_SchemaVersions
            SET IsCurrentVersion = 0
            WHERE Feature = LOWER( @Feature )
        END
    END

    INSERT  dbo.aspnet_SchemaVersions( Feature, CompatibleSchemaVersion, IsCurrentVersion )
    VALUES( LOWER( @Feature ), @CompatibleSchemaVersion, @IsCurrentVersion )
END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[paGetEstadoMantenimientoComponentePendiente]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetEstadoMantenimientoComponentePendiente]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'Create PROCEDURE [dbo].[paGetEstadoMantenimientoComponentePendiente]
	(
	@idtarea uniqueidentifier,
	@componente nchar(15)
	)
AS
SELECT * FROM subtareas WHERE idTarea = @idtarea and id NOT IN(
SELECT       subTareas.id
FROM            HistoricoMantenimientos INNER JOIN
                         subTareas ON HistoricoMantenimientos.idSubTarea = subTareas.id
WHERE        (subTareas.idTarea = @idtarea) AND (HistoricoMantenimientos.Componente = @componente) and (Caduca >= GETDATE()))
	RETURN' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[paSubTareaINS]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paSubTareaINS]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paSubTareaINS]
	(
	@idTarea uniqueidentifier,
	@descripcion nvarchar(250)
	)
	
AS
	INSERT INTO SubTareas (idTarea, Descripcion) values (@idTarea, @descripcion)
	RETURN
' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[paGetEstadoMantenimientoComponente]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetEstadoMantenimientoComponente]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paGetEstadoMantenimientoComponente]
	(
	@idtarea uniqueidentifier,
	@componente nchar(15)
	)
AS
SELECT        subTareas.Descripcion,subTareas.idTarea,subTareas.id, HistoricoMantenimientos.Estado, HistoricoMantenimientos.Fecha, HistoricoMantenimientos.Caduca
FROM            HistoricoMantenimientos INNER JOIN
                         subTareas ON HistoricoMantenimientos.idSubTarea = subTareas.id
WHERE        (subTareas.idTarea = @idtarea) AND (HistoricoMantenimientos.Componente = @componente) and (Caduca >= GETDATE())
	RETURN' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_WebEvent_LogEvent]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
        @EventId         char(32),
        @EventTimeUtc    datetime,
        @EventTime       datetime,
        @EventType       nvarchar(256),
        @EventSequence   decimal(19,0),
        @EventOccurrence decimal(19,0),
        @EventCode       int,
        @EventDetailCode int,
        @Message         nvarchar(1024),
        @ApplicationPath nvarchar(256),
        @ApplicationVirtualPath nvarchar(256),
        @MachineName    nvarchar(256),
        @RequestUrl      nvarchar(1024),
        @ExceptionType   nvarchar(256),
        @Details         ntext
AS
BEGIN
    INSERT
        dbo.aspnet_WebEvent_Events
        (
            EventId,
            EventTimeUtc,
            EventTime,
            EventType,
            EventSequence,
            EventOccurrence,
            EventCode,
            EventDetailCode,
            Message,
            ApplicationPath,
            ApplicationVirtualPath,
            MachineName,
            RequestUrl,
            ExceptionType,
            Details
        )
    VALUES
    (
        @EventId,
        @EventTimeUtc,
        @EventTime,
        @EventType,
        @EventSequence,
        @EventOccurrence,
        @EventCode,
        @EventDetailCode,
        @Message,
        @ApplicationPath,
        @ApplicationVirtualPath,
        @MachineName,
        @RequestUrl,
        @ExceptionType,
        @Details
    )
END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_AnyDataInTables]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_AnyDataInTables]
    @TablesToCheck int
AS
BEGIN
    -- Check Membership table if (@TablesToCheck & 1) is set
    IF ((@TablesToCheck & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_MembershipUsers'') AND (type = ''V''))))
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Membership))
        BEGIN
            SELECT N''aspnet_Membership''
            RETURN
        END
    END

    -- Check aspnet_Roles table if (@TablesToCheck & 2) is set
    IF ((@TablesToCheck & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_Roles'') AND (type = ''V''))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 RoleId FROM dbo.aspnet_Roles))
        BEGIN
            SELECT N''aspnet_Roles''
            RETURN
        END
    END

    -- Check aspnet_Profile table if (@TablesToCheck & 4) is set
    IF ((@TablesToCheck & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_Profiles'') AND (type = ''V''))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Profile))
        BEGIN
            SELECT N''aspnet_Profile''
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 8) is set
    IF ((@TablesToCheck & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_WebPartState_User'') AND (type = ''V''))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_PersonalizationPerUser))
        BEGIN
            SELECT N''aspnet_PersonalizationPerUser''
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 16) is set
    IF ((@TablesToCheck & 16) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''aspnet_WebEvent_LogEvent'') AND (type = ''P''))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 * FROM dbo.aspnet_WebEvent_Events))
        BEGIN
            SELECT N''aspnet_WebEvent_Events''
            RETURN
        END
    END

    -- Check aspnet_Users table if (@TablesToCheck & 1,2,4 & 8) are all set
    IF ((@TablesToCheck & 1) <> 0 AND
        (@TablesToCheck & 2) <> 0 AND
        (@TablesToCheck & 4) <> 0 AND
        (@TablesToCheck & 8) <> 0 AND
        (@TablesToCheck & 32) <> 0 AND
        (@TablesToCheck & 128) <> 0 AND
        (@TablesToCheck & 256) <> 0 AND
        (@TablesToCheck & 512) <> 0 AND
        (@TablesToCheck & 1024) <> 0)
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Users))
        BEGIN
            SELECT N''aspnet_Users''
            RETURN
        END
        IF (EXISTS(SELECT TOP 1 ApplicationId FROM dbo.aspnet_Applications))
        BEGIN
            SELECT N''aspnet_Applications''
            RETURN
        END
    END
END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[paMantenimientoCaducado]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paMantenimientoCaducado]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paMantenimientoCaducado]
	(
	@componente nchar(15),
	@idtarea uniqueidentifier,
	@idsubtarea int
	)
AS
	SELECT Count(*) FROM HistoricoMantenimientos 
	WHERE  Componente=@componente AND idTarea = @idtarea AND idSubtarea = @idsubtarea AND  Caduca >GETDATE() 
	
	RETURN
' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[paHistoricoMantenimientosINS]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paHistoricoMantenimientosINS]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paHistoricoMantenimientosINS]
	(
	@componente nchar(15),
	@idtarea uniqueidentifier,
	@idsubtarea int,
	@estado bit,
	@observaciones nvarchar(max),
	@fecha datetime,
	@caduca datetime
	)
AS
	INSERT INTO HistoricoMantenimientos (Componente, idTarea, idSubTarea, Estado, Observaciones, Fecha, Caduca ) VALUES
	(@componente, @idtarea, @idsubtarea, @estado, @observaciones, @fecha, @caduca)
	
	RETURN
' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Personalization_GetApplicationId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId] (
    @ApplicationName NVARCHAR(256),
    @ApplicationId UNIQUEIDENTIFIER OUT)
AS
BEGIN
    SELECT @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
END' 
END
GO
/****** Objeto:  View [dbo].[vw_aspnet_Applications]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Applications]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_Applications]
  AS SELECT [dbo].[aspnet_Applications].[ApplicationName], [dbo].[aspnet_Applications].[LoweredApplicationName], [dbo].[aspnet_Applications].[ApplicationId], [dbo].[aspnet_Applications].[Description]
  FROM [dbo].[aspnet_Applications]
  '
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_FindUsersByEmail]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
    @ApplicationName       nvarchar(256),
    @EmailToMatch          nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    IF( @EmailToMatch IS NULL )
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.Email IS NULL
            ORDER BY m.LoweredEmail
    ELSE
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.LoweredEmail LIKE LOWER(@EmailToMatch)
            ORDER BY m.LoweredEmail

    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY m.LoweredEmail

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetProfiles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @PageIndex              int,
    @PageSize               int,
    @UserNameToMatch        nvarchar(256) = NULL,
    @InactiveSinceDate      datetime      = NULL
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT  u.UserId
        FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
        WHERE   ApplicationId = @ApplicationId
            AND u.UserId = p.UserId
            AND (@InactiveSinceDate IS NULL OR LastActivityDate <= @InactiveSinceDate)
            AND (     (@ProfileAuthOptions = 2)
                   OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                   OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                 )
            AND (@UserNameToMatch IS NULL OR LoweredUserName LIKE LOWER(@UserNameToMatch))
        ORDER BY UserName

    SELECT  u.UserName, u.IsAnonymous, u.LastActivityDate, p.LastUpdatedDate,
            DATALENGTH(p.PropertyNames) + DATALENGTH(p.PropertyValuesString) + DATALENGTH(p.PropertyValuesBinary)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p, #PageIndexForUsers i
    WHERE   u.UserId = p.UserId AND p.UserId = i.UserId AND i.IndexId >= @PageLowerBound AND i.IndexId <= @PageUpperBound

    SELECT COUNT(*)
    FROM   #PageIndexForUsers

    DROP TABLE #PageIndexForUsers
END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetAllUsers]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
    @ApplicationName       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0


    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
    SELECT u.UserId
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u
    WHERE  u.ApplicationId = @ApplicationId AND u.UserId = m.UserId
    ORDER BY u.UserName

    SELECT @TotalRecords = @@ROWCOUNT

    SELECT u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName
    RETURN @TotalRecords
END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_RoleExists]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Roles_RoleExists]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(0)
    IF (EXISTS (SELECT RoleName FROM dbo.aspnet_Roles WHERE LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId ))
        RETURN(1)
    ELSE
        RETURN(0)
END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_GetAllRoles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Roles_GetAllRoles] (
    @ApplicationName           nvarchar(256))
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN
    SELECT RoleName
    FROM   dbo.aspnet_Roles WHERE ApplicationId = @ApplicationId
    ORDER BY RoleName
END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Applications_CreateApplication]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
    @ApplicationName      nvarchar(256),
    @ApplicationId        uniqueidentifier OUTPUT
AS
BEGIN
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName

    IF(@ApplicationId IS NULL)
    BEGIN
        DECLARE @TranStarted   bit
        SET @TranStarted = 0

        IF( @@TRANCOUNT = 0 )
        BEGIN
	        BEGIN TRANSACTION
	        SET @TranStarted = 1
        END
        ELSE
    	    SET @TranStarted = 0

        SELECT  @ApplicationId = ApplicationId
        FROM dbo.aspnet_Applications WITH (UPDLOCK, HOLDLOCK)
        WHERE LOWER(@ApplicationName) = LoweredApplicationName

        IF(@ApplicationId IS NULL)
        BEGIN
            SELECT  @ApplicationId = NEWID()
            INSERT  dbo.aspnet_Applications (ApplicationId, ApplicationName, LoweredApplicationName)
            VALUES  (@ApplicationId, @ApplicationName, LOWER(@ApplicationName))
        END


        IF( @TranStarted = 1 )
        BEGIN
            IF(@@ERROR = 0)
            BEGIN
	        SET @TranStarted = 0
	        COMMIT TRANSACTION
            END
            ELSE
            BEGIN
                SET @TranStarted = 0
                ROLLBACK TRANSACTION
            END
        END
    END
END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_FindUsersByName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
    @ApplicationName       nvarchar(256),
    @UserNameToMatch       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT u.UserId
        FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND u.LoweredUserName LIKE LOWER(@UserNameToMatch)
        ORDER BY u.UserName


    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_DeleteUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Users_DeleteUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @TablesToDeleteFrom int,
    @NumTablesDeletedFrom int OUTPUT
AS
BEGIN
    DECLARE @UserId               uniqueidentifier
    SELECT  @UserId               = NULL
    SELECT  @NumTablesDeletedFrom = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    DECLARE @ErrorCode   int
    DECLARE @RowCount    int

    SET @ErrorCode = 0
    SET @RowCount  = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   u.LoweredUserName       = LOWER(@UserName)
        AND u.ApplicationId         = a.ApplicationId
        AND LOWER(@ApplicationName) = a.LoweredApplicationName

    IF (@UserId IS NULL)
    BEGIN
        GOTO Cleanup
    END

    -- Delete from Membership table if (@TablesToDeleteFrom & 1) is set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_MembershipUsers'') AND (type = ''V''))))
    BEGIN
        DELETE FROM dbo.aspnet_Membership WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
               @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_UsersInRoles table if (@TablesToDeleteFrom & 2) is set
    IF ((@TablesToDeleteFrom & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_UsersInRoles'') AND (type = ''V''))) )
    BEGIN
        DELETE FROM dbo.aspnet_UsersInRoles WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Profile table if (@TablesToDeleteFrom & 4) is set
    IF ((@TablesToDeleteFrom & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_Profiles'') AND (type = ''V''))) )
    BEGIN
        DELETE FROM dbo.aspnet_Profile WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_PersonalizationPerUser table if (@TablesToDeleteFrom & 8) is set
    IF ((@TablesToDeleteFrom & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_WebPartState_User'') AND (type = ''V''))) )
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Users table if (@TablesToDeleteFrom & 1,2,4 & 8) are all set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (@TablesToDeleteFrom & 2) <> 0 AND
        (@TablesToDeleteFrom & 4) <> 0 AND
        (@TablesToDeleteFrom & 8) <> 0 AND
        (EXISTS (SELECT UserId FROM dbo.aspnet_Users WHERE @UserId = UserId)))
    BEGIN
        DELETE FROM dbo.aspnet_Users WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:
    SET @NumTablesDeletedFrom = 0

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
	    ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier

    IF (@UpdateLastActivity = 1)
    BEGIN
        -- select user ID from aspnet_users table
        SELECT TOP 1 @UserId = u.UserId
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1

        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        WHERE    @UserId = UserId

        SELECT m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut, m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  @UserId = u.UserId AND u.UserId = m.UserId 
    END
    ELSE
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1
    END

    RETURN 0
END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByEmail]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
    @ApplicationName  nvarchar(256),
    @Email            nvarchar(256)
AS
BEGIN
    IF( @Email IS NULL )
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.LoweredEmail IS NULL
    ELSE
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                LOWER(@Email) = m.LoweredEmail

    IF (@@rowcount = 0)
        RETURN(1)
    RETURN(0)
END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetPasswordWithFormat]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @UpdateLastLoginActivityDate    bit,
    @CurrentTimeUtc                 datetime
AS
BEGIN
    DECLARE @IsLockedOut                        bit
    DECLARE @UserId                             uniqueidentifier
    DECLARE @Password                           nvarchar(128)
    DECLARE @PasswordSalt                       nvarchar(128)
    DECLARE @PasswordFormat                     int
    DECLARE @FailedPasswordAttemptCount         int
    DECLARE @FailedPasswordAnswerAttemptCount   int
    DECLARE @IsApproved                         bit
    DECLARE @LastActivityDate                   datetime
    DECLARE @LastLoginDate                      datetime

    SELECT  @UserId          = NULL

    SELECT  @UserId = u.UserId, @IsLockedOut = m.IsLockedOut, @Password=Password, @PasswordFormat=PasswordFormat,
            @PasswordSalt=PasswordSalt, @FailedPasswordAttemptCount=FailedPasswordAttemptCount,
		    @FailedPasswordAnswerAttemptCount=FailedPasswordAnswerAttemptCount, @IsApproved=IsApproved,
            @LastActivityDate = LastActivityDate, @LastLoginDate = LastLoginDate
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF (@UserId IS NULL)
        RETURN 1

    IF (@IsLockedOut = 1)
        RETURN 99

    SELECT   @Password, @PasswordFormat, @PasswordSalt, @FailedPasswordAttemptCount,
             @FailedPasswordAnswerAttemptCount, @IsApproved, @LastLoginDate, @LastActivityDate

    IF (@UpdateLastLoginActivityDate = 1 AND @IsApproved = 1)
    BEGIN
        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @CurrentTimeUtc
        WHERE   UserId = @UserId

        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @CurrentTimeUtc
        WHERE   @UserId = UserId
    END


    RETURN 0
END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UpdateUserInfo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @IsPasswordCorrect              bit,
    @UpdateLastLoginActivityDate    bit,
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @LastLoginDate                  datetime,
    @LastActivityDate               datetime
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @IsApproved                             bit
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @IsApproved = m.IsApproved,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        GOTO Cleanup
    END

    IF( @IsPasswordCorrect = 0 )
    BEGIN
        IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAttemptWindowStart ) )
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = 1
        END
        ELSE
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = @FailedPasswordAttemptCount + 1
        END

        BEGIN
            IF( @FailedPasswordAttemptCount >= @MaxInvalidPasswordAttempts )
            BEGIN
                SET @IsLockedOut = 1
                SET @LastLockoutDate = @CurrentTimeUtc
            END
        END
    END
    ELSE
    BEGIN
        IF( @FailedPasswordAttemptCount > 0 OR @FailedPasswordAnswerAttemptCount > 0 )
        BEGIN
            SET @FailedPasswordAttemptCount = 0
            SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )
            SET @FailedPasswordAnswerAttemptCount = 0
            SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )
            SET @LastLockoutDate = CONVERT( datetime, ''17540101'', 112 )
        END
    END

    IF( @UpdateLastLoginActivityDate = 1 )
    BEGIN
        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @LastActivityDate
        WHERE   @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END

        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @LastLoginDate
        WHERE   UserId = @UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END


    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
        FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
        FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
        FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
        FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
    WHERE @UserId = UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetPassword]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetPassword]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @PasswordAnswer                 nvarchar(128) = NULL
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @PasswordFormat                         int
    DECLARE @Password                               nvarchar(128)
    DECLARE @passAns                                nvarchar(128)
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @Password = m.Password,
            @passAns = m.PasswordAnswer,
            @PasswordFormat = m.PasswordFormat,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    IF ( NOT( @PasswordAnswer IS NULL ) )
    BEGIN
        IF( ( @passAns IS NULL ) OR ( LOWER( @passAns ) <> LOWER( @PasswordAnswer ) ) )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
        ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )
            END
        END

        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    IF( @ErrorCode = 0 )
        SELECT @Password, @PasswordFormat

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_SetPassword]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_SetPassword]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @NewPassword      nvarchar(128),
    @PasswordSalt     nvarchar(128),
    @CurrentTimeUtc   datetime,
    @PasswordFormat   int = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    UPDATE dbo.aspnet_Membership
    SET Password = @NewPassword, PasswordFormat = @PasswordFormat, PasswordSalt = @PasswordSalt,
        LastPasswordChangedDate = @CurrentTimeUtc
    WHERE @UserId = UserId
    RETURN(0)
END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_ResetPassword]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
    @ApplicationName             nvarchar(256),
    @UserName                    nvarchar(256),
    @NewPassword                 nvarchar(128),
    @MaxInvalidPasswordAttempts  int,
    @PasswordAttemptWindow       int,
    @PasswordSalt                nvarchar(128),
    @CurrentTimeUtc              datetime,
    @PasswordFormat              int = 0,
    @PasswordAnswer              nvarchar(128) = NULL
AS
BEGIN
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @UserId                                 uniqueidentifier
    SET     @UserId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    SELECT @IsLockedOut = IsLockedOut,
           @LastLockoutDate = LastLockoutDate,
           @FailedPasswordAttemptCount = FailedPasswordAttemptCount,
           @FailedPasswordAttemptWindowStart = FailedPasswordAttemptWindowStart,
           @FailedPasswordAnswerAttemptCount = FailedPasswordAnswerAttemptCount,
           @FailedPasswordAnswerAttemptWindowStart = FailedPasswordAnswerAttemptWindowStart
    FROM dbo.aspnet_Membership WITH ( UPDLOCK )
    WHERE @UserId = UserId

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Membership
    SET    Password = @NewPassword,
           LastPasswordChangedDate = @CurrentTimeUtc,
           PasswordFormat = @PasswordFormat,
           PasswordSalt = @PasswordSalt
    WHERE  @UserId = UserId AND
           ( ( @PasswordAnswer IS NULL ) OR ( LOWER( PasswordAnswer ) = LOWER( @PasswordAnswer ) ) )

    IF ( @@ROWCOUNT = 0 )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
    ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )
            END
        END

    IF( NOT ( @PasswordAnswer IS NULL ) )
    BEGIN
        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UnlockUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
    @ApplicationName                         nvarchar(256),
    @UserName                                nvarchar(256)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
        RETURN 1

    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = 0,
        FailedPasswordAttemptCount = 0,
        FailedPasswordAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 ),
        FailedPasswordAnswerAttemptCount = 0,
        FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 ),
        LastLockoutDate = CONVERT( datetime, ''17540101'', 112 )
    WHERE @UserId = UserId

    RETURN 0
END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_IsUserInRole]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(2)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    DECLARE @RoleId uniqueidentifier
    SELECT  @RoleId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(2)

    SELECT  @RoleId = RoleId
    FROM    dbo.aspnet_Roles
    WHERE   LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
        RETURN(3)

    IF (EXISTS( SELECT * FROM dbo.aspnet_UsersInRoles WHERE  UserId = @UserId AND RoleId = @RoleId))
        RETURN(1)
    ELSE
        RETURN(0)
END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT 0
        RETURN
    END

    SELECT  COUNT(*)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
    WHERE   ApplicationId = @ApplicationId
        AND u.UserId = p.UserId
        AND (LastActivityDate <= @InactiveSinceDate)
        AND (
                (@ProfileAuthOptions = 2)
                OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
            )
END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UpdateUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @Email                nvarchar(256),
    @Comment              ntext,
    @IsApproved           bit,
    @LastLoginDate        datetime,
    @LastActivityDate     datetime,
    @UniqueEmail          int,
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId, @ApplicationId = a.ApplicationId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership WITH (UPDLOCK, HOLDLOCK)
                    WHERE ApplicationId = @ApplicationId  AND @UserId <> UserId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            RETURN(7)
        END
    END

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    UPDATE dbo.aspnet_Users WITH (ROWLOCK)
    SET
         LastActivityDate = @LastActivityDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET
         Email            = @Email,
         LoweredEmail     = LOWER(@Email),
         Comment          = @Comment,
         IsApproved       = @IsApproved,
         LastLoginDate    = @LastLoginDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN -1
END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_DeleteInactiveProfiles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT  0
        RETURN
    END

    DELETE
    FROM    dbo.aspnet_Profile
    WHERE   UserId IN
            (   SELECT  UserId
                FROM    dbo.aspnet_Users u
                WHERE   ApplicationId = @ApplicationId
                        AND (LastActivityDate <= @InactiveSinceDate)
                        AND (
                                (@ProfileAuthOptions = 2)
                             OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                             OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                            )
            )

    SELECT  @@ROWCOUNT
END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000)
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)


	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames  table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles  table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers  table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num	  int
	DECLARE @Pos	  int
	DECLARE @NextPos  int
	DECLARE @Name	  nvarchar(256)
	DECLARE @CountAll int
	DECLARE @CountU	  int
	DECLARE @CountR	  int


	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N'','', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId
	SELECT @CountR = @@ROWCOUNT

	IF (@CountR <> @Num)
	BEGIN
		SELECT TOP 1 N'''', Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END


	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1


	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N'','', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	SELECT @CountU = @@ROWCOUNT
	IF (@CountU <> @Num)
	BEGIN
		SELECT TOP 1 Name, N''''
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT au.LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE u.UserId = au.UserId)

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(1)
	END

	SELECT  @CountAll = COUNT(*)
	FROM	dbo.aspnet_UsersInRoles ur, @tbUsers u, @tbRoles r
	WHERE   ur.UserId = u.UserId AND ur.RoleId = r.RoleId

	IF (@CountAll <> @CountU * @CountR)
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 @tbUsers tu, @tbRoles tr, dbo.aspnet_Users u, dbo.aspnet_Roles r
		WHERE		 u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND
					 tu.UserId NOT IN (SELECT ur.UserId FROM dbo.aspnet_UsersInRoles ur WHERE ur.RoleId = tr.RoleId) AND
					 tr.RoleId NOT IN (SELECT ur.RoleId FROM dbo.aspnet_UsersInRoles ur WHERE ur.UserId = tu.UserId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	DELETE FROM dbo.aspnet_UsersInRoles
	WHERE UserId IN (SELECT UserId FROM @tbUsers)
	  AND RoleId IN (SELECT RoleId FROM @tbRoles)
	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_GetRolesForUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(1)

    SELECT r.RoleName
    FROM   dbo.aspnet_Roles r, dbo.aspnet_UsersInRoles ur
    WHERE  r.RoleId = ur.RoleId AND r.ApplicationId = @ApplicationId AND ur.UserId = @UserId
    ORDER BY r.RoleName
    RETURN (0)
END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_AddUsersToRoles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000),
	@CurrentTimeUtc   datetime
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)
	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames	table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles	table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers	table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num		int
	DECLARE @Pos		int
	DECLARE @NextPos	int
	DECLARE @Name		nvarchar(256)

	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N'','', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		SELECT TOP 1 Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END

	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1

	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N'','', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		DELETE FROM @tbNames
		WHERE LOWER(Name) IN (SELECT LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE au.UserId = u.UserId)

		INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
		  SELECT @AppId, NEWID(), Name, LOWER(Name), 0, @CurrentTimeUtc
		  FROM   @tbNames

		INSERT INTO @tbUsers
		  SELECT  UserId
		  FROM	dbo.aspnet_Users au, @tbNames t
		  WHERE   LOWER(t.Name) = au.LoweredUserName AND au.ApplicationId = @AppId
	END

	IF (EXISTS (SELECT * FROM dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr WHERE tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId))
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr, aspnet_Users u, aspnet_Roles r
		WHERE		u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	INSERT INTO dbo.aspnet_UsersInRoles (UserId, RoleId)
	SELECT UserId, RoleId
	FROM @tbUsers, @tbRoles

	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_FindUsersInRole]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256),
    @UserNameToMatch  nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId AND LoweredUserName LIKE LOWER(@UserNameToMatch)
    ORDER BY u.UserName
    RETURN(0)
END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_GetUsersInRoles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId
    ORDER BY u.UserName
    RETURN(0)
END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
    @ApplicationName       nvarchar(256),
    @UserName              nvarchar(256),
    @NewPasswordQuestion   nvarchar(256),
    @NewPasswordAnswer     nvarchar(128)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Membership m, dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId
    IF (@UserId IS NULL)
    BEGIN
        RETURN(1)
    END

    UPDATE dbo.aspnet_Membership
    SET    PasswordQuestion = @NewPasswordQuestion, PasswordAnswer = @NewPasswordAnswer
    WHERE  UserId=@UserId
    RETURN(0)
END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetProperties]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProperties]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)

    IF (@UserId IS NULL)
        RETURN
    SELECT TOP 1 PropertyNames, PropertyValuesString, PropertyValuesBinary
    FROM         dbo.aspnet_Profile
    WHERE        UserId = @UserId

    IF (@@ROWCOUNT > 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    END
END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetNumberOfUsersOnline]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
    @ApplicationName            nvarchar(256),
    @MinutesSinceLastInActive   int,
    @CurrentTimeUtc             datetime
AS
BEGIN
    DECLARE @DateActive datetime
    SELECT  @DateActive = DATEADD(minute,  -(@MinutesSinceLastInActive), @CurrentTimeUtc)

    DECLARE @NumOnline int
    SELECT  @NumOnline = COUNT(*)
    FROM    dbo.aspnet_Users u(NOLOCK),
            dbo.aspnet_Applications a(NOLOCK),
            dbo.aspnet_Membership m(NOLOCK)
    WHERE   u.ApplicationId = a.ApplicationId                  AND
            LastActivityDate > @DateActive                     AND
            a.LoweredApplicationName = LOWER(@ApplicationName) AND
            u.UserId = m.UserId
    RETURN(@NumOnline)
END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_DeleteRole]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
    @ApplicationName            nvarchar(256),
    @RoleName                   nvarchar(256),
    @DeleteOnlyIfRoleIsEmpty    bit
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    DECLARE @RoleId   uniqueidentifier
    SELECT  @RoleId = NULL
    SELECT  @RoleId = RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
    BEGIN
        SELECT @ErrorCode = 1
        GOTO Cleanup
    END
    IF (@DeleteOnlyIfRoleIsEmpty <> 0)
    BEGIN
        IF (EXISTS (SELECT RoleId FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId))
        BEGIN
            SELECT @ErrorCode = 2
            GOTO Cleanup
        END
    END


    DELETE FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DELETE FROM dbo.aspnet_Roles WHERE @RoleId = RoleId  AND ApplicationId = @ApplicationId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode
END' 
END
GO
/****** Objeto:  View [dbo].[vw_aspnet_Users]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Users]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_Users]
  AS SELECT [dbo].[aspnet_Users].[ApplicationId], [dbo].[aspnet_Users].[UserId], [dbo].[aspnet_Users].[UserName], [dbo].[aspnet_Users].[LoweredUserName], [dbo].[aspnet_Users].[MobileAlias], [dbo].[aspnet_Users].[IsAnonymous], [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Users]
  '
GO
/****** Objeto:  View [dbo].[vw_aspnet_MembershipUsers]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_MembershipUsers]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_MembershipUsers]
  AS SELECT [dbo].[aspnet_Membership].[UserId],
            [dbo].[aspnet_Membership].[PasswordFormat],
            [dbo].[aspnet_Membership].[MobilePIN],
            [dbo].[aspnet_Membership].[Email],
            [dbo].[aspnet_Membership].[LoweredEmail],
            [dbo].[aspnet_Membership].[PasswordQuestion],
            [dbo].[aspnet_Membership].[PasswordAnswer],
            [dbo].[aspnet_Membership].[IsApproved],
            [dbo].[aspnet_Membership].[IsLockedOut],
            [dbo].[aspnet_Membership].[CreateDate],
            [dbo].[aspnet_Membership].[LastLoginDate],
            [dbo].[aspnet_Membership].[LastPasswordChangedDate],
            [dbo].[aspnet_Membership].[LastLockoutDate],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptWindowStart],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptWindowStart],
            [dbo].[aspnet_Membership].[Comment],
            [dbo].[aspnet_Users].[ApplicationId],
            [dbo].[aspnet_Users].[UserName],
            [dbo].[aspnet_Users].[MobileAlias],
            [dbo].[aspnet_Users].[IsAnonymous],
            [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Membership] INNER JOIN [dbo].[aspnet_Users]
      ON [dbo].[aspnet_Membership].[UserId] = [dbo].[aspnet_Users].[UserId]
  '
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByUserId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
    @UserId               uniqueidentifier,
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    IF ( @UpdateLastActivity = 1 )
    BEGIN
        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        FROM     dbo.aspnet_Users
        WHERE    @UserId = UserId

        IF ( @@ROWCOUNT = 0 ) -- User ID not found
            RETURN -1
    END

    SELECT  m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate, m.LastLoginDate, u.LastActivityDate,
            m.LastPasswordChangedDate, u.UserName, m.IsLockedOut,
            m.LastLockoutDate
    FROM    dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   @UserId = u.UserId AND u.UserId = m.UserId

    IF ( @@ROWCOUNT = 0 ) -- User ID not found
       RETURN -1

    RETURN 0
END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_CreateUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Users_CreateUser]
    @ApplicationId    uniqueidentifier,
    @UserName         nvarchar(256),
    @IsUserAnonymous  bit,
    @LastActivityDate DATETIME,
    @UserId           uniqueidentifier OUTPUT
AS
BEGIN
    IF( @UserId IS NULL )
        SELECT @UserId = NEWID()
    ELSE
    BEGIN
        IF( EXISTS( SELECT UserId FROM dbo.aspnet_Users
                    WHERE @UserId = UserId ) )
            RETURN -1
    END

    INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
    VALUES (@ApplicationId, @UserId, @UserName, LOWER(@UserName), @IsUserAnonymous, @LastActivityDate)

    RETURN 0
END' 
END
GO
/****** Objeto:  View [dbo].[vw_aspnet_Profiles]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Profiles]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_Profiles]
  AS SELECT [dbo].[aspnet_Profile].[UserId], [dbo].[aspnet_Profile].[LastUpdatedDate],
      [DataSize]=  DATALENGTH([dbo].[aspnet_Profile].[PropertyNames])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesString])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesBinary])
  FROM [dbo].[aspnet_Profile]
  '
GO
/****** Objeto:  View [dbo].[vw_aspnet_Roles]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Roles]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_Roles]
  AS SELECT [dbo].[aspnet_Roles].[ApplicationId], [dbo].[aspnet_Roles].[RoleId], [dbo].[aspnet_Roles].[RoleName], [dbo].[aspnet_Roles].[LoweredRoleName], [dbo].[aspnet_Roles].[Description]
  FROM [dbo].[aspnet_Roles]
  '
GO
/****** Objeto:  StoredProcedure [dbo].[paAddCliente]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paAddCliente]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paAddCliente]
	(
	@idcliente int OUTPUT,
	@nombre nvarchar(MAX),
	@telefono nvarchar(50),
	@email nvarchar(50)
	)
AS
	INSERT INTO CLIENTES (Nombre, Telefono,Email)
		VALUES (@nombre,@telefono,@email)
		
		
		
		SELECT @idcliente=idcliente FROM CLIENTES 
			WHERE Nombre = @nombre AND 
						Email = @email 
		
	RETURN
' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[paClienteUPD]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paClienteUPD]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paClienteUPD]
	(
	@idcliente int,
	@nombre nvarchar(50),
	@telefono nvarchar (50),
	@email nvarchar(50)
	)
AS
	
	UPDATE CLIENTES SET nombre = @nombre, telefono = @telefono, email=@email
	WHERE idCliente = @idcliente
	RETURN
' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[paRemoveCliente]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paRemoveCliente]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paRemoveCliente]
	(
	@idcliente int
	)
AS
	DELETE FROM CLIENTES 
	WHERE idCliente = @idCliente
	RETURN
' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[paGetClientes]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetClientes]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paGetClientes]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	SELECT * FROM CLIENTES
	RETURN
' 
END
GO
/****** Objeto:  View [dbo].[vw_aspnet_UsersInRoles]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_UsersInRoles]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_UsersInRoles]
  AS SELECT [dbo].[aspnet_UsersInRoles].[UserId], [dbo].[aspnet_UsersInRoles].[RoleId]
  FROM [dbo].[aspnet_UsersInRoles]
  '
GO
/****** Objeto:  StoredProcedure [dbo].[paGetMisPlantas]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetMisPlantas]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paGetMisPlantas]
	(
	@idusuario uniqueidentifier
	)
AS
	SELECT DISTINCT       Plantas.Descripcion, Plantas.Nserie, Inversores.EnlaceSUNNY
	FROM            Plantas INNER JOIN
	                         [CLIENTES-PLANTAS] INNER JOIN
	                         [CLIENTES-USUARIOS] ON [CLIENTES-PLANTAS].idCliente = [CLIENTES-USUARIOS].idCliente ON 
	                         Plantas.Nserie = [CLIENTES-PLANTAS].NSeriePlanta LEFT OUTER JOIN
	                         Inversores ON Plantas.Nserie = Inversores.ID_PLANTA
	WHERE        ([CLIENTES-USUARIOS].idUsuario = @idusuario)
	RETURN
' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[paAddUserToCliente]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paAddUserToCliente]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paAddUserToCliente]
	(
	@idcliente int,
	@idusuario uniqueidentifier
	)
AS
	INSERT INTO [CLIENTEs-USUARIOs] (idCliente, idUsuario) VALUES (@idCliente,@idusuario)
	RETURN
' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[paRemoveUserFromCliente]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paRemoveUserFromCliente]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paRemoveUserFromCliente]
	(
	@idcliente int,
	@idusuario uniqueidentifier
	)
AS
	DELETE FROM [CLIENTEs-USUARIOs] 
	WHERE idCliente = @idCliente AND idUsuario = @idusuario
	RETURN
' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[paIsUserInCliente]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paIsUserInCliente]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paIsUserInCliente]
	(
	@idcliente int,
	@idusuario uniqueidentifier
	)
AS
	Select* FROM [CLIENTEs-USUARIOs]
	WHERE (idCliente = @idCliente) AND (idUsuario=@idusuario)
	RETURN
' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[paRemovePlantaFromCliente]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paRemovePlantaFromCliente]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paRemovePlantaFromCliente]
	(
	@idcliente int,
	@planta nchar(15)
	)	
AS
	DELETE FROM [CLIENTES-PLANTAS]
	WHERE idCliente=@idcliente AND NSeriePlanta =@planta
	RETURN
' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[paAddPlantaToCliente]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paAddPlantaToCliente]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paAddPlantaToCliente]
	(
	@idcliente int,
	@planta nchar(15)
	)
AS
	INSERT INTO [CLIENTES-PLANTAS] (idCliente, NSeriePlanta) VALUES (@idcliente,@planta )
	RETURN
' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[paIsPlantaInCliente]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paIsPlantaInCliente]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paIsPlantaInCliente]
	(
	@idcliente int,
	@nserie nchar(15)
	)
AS
	Select* FROM [CLIENTEs-PLANTAS]
	WHERE (idCliente = @idcliente) AND (NSeriePlanta=@nserie)
	RETURN
' 
END
GO
/****** Objeto:  View [dbo].[vw_aspnet_WebPartState_Paths]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_Paths]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Paths]
  AS SELECT [dbo].[aspnet_Paths].[ApplicationId], [dbo].[aspnet_Paths].[PathId], [dbo].[aspnet_Paths].[Path], [dbo].[aspnet_Paths].[LoweredPath]
  FROM [dbo].[aspnet_Paths]
  '
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Paths_CreatePath]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Paths_CreatePath]
    @ApplicationId UNIQUEIDENTIFIER,
    @Path           NVARCHAR(256),
    @PathId         UNIQUEIDENTIFIER OUTPUT
AS
BEGIN
    BEGIN TRANSACTION
    IF (NOT EXISTS(SELECT * FROM dbo.aspnet_Paths WHERE LoweredPath = LOWER(@Path) AND ApplicationId = @ApplicationId))
    BEGIN
        INSERT dbo.aspnet_Paths (ApplicationId, Path, LoweredPath) VALUES (@ApplicationId, @Path, LOWER(@Path))
    END
    COMMIT TRANSACTION
    SELECT @PathId = PathId FROM dbo.aspnet_Paths WHERE LOWER(@Path) = LoweredPath AND ApplicationId = @ApplicationId
END' 
END
GO
/****** Objeto:  View [dbo].[vw_aspnet_WebPartState_User]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_User]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_WebPartState_User]
  AS SELECT [dbo].[aspnet_PersonalizationPerUser].[PathId], [dbo].[aspnet_PersonalizationPerUser].[UserId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationPerUser].[PageSettings]), [dbo].[aspnet_PersonalizationPerUser].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationPerUser]
  '
GO
/****** Objeto:  View [dbo].[vw_aspnet_WebPartState_Shared]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_Shared]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Shared]
  AS SELECT [dbo].[aspnet_PersonalizationAllUsers].[PathId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationAllUsers].[PageSettings]), [dbo].[aspnet_PersonalizationAllUsers].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationAllUsers]
  '
GO
/****** Objeto:  StoredProcedure [dbo].[paGetMisTareas]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetMisTareas]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paGetMisTareas]
	(
	@idusuario uniqueidentifier
	)
AS
	SELECT        [USUARIO-ALERTA].idUsuario, [USUARIO-ALERTA].idAlerta, DefinicionAlertas.Descripcion, [USUARIO-ALERTA].Diaria, [USUARIO-ALERTA].Habilitada, 
	                         [USUARIO-ALERTA].Instantanea, [USUARIO-ALERTA].Dias, [USUARIO-ALERTA].Hora, [USUARIO-ALERTA].Email
	FROM            [USUARIO-ALERTA] INNER JOIN
	                         DefinicionAlertas ON [USUARIO-ALERTA].idAlerta = DefinicionAlertas.idAlerta
	WHERE        ([USUARIO-ALERTA].idUsuario = @idusuario)
	RETURN
' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[paGetTareasEnabled]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paGetTareasEnabled]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paGetTareasEnabled]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	SELECT * FROM DefinicionAlertas 
	WHERE Habilitada = 1
	RETURN
' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[paAddAlertaToCliente]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paAddAlertaToCliente]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paAddAlertaToCliente]
	(
	@idusuario uniqueidentifier,
	@idalerta uniqueidentifier,
	@diaria bit,
	@instantanea bit,
	@email bit,
	@dias nvarchar(50),
	@hora nchar(5)
	)
AS
	INSERT INTO [USUARIO-ALERTA] (idUsuario, idAlerta, diaria, instantanea,dias, email, hora)
	VALUES (@idusuario,@idalerta, @diaria,@instantanea,@dias,@email,@hora)
	RETURN
' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[paUpdateAlertaFromUsuario]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[paUpdateAlertaFromUsuario]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[paUpdateAlertaFromUsuario]
	(
	@idusuario uniqueidentifier,
	@idalerta uniqueidentifier,
	@habilitada bit,
	@email bit
	)
AS
	UPDATE [USUARIO-ALERTA] SET Habilitada = @habilitada, Email = @email
	WHERE (idUsuario=@idusuario AND idAlerta= @idalerta)
	RETURN
' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[paCrearPanel]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
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
/****** Objeto:  StoredProcedure [dbo].[paEliminarPanel]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
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
/****** Objeto:  StoredProcedure [dbo].[paPanelUPD]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
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
/****** Objeto:  StoredProcedure [dbo].[paEliminarInversor]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
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
/****** Objeto:  StoredProcedure [dbo].[paGetInversores]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
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
/****** Objeto:  StoredProcedure [dbo].[paGetInversorByID]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
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
/****** Objeto:  StoredProcedure [dbo].[paInversorUPD]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
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
/****** Objeto:  StoredProcedure [dbo].[paCrearInversor]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
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
/****** Objeto:  StoredProcedure [dbo].[paPlantasUPD]    Fecha de la secuencia de comandos: 03/01/2009 23:54:30 ******/
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
/****** Objeto:  StoredProcedure [dbo].[paEliminarPlanta]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
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
/****** Objeto:  StoredProcedure [dbo].[paCrearPlanta]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
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
/****** Objeto:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_SetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CurrentTimeUtc, @UserId OUTPUT
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationPerUser WHERE UserId = @UserId AND PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationPerUser SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE UserId = @UserId AND PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationPerUser(UserId, PathId, PageSettings, LastUpdatedDate) VALUES (@UserId, @PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationAllUsers SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationAllUsers(PathId, PageSettings, LastUpdatedDate) VALUES (@PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_GetCountOfState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] (
    @Count int OUT,
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN

    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
        IF (@AllUsersScope = 1)
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND AllUsers.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
        ELSE
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND PerUser.UserId = Users.UserId
                  AND PerUser.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
                  AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
                  AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_ResetUserState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState] (
    @Count                  int                 OUT,
    @ApplicationName        NVARCHAR(256),
    @InactiveSinceDate      DATETIME            = NULL,
    @UserName               NVARCHAR(256)       = NULL,
    @Path                   NVARCHAR(256)       = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser
        WHERE Id IN (SELECT PerUser.Id
                     FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
                     WHERE Paths.ApplicationId = @ApplicationId
                           AND PerUser.UserId = Users.UserId
                           AND PerUser.PathId = Paths.PathId
                           AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
                           AND (@UserName IS NULL OR Users.LoweredUserName = LOWER(@UserName))
                           AND (@Path IS NULL OR Paths.LoweredPath = LOWER(@Path)))

        SELECT @Count = @@ROWCOUNT
    END
END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE PathId = @PathId AND UserId = @UserId
    RETURN 0
END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_GetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationPerUser p WHERE p.PathId = @PathId AND p.UserId = @UserId
END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_FindState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @PageIndex              INT,
    @PageSize               INT,
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound INT
    DECLARE @PageUpperBound INT
    DECLARE @TotalRecords   INT
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table to store the selected results
    CREATE TABLE #PageIndex (
        IndexId int IDENTITY (0, 1) NOT NULL,
        ItemId UNIQUEIDENTIFIER
    )

    IF (@AllUsersScope = 1)
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT Paths.PathId
        FROM dbo.aspnet_Paths Paths,
             ((SELECT Paths.PathId
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND AllUsers.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT DISTINCT Paths.PathId
               FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND PerUser.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path,
               SharedDataPerPath.LastUpdatedDate,
               SharedDataPerPath.SharedDataLength,
               UserDataPerPath.UserDataLength,
               UserDataPerPath.UserCount
        FROM dbo.aspnet_Paths Paths,
             ((SELECT PageIndex.ItemId AS PathId,
                      AllUsers.LastUpdatedDate AS LastUpdatedDate,
                      DATALENGTH(AllUsers.PageSettings) AS SharedDataLength
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, #PageIndex PageIndex
               WHERE AllUsers.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT PageIndex.ItemId AS PathId,
                      SUM(DATALENGTH(PerUser.PageSettings)) AS UserDataLength,
                      COUNT(*) AS UserCount
               FROM aspnet_PersonalizationPerUser PerUser, #PageIndex PageIndex
               WHERE PerUser.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
               GROUP BY PageIndex.ItemId
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC
    END
    ELSE
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT PerUser.Id
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
        WHERE Paths.ApplicationId = @ApplicationId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
              AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
        ORDER BY Paths.Path ASC, Users.UserName ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path, PerUser.LastUpdatedDate, DATALENGTH(PerUser.PageSettings), Users.UserName, Users.LastActivityDate
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths, #PageIndex PageIndex
        WHERE PerUser.Id = PageIndex.ItemId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
        ORDER BY Paths.Path ASC, Users.UserName ASC
    END

    RETURN @TotalRecords
END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_ResetSharedState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] (
    @Count int OUT,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationAllUsers
        WHERE PathId IN
            (SELECT AllUsers.PathId
             FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
             WHERE Paths.ApplicationId = @ApplicationId
                   AND AllUsers.PathId = Paths.PathId
                   AND Paths.LoweredPath = LOWER(@Path))

        SELECT @Count = @@ROWCOUNT
    END
END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_DeleteAllState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Count int OUT)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        IF (@AllUsersScope = 1)
            DELETE FROM aspnet_PersonalizationAllUsers
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)
        ELSE
            DELETE FROM aspnet_PersonalizationPerUser
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)

        SELECT @Count = @@ROWCOUNT
    END
END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationAllUsers p WHERE p.PathId = @PathId
END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    DELETE FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId
    RETURN 0
END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_CreateRole]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Roles_CreateRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS(SELECT RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId))
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    INSERT INTO dbo.aspnet_Roles
                (ApplicationId, RoleName, LoweredRoleName)
         VALUES (@ApplicationId, @RoleName, LOWER(@RoleName))

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_CreateUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_CreateUser]
    @ApplicationName                        nvarchar(256),
    @UserName                               nvarchar(256),
    @Password                               nvarchar(128),
    @PasswordSalt                           nvarchar(128),
    @Email                                  nvarchar(256),
    @PasswordQuestion                       nvarchar(256),
    @PasswordAnswer                         nvarchar(128),
    @IsApproved                             bit,
    @CurrentTimeUtc                         datetime,
    @CreateDate                             datetime = NULL,
    @UniqueEmail                            int      = 0,
    @PasswordFormat                         int      = 0,
    @UserId                                 uniqueidentifier OUTPUT
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @NewUserId uniqueidentifier
    SELECT @NewUserId = NULL

    DECLARE @IsLockedOut bit
    SET @IsLockedOut = 0

    DECLARE @LastLockoutDate  datetime
    SET @LastLockoutDate = CONVERT( datetime, ''17540101'', 112 )

    DECLARE @FailedPasswordAttemptCount int
    SET @FailedPasswordAttemptCount = 0

    DECLARE @FailedPasswordAttemptWindowStart  datetime
    SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )

    DECLARE @FailedPasswordAnswerAttemptCount int
    SET @FailedPasswordAnswerAttemptCount = 0

    DECLARE @FailedPasswordAnswerAttemptWindowStart  datetime
    SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )

    DECLARE @NewUserCreated bit
    DECLARE @ReturnValue   int
    SET @ReturnValue = 0

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    SET @CreateDate = @CurrentTimeUtc

    SELECT  @NewUserId = UserId FROM dbo.aspnet_Users WHERE LOWER(@UserName) = LoweredUserName AND @ApplicationId = ApplicationId
    IF ( @NewUserId IS NULL )
    BEGIN
        SET @NewUserId = @UserId
        EXEC @ReturnValue = dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CreateDate, @NewUserId OUTPUT
        SET @NewUserCreated = 1
    END
    ELSE
    BEGIN
        SET @NewUserCreated = 0
        IF( @NewUserId <> @UserId AND @UserId IS NOT NULL )
        BEGIN
            SET @ErrorCode = 6
            GOTO Cleanup
        END
    END

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @ReturnValue = -1 )
    BEGIN
        SET @ErrorCode = 10
        GOTO Cleanup
    END

    IF ( EXISTS ( SELECT UserId
                  FROM   dbo.aspnet_Membership
                  WHERE  @NewUserId = UserId ) )
    BEGIN
        SET @ErrorCode = 6
        GOTO Cleanup
    END

    SET @UserId = @NewUserId

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership m WITH ( UPDLOCK, HOLDLOCK )
                    WHERE ApplicationId = @ApplicationId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            SET @ErrorCode = 7
            GOTO Cleanup
        END
    END

    IF (@NewUserCreated = 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate = @CreateDate
        WHERE  @UserId = UserId
        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    INSERT INTO dbo.aspnet_Membership
                ( ApplicationId,
                  UserId,
                  Password,
                  PasswordSalt,
                  Email,
                  LoweredEmail,
                  PasswordQuestion,
                  PasswordAnswer,
                  PasswordFormat,
                  IsApproved,
                  IsLockedOut,
                  CreateDate,
                  LastLoginDate,
                  LastPasswordChangedDate,
                  LastLockoutDate,
                  FailedPasswordAttemptCount,
                  FailedPasswordAttemptWindowStart,
                  FailedPasswordAnswerAttemptCount,
                  FailedPasswordAnswerAttemptWindowStart )
         VALUES ( @ApplicationId,
                  @UserId,
                  @Password,
                  @PasswordSalt,
                  @Email,
                  LOWER(@Email),
                  @PasswordQuestion,
                  @PasswordAnswer,
                  @PasswordFormat,
                  @IsApproved,
                  @IsLockedOut,
                  @CreateDate,
                  @CreateDate,
                  @CreateDate,
                  @LastLockoutDate,
                  @FailedPasswordAttemptCount,
                  @FailedPasswordAttemptWindowStart,
                  @FailedPasswordAnswerAttemptCount,
                  @FailedPasswordAnswerAttemptWindowStart )

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_SetProperties]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_SetProperties]
    @ApplicationName        nvarchar(256),
    @PropertyNames          ntext,
    @PropertyValuesString   ntext,
    @PropertyValuesBinary   image,
    @UserName               nvarchar(256),
    @IsUserAnonymous        bit,
    @CurrentTimeUtc         datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
       BEGIN TRANSACTION
       SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DECLARE @UserId uniqueidentifier
    DECLARE @LastActivityDate datetime
    SELECT  @UserId = NULL
    SELECT  @LastActivityDate = @CurrentTimeUtc

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, @IsUserAnonymous, @LastActivityDate, @UserId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Users
    SET    LastActivityDate=@CurrentTimeUtc
    WHERE  UserId = @UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS( SELECT *
               FROM   dbo.aspnet_Profile
               WHERE  UserId = @UserId))
        UPDATE dbo.aspnet_Profile
        SET    PropertyNames=@PropertyNames, PropertyValuesString = @PropertyValuesString,
               PropertyValuesBinary = @PropertyValuesBinary, LastUpdatedDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    ELSE
        INSERT INTO dbo.aspnet_Profile(UserId, PropertyNames, PropertyValuesString, PropertyValuesBinary, LastUpdatedDate)
             VALUES (@UserId, @PropertyNames, @PropertyValuesString, @PropertyValuesBinary, @CurrentTimeUtc)

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Objeto:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_DeleteProfiles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
    @ApplicationName        nvarchar(256),
    @UserNames              nvarchar(4000)
AS
BEGIN
    DECLARE @UserName     nvarchar(256)
    DECLARE @CurrentPos   int
    DECLARE @NextPos      int
    DECLARE @NumDeleted   int
    DECLARE @DeletedUser  int
    DECLARE @TranStarted  bit
    DECLARE @ErrorCode    int

    SET @ErrorCode = 0
    SET @CurrentPos = 1
    SET @NumDeleted = 0
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    WHILE (@CurrentPos <= LEN(@UserNames))
    BEGIN
        SELECT @NextPos = CHARINDEX(N'','', @UserNames,  @CurrentPos)
        IF (@NextPos = 0 OR @NextPos IS NULL)
            SELECT @NextPos = LEN(@UserNames) + 1

        SELECT @UserName = SUBSTRING(@UserNames, @CurrentPos, @NextPos - @CurrentPos)
        SELECT @CurrentPos = @NextPos+1

        IF (LEN(@UserName) > 0)
        BEGIN
            SELECT @DeletedUser = 0
            EXEC dbo.aspnet_Users_DeleteUser @ApplicationName, @UserName, 4, @DeletedUser OUTPUT
            IF( @@ERROR <> 0 )
            BEGIN
                SET @ErrorCode = -1
                GOTO Cleanup
            END
            IF (@DeletedUser <> 0)
                SELECT @NumDeleted = @NumDeleted + 1
        END
    END
    SELECT @NumDeleted
    IF (@TranStarted = 1)
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END
    SET @TranStarted = 0

    RETURN 0

Cleanup:
    IF (@TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END
    RETURN @ErrorCode
END' 
END
GO
/****** Objeto:  Default [DF_AccionReparacion_idAccion]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_AccionReparacion_idAccion]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccionReparacion]'))
Begin
ALTER TABLE [dbo].[AccionReparacion] ADD  CONSTRAINT [DF_AccionReparacion_idAccion]  DEFAULT (newid()) FOR [idAccion]

End
GO
/****** Objeto:  Default [DF_AccionReparacion_orden]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_AccionReparacion_orden]') AND parent_object_id = OBJECT_ID(N'[dbo].[AccionReparacion]'))
Begin
ALTER TABLE [dbo].[AccionReparacion] ADD  CONSTRAINT [DF_AccionReparacion_orden]  DEFAULT ((1)) FOR [orden]

End
GO
/****** Objeto:  Default [DF__aspnet_Ap__Appli__014935CB]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Ap__Appli__014935CB]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Applications]'))
Begin
ALTER TABLE [dbo].[aspnet_Applications] ADD  CONSTRAINT [DF__aspnet_Ap__Appli__014935CB]  DEFAULT (newid()) FOR [ApplicationId]

End
GO
/****** Objeto:  Default [DF__aspnet_Me__Passw__164452B1]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Me__Passw__164452B1]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
Begin
ALTER TABLE [dbo].[aspnet_Membership] ADD  CONSTRAINT [DF__aspnet_Me__Passw__164452B1]  DEFAULT ((0)) FOR [PasswordFormat]

End
GO
/****** Objeto:  Default [DF__aspnet_Pa__PathI__46E78A0C]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Pa__PathI__46E78A0C]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]'))
Begin
ALTER TABLE [dbo].[aspnet_Paths] ADD  CONSTRAINT [DF__aspnet_Pa__PathI__46E78A0C]  DEFAULT (newid()) FOR [PathId]

End
GO
/****** Objeto:  Default [DF__aspnet_Perso__Id__4E88ABD4]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Perso__Id__4E88ABD4]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
Begin
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD  CONSTRAINT [DF__aspnet_Perso__Id__4E88ABD4]  DEFAULT (newid()) FOR [Id]

End
GO
/****** Objeto:  Default [DF__aspnet_Ro__RoleI__33D4B598]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Ro__RoleI__33D4B598]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]'))
Begin
ALTER TABLE [dbo].[aspnet_Roles] ADD  CONSTRAINT [DF__aspnet_Ro__RoleI__33D4B598]  DEFAULT (newid()) FOR [RoleId]

End
GO
/****** Objeto:  Default [DF__aspnet_Us__UserI__0519C6AF]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Us__UserI__0519C6AF]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
Begin
ALTER TABLE [dbo].[aspnet_Users] ADD  CONSTRAINT [DF__aspnet_Us__UserI__0519C6AF]  DEFAULT (newid()) FOR [UserId]

End
GO
/****** Objeto:  Default [DF__aspnet_Us__Mobil__060DEAE8]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Us__Mobil__060DEAE8]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
Begin
ALTER TABLE [dbo].[aspnet_Users] ADD  CONSTRAINT [DF__aspnet_Us__Mobil__060DEAE8]  DEFAULT (NULL) FOR [MobileAlias]

End
GO
/****** Objeto:  Default [DF__aspnet_Us__IsAno__07020F21]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__aspnet_Us__IsAno__07020F21]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
Begin
ALTER TABLE [dbo].[aspnet_Users] ADD  CONSTRAINT [DF__aspnet_Us__IsAno__07020F21]  DEFAULT ((0)) FOR [IsAnonymous]

End
GO
/****** Objeto:  Default [DF_ClasificacionIncidencias_ID]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_ClasificacionIncidencias_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClasificacionIncidencias]'))
Begin
ALTER TABLE [dbo].[ClasificacionIncidencias] ADD  CONSTRAINT [DF_ClasificacionIncidencias_ID]  DEFAULT (newid()) FOR [ID]

End
GO
/****** Objeto:  Default [DF_ClasificacionIncidencias_Coste]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_ClasificacionIncidencias_Coste]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClasificacionIncidencias]'))
Begin
ALTER TABLE [dbo].[ClasificacionIncidencias] ADD  CONSTRAINT [DF_ClasificacionIncidencias_Coste]  DEFAULT ((0)) FOR [Coste]

End
GO
/****** Objeto:  Default [DF_DefinicionAlertas_idAlerta]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_DefinicionAlertas_idAlerta]') AND parent_object_id = OBJECT_ID(N'[dbo].[DefinicionAlertas]'))
Begin
ALTER TABLE [dbo].[DefinicionAlertas] ADD  CONSTRAINT [DF_DefinicionAlertas_idAlerta]  DEFAULT (newid()) FOR [idAlerta]

End
GO
/****** Objeto:  Default [DF_DefinicionAlertas_Habilitada]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_DefinicionAlertas_Habilitada]') AND parent_object_id = OBJECT_ID(N'[dbo].[DefinicionAlertas]'))
Begin
ALTER TABLE [dbo].[DefinicionAlertas] ADD  CONSTRAINT [DF_DefinicionAlertas_Habilitada]  DEFAULT ((0)) FOR [Habilitada]

End
GO
/****** Objeto:  Default [DF_HistoricoMantenimientos_Estado]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_HistoricoMantenimientos_Estado]') AND parent_object_id = OBJECT_ID(N'[dbo].[HistoricoMantenimientos]'))
Begin
ALTER TABLE [dbo].[HistoricoMantenimientos] ADD  CONSTRAINT [DF_HistoricoMantenimientos_Estado]  DEFAULT ((0)) FOR [Estado]

End
GO
/****** Objeto:  Default [DF_Incidencias_ID]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Incidencias_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Incidencias]'))
Begin
ALTER TABLE [dbo].[Incidencias] ADD  CONSTRAINT [DF_Incidencias_ID]  DEFAULT (newid()) FOR [ID]

End
GO
/****** Objeto:  Default [DF_OrdenesTrabajo_idOrden]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_OrdenesTrabajo_idOrden]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrdenesTrabajo]'))
Begin
ALTER TABLE [dbo].[OrdenesTrabajo] ADD  CONSTRAINT [DF_OrdenesTrabajo_idOrden]  DEFAULT (newid()) FOR [idOrden]

End
GO
/****** Objeto:  Default [DF_Tareas_idTarea]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Tareas_idTarea]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tareas]'))
Begin
ALTER TABLE [dbo].[Tareas] ADD  CONSTRAINT [DF_Tareas_idTarea]  DEFAULT (newid()) FOR [idTarea]

End
GO
/****** Objeto:  Default [DF_Tareas_Habilitada]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Tareas_Habilitada]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tareas]'))
Begin
ALTER TABLE [dbo].[Tareas] ADD  CONSTRAINT [DF_Tareas_Habilitada]  DEFAULT ((0)) FOR [Habilitada]

End
GO
/****** Objeto:  Default [DF_Trabajos_idTrabajo]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Trabajos_idTrabajo]') AND parent_object_id = OBJECT_ID(N'[dbo].[Trabajos]'))
Begin
ALTER TABLE [dbo].[Trabajos] ADD  CONSTRAINT [DF_Trabajos_idTrabajo]  DEFAULT (newid()) FOR [idTrabajo]

End
GO
/****** Objeto:  Default [DF_USUARIO-ALERTA_Diaria]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_USUARIO-ALERTA_Diaria]') AND parent_object_id = OBJECT_ID(N'[dbo].[USUARIO-ALERTA]'))
Begin
ALTER TABLE [dbo].[USUARIO-ALERTA] ADD  CONSTRAINT [DF_USUARIO-ALERTA_Diaria]  DEFAULT ((0)) FOR [Diaria]

End
GO
/****** Objeto:  Default [DF_USUARIO-ALERTA_Estado]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_USUARIO-ALERTA_Estado]') AND parent_object_id = OBJECT_ID(N'[dbo].[USUARIO-ALERTA]'))
Begin
ALTER TABLE [dbo].[USUARIO-ALERTA] ADD  CONSTRAINT [DF_USUARIO-ALERTA_Estado]  DEFAULT ((1)) FOR [Habilitada]

End
GO
/****** Objeto:  Default [DF_USUARIO-ALERTA_Instantanea]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_USUARIO-ALERTA_Instantanea]') AND parent_object_id = OBJECT_ID(N'[dbo].[USUARIO-ALERTA]'))
Begin
ALTER TABLE [dbo].[USUARIO-ALERTA] ADD  CONSTRAINT [DF_USUARIO-ALERTA_Instantanea]  DEFAULT ((-1)) FOR [Instantanea]

End
GO
/****** Objeto:  Default [DF_USUARIO-ALERTA_Email]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_USUARIO-ALERTA_Email]') AND parent_object_id = OBJECT_ID(N'[dbo].[USUARIO-ALERTA]'))
Begin
ALTER TABLE [dbo].[USUARIO-ALERTA] ADD  CONSTRAINT [DF_USUARIO-ALERTA_Email]  DEFAULT ((0)) FOR [Email]

End
GO
/****** Objeto:  ForeignKey [FK__aspnet_Me__Appli__145C0A3F]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Me__Appli__145C0A3F]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Me__Appli__145C0A3F] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Membership] CHECK CONSTRAINT [FK__aspnet_Me__Appli__145C0A3F]
GO
/****** Objeto:  ForeignKey [FK__aspnet_Me__UserI__15502E78]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Me__UserI__15502E78]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Me__UserI__15502E78] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Membership] CHECK CONSTRAINT [FK__aspnet_Me__UserI__15502E78]
GO
/****** Objeto:  ForeignKey [FK__aspnet_Pa__Appli__45F365D3]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pa__Appli__45F365D3]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]'))
ALTER TABLE [dbo].[aspnet_Paths]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pa__Appli__45F365D3] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Paths] CHECK CONSTRAINT [FK__aspnet_Pa__Appli__45F365D3]
GO
/****** Objeto:  ForeignKey [FK__aspnet_Pe__PathI__4BAC3F29]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__PathI__4BAC3F29]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers]'))
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pe__PathI__4BAC3F29] FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers] CHECK CONSTRAINT [FK__aspnet_Pe__PathI__4BAC3F29]
GO
/****** Objeto:  ForeignKey [FK__aspnet_Pe__PathI__4F7CD00D]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__PathI__4F7CD00D]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pe__PathI__4F7CD00D] FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] CHECK CONSTRAINT [FK__aspnet_Pe__PathI__4F7CD00D]
GO
/****** Objeto:  ForeignKey [FK__aspnet_Pe__UserI__5070F446]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__UserI__5070F446]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pe__UserI__5070F446] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] CHECK CONSTRAINT [FK__aspnet_Pe__UserI__5070F446]
GO
/****** Objeto:  ForeignKey [FK__aspnet_Pr__UserI__29572725]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pr__UserI__29572725]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Profile]'))
ALTER TABLE [dbo].[aspnet_Profile]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pr__UserI__29572725] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Profile] CHECK CONSTRAINT [FK__aspnet_Pr__UserI__29572725]
GO
/****** Objeto:  ForeignKey [FK__aspnet_Ro__Appli__32E0915F]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Ro__Appli__32E0915F]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]'))
ALTER TABLE [dbo].[aspnet_Roles]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Ro__Appli__32E0915F] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Roles] CHECK CONSTRAINT [FK__aspnet_Ro__Appli__32E0915F]
GO
/****** Objeto:  ForeignKey [FK__aspnet_Us__Appli__0425A276]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__Appli__0425A276]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Us__Appli__0425A276] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Users] CHECK CONSTRAINT [FK__aspnet_Us__Appli__0425A276]
GO
/****** Objeto:  ForeignKey [FK__aspnet_Us__RoleI__37A5467C]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__RoleI__37A5467C]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]'))
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Us__RoleI__37A5467C] FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles] CHECK CONSTRAINT [FK__aspnet_Us__RoleI__37A5467C]
GO
/****** Objeto:  ForeignKey [FK__aspnet_Us__UserI__36B12243]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__UserI__36B12243]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]'))
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Us__UserI__36B12243] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles] CHECK CONSTRAINT [FK__aspnet_Us__UserI__36B12243]
GO
/****** Objeto:  ForeignKey [FK_ClasificacionIncidencias_GrupoIncidencias]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ClasificacionIncidencias_GrupoIncidencias]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClasificacionIncidencias]'))
ALTER TABLE [dbo].[ClasificacionIncidencias]  WITH CHECK ADD  CONSTRAINT [FK_ClasificacionIncidencias_GrupoIncidencias] FOREIGN KEY([idGrupo])
REFERENCES [dbo].[GrupoIncidencias] ([ID])
GO
ALTER TABLE [dbo].[ClasificacionIncidencias] CHECK CONSTRAINT [FK_ClasificacionIncidencias_GrupoIncidencias]
GO
/****** Objeto:  ForeignKey [FK_ClasificacionIncidencias_NivelesIncidencia]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ClasificacionIncidencias_NivelesIncidencia]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClasificacionIncidencias]'))
ALTER TABLE [dbo].[ClasificacionIncidencias]  WITH CHECK ADD  CONSTRAINT [FK_ClasificacionIncidencias_NivelesIncidencia] FOREIGN KEY([idNivel])
REFERENCES [dbo].[NivelesIncidencia] ([ID])
GO
ALTER TABLE [dbo].[ClasificacionIncidencias] CHECK CONSTRAINT [FK_ClasificacionIncidencias_NivelesIncidencia]
GO
/****** Objeto:  ForeignKey [FK_Incidencias_ClasificacionIncidencias]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Incidencias_ClasificacionIncidencias]') AND parent_object_id = OBJECT_ID(N'[dbo].[Incidencias]'))
ALTER TABLE [dbo].[Incidencias]  WITH CHECK ADD  CONSTRAINT [FK_Incidencias_ClasificacionIncidencias] FOREIGN KEY([TipoIncidencia])
REFERENCES [dbo].[ClasificacionIncidencias] ([ID])
GO
ALTER TABLE [dbo].[Incidencias] CHECK CONSTRAINT [FK_Incidencias_ClasificacionIncidencias]
GO
/****** Objeto:  ForeignKey [FK_Inversores_Plantas]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Inversores_Plantas]') AND parent_object_id = OBJECT_ID(N'[dbo].[Inversores]'))
ALTER TABLE [dbo].[Inversores]  WITH CHECK ADD  CONSTRAINT [FK_Inversores_Plantas] FOREIGN KEY([ID_PLANTA])
REFERENCES [dbo].[Plantas] ([Nserie])
GO
ALTER TABLE [dbo].[Inversores] CHECK CONSTRAINT [FK_Inversores_Plantas]
GO
/****** Objeto:  ForeignKey [FK_Paneles_Seguidores]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Paneles_Seguidores]') AND parent_object_id = OBJECT_ID(N'[dbo].[Paneles]'))
ALTER TABLE [dbo].[Paneles]  WITH CHECK ADD  CONSTRAINT [FK_Paneles_Seguidores] FOREIGN KEY([ID_SEGUIDOR])
REFERENCES [dbo].[Seguidores] ([NSerie])
GO
ALTER TABLE [dbo].[Paneles] CHECK CONSTRAINT [FK_Paneles_Seguidores]
GO
/****** Objeto:  ForeignKey [FK_Seguidores_Strings]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Seguidores_Strings]') AND parent_object_id = OBJECT_ID(N'[dbo].[Seguidores]'))
ALTER TABLE [dbo].[Seguidores]  WITH CHECK ADD  CONSTRAINT [FK_Seguidores_Strings] FOREIGN KEY([ID_STRING])
REFERENCES [dbo].[Strings] ([Nserie])
GO
ALTER TABLE [dbo].[Seguidores] CHECK CONSTRAINT [FK_Seguidores_Strings]
GO
/****** Objeto:  ForeignKey [FK_SeguimientoPlantas_Plantas]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SeguimientoPlantas_Plantas]') AND parent_object_id = OBJECT_ID(N'[dbo].[SeguimientoPlantas]'))
ALTER TABLE [dbo].[SeguimientoPlantas]  WITH CHECK ADD  CONSTRAINT [FK_SeguimientoPlantas_Plantas] FOREIGN KEY([Planta])
REFERENCES [dbo].[Plantas] ([Nserie])
GO
ALTER TABLE [dbo].[SeguimientoPlantas] CHECK CONSTRAINT [FK_SeguimientoPlantas_Plantas]
GO
/****** Objeto:  ForeignKey [FK_Strings_Inversores]    Fecha de la secuencia de comandos: 03/01/2009 23:54:29 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Strings_Inversores]') AND parent_object_id = OBJECT_ID(N'[dbo].[Strings]'))
ALTER TABLE [dbo].[Strings]  WITH CHECK ADD  CONSTRAINT [FK_Strings_Inversores] FOREIGN KEY([ID_INVERSOR])
REFERENCES [dbo].[Inversores] ([Nserie])
GO
ALTER TABLE [dbo].[Strings] CHECK CONSTRAINT [FK_Strings_Inversores]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_Membership_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_Membership_ReportingAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_Personalization_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_Personalization_ReportingAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_Profile_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_Profile_ReportingAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_Roles_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_Roles_ReportingAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_WebEvent_FullAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer] TO [aspnet_Membership_FullAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_CreateUser] TO [aspnet_Membership_FullAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_FindUsersByEmail] TO [aspnet_Membership_ReportingAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_FindUsersByName] TO [aspnet_Membership_ReportingAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetAllUsers] TO [aspnet_Membership_ReportingAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetNumberOfUsersOnline] TO [aspnet_Membership_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetNumberOfUsersOnline] TO [aspnet_Membership_ReportingAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetPassword] TO [aspnet_Membership_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetPasswordWithFormat] TO [aspnet_Membership_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetUserByEmail] TO [aspnet_Membership_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetUserByEmail] TO [aspnet_Membership_ReportingAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetUserByName] TO [aspnet_Membership_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetUserByName] TO [aspnet_Membership_ReportingAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetUserByUserId] TO [aspnet_Membership_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetUserByUserId] TO [aspnet_Membership_ReportingAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_ResetPassword] TO [aspnet_Membership_FullAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_SetPassword] TO [aspnet_Membership_FullAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_UnlockUser] TO [aspnet_Membership_FullAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_UpdateUser] TO [aspnet_Membership_FullAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_UpdateUserInfo] TO [aspnet_Membership_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_Paths_CreatePath] TO [aspnet_Personalization_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_Personalization_GetApplicationId] TO [aspnet_Personalization_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] TO [aspnet_Personalization_FullAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationAdministration_FindState] TO [aspnet_Personalization_ReportingAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] TO [aspnet_Personalization_ReportingAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] TO [aspnet_Personalization_FullAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationAdministration_ResetUserState] TO [aspnet_Personalization_FullAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] TO [aspnet_Personalization_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] TO [aspnet_Personalization_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] TO [aspnet_Personalization_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] TO [aspnet_Personalization_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] TO [aspnet_Personalization_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] TO [aspnet_Personalization_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_Profile_DeleteInactiveProfiles] TO [aspnet_Profile_FullAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_Profile_DeleteProfiles] TO [aspnet_Profile_FullAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles] TO [aspnet_Profile_ReportingAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_Profile_GetProfiles] TO [aspnet_Profile_ReportingAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_Profile_GetProperties] TO [aspnet_Profile_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_Profile_SetProperties] TO [aspnet_Profile_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_Membership_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_Membership_ReportingAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_Personalization_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_Personalization_ReportingAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_Profile_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_Profile_ReportingAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_Roles_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_Roles_ReportingAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_WebEvent_FullAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_Roles_CreateRole] TO [aspnet_Roles_FullAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_Roles_DeleteRole] TO [aspnet_Roles_FullAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_Roles_GetAllRoles] TO [aspnet_Roles_ReportingAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_Roles_RoleExists] TO [aspnet_Roles_ReportingAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_Membership_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_Membership_ReportingAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_Personalization_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_Personalization_ReportingAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_Profile_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_Profile_ReportingAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_Roles_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_Roles_ReportingAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_WebEvent_FullAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_Users_DeleteUser] TO [aspnet_Membership_FullAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_UsersInRoles_AddUsersToRoles] TO [aspnet_Roles_FullAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_UsersInRoles_FindUsersInRole] TO [aspnet_Roles_ReportingAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_UsersInRoles_GetRolesForUser] TO [aspnet_Roles_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_UsersInRoles_GetRolesForUser] TO [aspnet_Roles_ReportingAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_UsersInRoles_GetUsersInRoles] TO [aspnet_Roles_ReportingAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_UsersInRoles_IsUserInRole] TO [aspnet_Roles_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_UsersInRoles_IsUserInRole] TO [aspnet_Roles_ReportingAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles] TO [aspnet_Roles_FullAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_WebEvent_LogEvent] TO [aspnet_WebEvent_FullAccess]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Applications] TO [aspnet_Membership_ReportingAccess]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Applications] TO [aspnet_Personalization_ReportingAccess]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Applications] TO [aspnet_Profile_ReportingAccess]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Applications] TO [aspnet_Roles_ReportingAccess]
GO
GRANT SELECT ON [dbo].[vw_aspnet_MembershipUsers] TO [aspnet_Membership_ReportingAccess]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Profiles] TO [aspnet_Profile_ReportingAccess]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Roles] TO [aspnet_Roles_ReportingAccess]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Users] TO [aspnet_Membership_ReportingAccess]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Users] TO [aspnet_Personalization_ReportingAccess]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Users] TO [aspnet_Profile_ReportingAccess]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Users] TO [aspnet_Roles_ReportingAccess]
GO
GRANT SELECT ON [dbo].[vw_aspnet_UsersInRoles] TO [aspnet_Roles_ReportingAccess]
GO
GRANT SELECT ON [dbo].[vw_aspnet_WebPartState_Paths] TO [aspnet_Personalization_ReportingAccess]
GO
GRANT SELECT ON [dbo].[vw_aspnet_WebPartState_Shared] TO [aspnet_Personalization_ReportingAccess]
GO
GRANT SELECT ON [dbo].[vw_aspnet_WebPartState_User] TO [aspnet_Personalization_ReportingAccess]
GO
