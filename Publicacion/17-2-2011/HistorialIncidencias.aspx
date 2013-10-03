<%@ Page Language="C#" MasterPageFile="~/IGM.Master" AutoEventWireup="true" CodeBehind="HistorialIncidencias.aspx.cs"
    Inherits="WebAdmin.HistorialIncidencias" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Historial de Incidencias
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <div id="titular">
        Historial de Incidencias
    </div>
    <div id="menu">
        <table>
            <tr>
                <td colspan="2" align="center">
                    <span class="txtLabel" style="vertical-align: middle;">Fecha Inicio:</span>
                    <asp:TextBox ID="txtCal1" runat="server" CssClass="txtInput" Style="vertical-align: middle;" />
                    <asp:Image ID="imgCal1" runat="server" Style="vertical-align: middle;" ImageUrl="~/Images/calendar1.png" />
                </td>
                <td colspan="2" align="center">
                    <span class="txtLabel" style="vertical-align: middle;">Fecha Fin:</span>
                    <asp:TextBox ID="txtCal2" runat="server" CssClass="txtInput" Style="vertical-align: middle;" />
                    <asp:Image ID="imgCal2" runat="server" ImageAlign="Middle" ImageUrl="~/Images/calendar1.png" />
                </td>
            </tr>
        </table>
    </div>
    <div class="centro">
        <span class="idIncidencia subtitular">ID</span> <span class="subtitular fechaIncidencia">
            FECHA APERTURA</span> <span class="subtitular duracionIncidencia">DURACIÓN</span>
        <span class="subtitular observacionIncidencia">DESCRIPCIÓN</span> <span class="subtitular observacionIncidencia">
            OBSERVACIONES</span> <span class="subtitular estadoIncidencia">ESTADO</span>
        <%
            if (_incidencias.Count == 0)
            {%>
        <div class="sinIncidencias">
            NO HAY INCIDENCIAS ABIERTAS</div>
        <%}

            foreach (var item in _incidencias)
            {
                string estado = "Abierta";
                string duracion = "En curso";
                if (item.FechaCierre != null)
                {
                    estado = "Cerrada";

                    TimeSpan ts = (DateTime)item.FechaCierre - item.FechaApertura;
                    int d = ts.Days;
                    int h = ts.Hours;
                    duracion = string.Format("{0} días y {1} horas", d, h);
                }
               
                
        %>
        <div class="incidencia">
            <span class="idIncidencia">
                <%=item.ID %></span> <span class="fechaIncidencia">
                    <%=string.Format("{0:d}",item.FechaApertura) %></span> <span class="duracionIncidencia">
                        <%=duracion %></span> <span class="observacionIncidencia">
                            <%=item.Descripcion%></span> <span class="observacionIncidencia">
                                <%=item.Observaciones%></span> <span class="estadoIncidencia">
                                    <%=estado %></span>
        </div>
        <% } %>
    </div>
</asp:Content>
