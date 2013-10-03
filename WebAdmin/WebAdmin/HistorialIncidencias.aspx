<%@ Page Language="C#" MasterPageFile="~/IGM.Master" AutoEventWireup="true" CodeBehind="HistorialIncidencias.aspx.cs"
    Inherits="WebAdmin.HistorialIncidencias" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Historial de Incidencias
</asp:Content>
<asp:Content ID="contentHead" ContentPlaceHolderID="head" runat="server">

    <script>
        $(document).ready(function() {
            $(".txtFecha").datepicker({
                showOn: "button",
                buttonImage: "/images/calendar7.png",
                buttonImageOnly: true
            });
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <div id="titular">
        Historial de Incidencias
    </div>
    <div id="menu">
        <table style="width:100%">
            <tr>
                <td colspan="2" align="left">
                    <span class="txtLabel" style="vertical-align: middle;">Fecha Inicio:</span>
                    <asp:TextBox ID="txtCal1" runat="server" class="txtFecha" Style="vertical-align: middle;" />
                </td>
                <td colspan="2" align="left">
                    <span class="txtLabel" style="vertical-align: middle;">Fecha Fin:</span>
                    <asp:TextBox ID="txtCal2" runat="server" class="txtFecha" Style="vertical-align: middle;" />
                </td>
            </tr>
            <tr>
            <td colspan="4">
             <label class="txtLabel">
                        Contiene la palabra:</label>
            
                <asp:TextBox ID="txtWords" runat="server" Style="vertical-align: middle;width:80%;" />
            </td>
            </tr>
            <tr>
                <td>
                    <label class="txtLabel">
                        Filtrar</label>
                </td>
                <td>
                    <input type="radio" id="all" name="view" value="all" checked />
                    <label for="all" class="txtLabel">
                        Mostrar todas</label>
                </td>
                <td>
                    <input type="radio" id="open" name="view" value="open" />
                    <label for="open" class="txtLabel">
                        Mostrar sólo abiertas</label>
                </td>
                <td>
                    <input type="radio" id="closed" name="view" value="closed" />
                    <label for="closed" class="txtLabel">
                        Mostrar sólo cerradas</label>
                </td>
            </tr>
            <tr>
            <td colspan="3"></td>
            <td style="text-align:right;">
                <asp:Button ID="cmdFiltrar" runat="server" Text="Filtrar" 
                    onclick="cmdFiltrar_Click" /></td>
            </tr>
        </table>
    </div>
    <div class="centro">
        <span class="idIncidencia subtitular">PLANTA</span> <span class="subtitular fechaIncidencia">
            F. INICIO</span> <span class="subtitular duracionIncidencia">F. FIN</span>
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
                    duracion = ((DateTime)item.FechaCierre).ToShortDateString();
                }
               
                
        %>
        <div class="incidencia">
            <span class="idIncidencia">
                <%=item.NSerie %></span> <span class="fechaIncidencia">
                    <%=string.Format("{0:d}",item.FechaApertura) %></span> <span class="duracionIncidencia">
                        <%=duracion %></span> <span class="observacionIncidencia">
                            <%=item.Descripcion%></span> <span class="observacionIncidencia">
                                <%=item.Observaciones%></span> <span class="estadoIncidencia">
                                    <%=estado %></span>
        </div>
        <% } %>
    </div>
</asp:Content>
