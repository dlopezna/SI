﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/IGM.Master" CodeBehind="frmOrden.aspx.cs"
    Inherits="WebAdmin.frmOrden" %>

<asp:Content ID="contentTitle" runat="server" ContentPlaceHolderID="title">
    Orden de Trabajo
</asp:Content>
<asp:Content ID="content2" runat="server" ContentPlaceHolderID="cphMain">
    <form id="form1" style="text-align: left;">
    <div id="titular">
        Orden de Trabajo
    </div>
    <div class="menu">
        <%if (_ordenTrabajo.FechaFinal == null)
          { %>
        <asp:Button ID="cmdSave" runat="server" Text="Guardar" OnClick="cmdGuardar_Click" />
        <%} %>
        <asp:Button ID="cmdCancel" runat="server" Text="Cancelar" 
            onclick="cmdCancel_Click" />
    </div>
    <div id="divIncidencia">
        <table width="100%">
            <tr>
                <td>
                    <span class="txtLabel">Orden de trabajo: </span>
                </td>
                <td colspan="3">
                    <asp:Label CssClass="txtOutput" ID="lblOrden" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <span class="txtLabel">Fecha Inicio: </span>
                </td>
                <td>
                    <asp:Label CssClass="txtOutput" ID="lblFecha" runat="server" />
                </td>
                <td>
                    <span class="txtLabel">Fecha Finalización Previstas: </span>
                </td>
                <td>
                    <asp:Label CssClass="txtOutput" ID="lblFechaFinPrevista" runat="server" />
                </td>
            </tr>
            <tr>
                <td colspan="4">
                </td>
            </tr>
            <tr>
                <td>
                    <span class="txtLabel">ID Motivo:</span>
                </td>
                <td colspan="3">
                    <asp:Label ID="lblIdMotivo" runat="server" CssClass="txtOutput" />
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <center>
                        <span class="txtLabel">Descripción</span></center>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:TextBox ID="txtDescripcion" runat="server" TextMode="MultiLine" Width="100%"
                        ReadOnly="true" Rows="5" />
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <center>
                        <span class="txtLabel">Observaciones</span></center>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:TextBox ID="txtObservaciones" runat="server" TextMode="MultiLine" Width="100%"
                        Rows="6" />
                </td>
            </tr>
        </table>
    </div>
    <div class="menu">
        <%if (_ordenTrabajo.FechaFinal == null)
          { %>
        <asp:Button ID="Button1" runat="server" Text="Cerrar" OnClick="cmdFinalizar_Click" />
        <%} %>
    </div>
    </form>
</asp:Content>
