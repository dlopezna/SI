<%@ Page Language="C#" MasterPageFile="~/IGM.Master" AutoEventWireup="true" CodeBehind="Ordenes.aspx.cs"
    Inherits="WebAdmin.Ordenes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script language="javascript" type="text/javascript">
        function openfrmOrden() {

            window.open('frmOrden.aspx', "Orden", 'Location=NO, Directories=NO, Width=550,Height=420,Top=200,Resizable=NO,Menubar=NO,Titlebar=NO, Left=150,Toolbar=NO,Status=NO');

        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <div class="subtitular">
        Ordenes de Trabajo Activas
    </div>
    <div class="centro">
        <span class="accionOrden subtitular">Acción</span><span class="idOrden subtitular">ID.
            ORDEN</span><span class="subtitular fechaOrden">FECHA APERTURA</span><span class="subtitular fechaOrden">FECHA
                ESTIMADA</span> <span class="subtitular observacionOrden">OBSERVACIONES</span>
        <%
            if (_ordenesAbiertas.Count == 0)
            {%>
        <div class="sinIncidencias">
            NO HAY INCIDENCIAS ABIERTAS</div>
        <%}

        foreach (var item in _ordenesAbiertas)
        {%>
        <div class="orden">
            <span class="accionOrden"><a href="/frmOrden.aspx?id=<%=item.IdOrden %>">Editar</a></span>
            <span class="idOrden">
                <%=item.IdOrden %></span> <span class="fechaOrden">
                    <%=string.Format("{0:d}",item.FechaInicio) %></span> <span class="fechaOrden">
                        <%=string.Format("{0:d}",item.FechaFinalEstimada) %></span> <span class="observacionOrden">
                            <%=item.Observaciones%></span>
        </div>
        <%}
        %>
    </div>
    <br />
    <br />
    <div style="clear: both;">
    </div>
    <div class="subtitular">
        Ordenes de Trabajo Cerradas
    </div>
    <div class="centro">
        <span class="accionOrden subtitular">Acción</span> <span class="subtitular fechaOrden">
            FECHA APERTURA</span> <span class="subtitular fechaOrden">FECHA CIERRE</span>
        <span class="subtitular duracionOrden">DURACIÓN</span> <span class="subtitular observacionOrdenCerrada">
            OBSERVACIONES</span>
        <%
            if (_ordenesCerradas.Count == 0)
            {%>
        <div class="sinIncidencias">
            NO HAY INCIDENCIAS ABIERTAS</div>
        <%}

        foreach (var item in _ordenesCerradas)
        {
            TimeSpan ts = (DateTime)item.FechaFinal - item.FechaInicio;
            int d = ts.Days;
            int h = ts.Hours;
        %>
        <div class="orden">
            <span class="accionOrden"><a href="/frmOrden.aspx?id=<%=item.IdOrden %>">Ver</a></span>
            <span class="fechaOrden">
                <%=string.Format("{0:d}",item.FechaInicio) %></span> <span class="fechaOrden">
                    <%=string.Format("{0:d}",item.FechaFinal) %></span> <span class="duracionOrden">
                        <%=string.Format("{0} días y {1} minutos",d,h) %></span> <span class="observacionOrdenCerrada">
                            <%=item.Observaciones %></span>
        </div>
        <%}
        %>
    </div>
</asp:Content>
