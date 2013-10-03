<%@ Page Language="C#" MasterPageFile="~/IGM.Master" AutoEventWireup="true" CodeBehind="Inventario.aspx.cs"
    Inherits="WebAdmin.Inventario" %>

<%@ Import Namespace="LOBIncidencias" %>
<%@ Import Namespace="System.Collections.Generic" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <div id="titular">
        Inventario
    </div>
    <div id="menu">
        <asp:ImageButton ID="cmdNuevo" runat="server" OnClientClick="reset" AlternateText="Nuevo"
            BorderStyle="Ridge" BorderWidth="1px" ImageUrl="~/Images/Nuevo.png" OnClick="cmdNuevo_Click" />
        &nbsp;<asp:ImageButton ID="cmdGuardar" runat="server" OnClick="UpdateComponente"
            OnClientClick="cambia()" AlternateText="Guardar" BorderStyle="Ridge" BorderWidth="1px"
            ImageUrl="~/Images/Guardar.png" />
        &nbsp;<asp:ImageButton ID="cmdBorrar" runat="server" OnClick="EliminarComponente"
            AlternateText="Eliminar" BorderStyle="Ridge" BorderWidth="1px" ImageUrl="~/Images/Basura.png" />
        &nbsp;<asp:ImageButton ID="cmdBaja" runat="server" OnClick="BajaComponente" AlternateText="Dar de Baja"
            BorderStyle="Ridge" BorderWidth="1px" ImageUrl="~/Images/Baja.png" />
    </div>
    <div id="inventario">
        <asp:Label ID="lblError" CssClass="error" runat="server" /><br />
        <asp:DropDownList ID="cbPlantas" runat="server" AutoPostBack="True" DataSourceID="sqlPlantas"
            DataTextField="Nserie" DataValueField="Nserie" OnSelectedIndexChanged="cbPlantas_SelectedIndexChanged">
        </asp:DropDownList>
        <div id="planta">
            <span class="subtitular">PLANTA</span>
            <%
                if (_planta != null)
                {
            %>
            <table>
                <tr>
                    <td>
                        <label class="txtLabel">
                            Número de Serie:</label><label>
                                <%=_planta.NSerie%></label>
                    </td>
                    <td>
                        <label class="txtLabel">
                            CIF:</label><label><%=_planta.CIF%></label>
                    </td>
                    <td>
                        <label class="txtLabel">
                            Teléfono:</label><label><%=_planta.Telefono%></label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <label class="txtLabel">
                            Descripción:</label>
                        <label>
                            <%=_planta.Descripcion%></label>
                    </td>
                    <td>
                        <label class="txtLabel">
                            Energía Total:</label><label><%=_planta.E_total%></label><br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label class="txtLabel">
                            Última Revisión:</label>
                        <label>
                            <%=string.Format("{0:d}", _planta.Ultima_Revision)%></label>
                    </td>
                    <td>
                        <label class="txtLabel">
                            Última Incidencia:</label>
                        <label>
                            <%=string.Format("{0:d}", _planta.Ultima_Incidencia)%></label>
                    </td>
                </tr>
            </table>
            <%}%>
        </div>
        <div id="inversores">
            <span class="subtitular">INVERSOR</span>
            <%
                if (_planta != null)
                {
                    List<Componente> _inversores = _planta.Inversores;
            %>
            <table>
                <tr>
                    <td>
                        Acción
                    </td>
                    <td>
                        Num. Serie
                    </td>
                    <td>
                        Potencia
                    </td>
                    <td>
                        Última Revisión
                    </td>
                    <td>
                        Última Incidencia
                    </td>
                    <td>
                        Planta
                    </td>
                </tr>
                <%
                    foreach (var item in _inversores)
                    {
                        Inversor _inv = item as Inversor;
                %>
                <tr class="elemento">
                    <td>
                        Editar
                    </td>
                    <td>
                        <label>
                            <%=_inv.NSerie%></label>
                    </td>
                    <td>
                        <label>
                            <%=_inv.Potencia%></label>
                    </td>
                    <td>
                        <label>
                            <%=string.Format("{0:d}", _inv.Ultima_Revision)%></label>
                    </td>
                    <td>
                        <label>
                            <%=string.Format("{0:d}", _inv.Ultima_Incidencia)%></label>
                    </td>
                    <td>
                        <label>
                            <%=_inv.ComponentePadre%></label>
                    </td>
                </tr>
                <%}%>
            </table>
            <%}
            %>
        </div>
        <div id="strings">
            <span class="subtitular">STRINGS</span>
            <%if (_planta != null)
              {
                  List<Componente> _inversores = _planta.Inversores;
                  List<Componente> _strings = new List<Componente>();
                  foreach (var item in _inversores)
                  {
                      Inversor _inv = item as Inversor;
                      _strings.AddRange(_inv.Strings);
                  }
            %>
            <table>
                <tr>
                    <td>
                        Acción
                    </td>
                    <td>
                        Num. Serie
                    </td>
                    <td>
                        Última Revisión
                    </td>
                    <td>
                        Última Incidencia
                    </td>
                    <td>
                        Inversor
                    </td>
                </tr>
                <%
                    foreach (var item in _strings)
                    {
                        LOBIncidencias.String _string = item as LOBIncidencias.String;
                %>
                <tr class="elemento">
                    <td>
                        Editar
                    </td>
                    <td>
                        <label>
                            <%=_string.NSerie%></label>
                    </td>
                    <td>
                        <label>
                            <%=string.Format("{0:d}",_string.Ultima_Revision)%></label>
                    </td>
                    <td>
                        <label>
                            <%=string.Format("{0:d}",_string.Ultima_Incidencia)%></label>
                    </td>
                    <td>
                        <label>
                            <%=_string.ComponentePadre%></label>
                    </td>
                </tr>
                <%}
                %>
            </table>
            <%} %>
        </div>
        <div id="seguidores">
            <span class="subtitular">SEGUIDORES</span>
            <%if (_planta != null)
              {
                  List<Componente> _inversores = _planta.Inversores;
                  List<Componente> _strings = new List<Componente>();
                  List<Componente> _seguidores = new List<Componente>();

                  foreach (var item in _inversores)
                  {
                      Inversor _inv = item as Inversor;
                      _strings.AddRange(_inv.Strings);
                  }
                  foreach (var item in _strings)
                  {
                      LOBIncidencias.String _string = item as LOBIncidencias.String;
                      _seguidores.AddRange(_string.Seguidores);
                  }%>
            <table>
                <tr>
                    <td>
                        Acción
                    </td>
                    <td>
                        Num. Serie
                    </td>
                    <td>
                        Descripción
                    </td>
                    <td>
                        Última Revisión
                    </td>
                    <td>
                        Última Incidencia
                    </td>
                    <td>
                        String
                    </td>
                </tr>
                <%
                    foreach (var item in _seguidores)
                    {
                        Seguidor _seguidor = item as Seguidor;
                %>
                <tr class="elemento">
                    <td>
                        Editar
                    </td>
                    <td>
                        <label>
                            <%=_seguidor.NSerie%></label>
                    </td>
                    <td>
                        <label>
                            <%=_seguidor.Descripcion.Trim()%></label>
                    </td>
                    <td>
                        <label>
                            <%=string.Format("{0:d}", _seguidor.Ultima_Revision)%></label>
                    </td>
                    <td>
                        <label>
                            <%=string.Format("{0:d}", _seguidor.Ultima_Incidencia)%></label>
                    </td>
                    <td>
                        <label>
                            <%=_seguidor.ComponentePadre%></label>
                    </td>
                </tr>
                <%}
                %>
            </table>
            <%} %>
        </div>
        <div id="paneles">
            <span class="subtitular">PANELES</span>
            <%if (_planta != null)
              {
                  List<Componente> _inversores = _planta.Inversores;
                  List<Componente> _strings = new List<Componente>();
                  List<Componente> _seguidores = new List<Componente>();
                  List<Componente> _paneles = new List<Componente>();

                  foreach (var item in _inversores)
                  {
                      Inversor _inv = item as Inversor;
                      _strings.AddRange(_inv.Strings);
                  }
                  foreach (var item in _strings)
                  {
                      LOBIncidencias.String _string = item as LOBIncidencias.String;
                      _seguidores.AddRange(_string.Seguidores);
                  }
                  foreach (var item in _seguidores)
                  {
                      Seguidor _seguidor = item as Seguidor;
                      _paneles.AddRange(_seguidor.Paneles);

                  }%>
            <table>
                <tr>
                    <td>
                        Acción
                    </td>
                    <td>
                        Num. Serie
                    </td>
                    <td>
                        Pmax
                    </td>
                    <td>
                        Ipm
                    </td>
                    <td>
                        Última Revisión
                    </td>
                    <td>
                        Última Incidencia
                    </td>
                    <td>
                        Seguidor
                    </td>
                </tr>
                <%
                    foreach (var item in _paneles)
                    {
                        LOBIncidencias.Panel _panel = item as LOBIncidencias.Panel;
                %>
                <tr class="elemento">
                    <td>
                        Editar
                    </td>
                    <td>
                        <label>
                            <%=_panel.NSerie%></label>
                    </td>
                    <td>
                        <label>
                            <%=_panel.Pmax%></label>
                    </td>
                    <td>
                        <label>
                            <%=_panel.Ipm%></label>
                    </td>
                    <td>
                        <label>
                            <%=string.Format("{0:d}", _panel.Ultima_Revision)%></label>
                    </td>
                    <td>
                        <label>
                            <%=string.Format("{0:d}", _panel.Ultima_Incidencia)%></label>
                    </td>
                    <td>
                        <label>
                            <%=_panel.ComponentePadre%></label>
                    </td>
                </tr>
                <%}
                %>
            </table>
            <%} %>
        </div>
    </div>
    <asp:SqlDataSource ID="sqlPlantas" runat="server" ConnectionString="<%$ ConnectionStrings:IGMIncidenciasConnectionString %>"
        SelectCommand="SELECT * FROM [Plantas]"></asp:SqlDataSource>
</asp:Content>
