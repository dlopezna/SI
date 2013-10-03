<%@ Page Language="C#" MasterPageFile="~/IGM.Master" AutoEventWireup="true" CodeBehind="Inventario.aspx.cs"
    Inherits="WebAdmin.Inventario" %>

<%@ Import Namespace="LOBIncidencias" %>
<%@ Import Namespace="System.Collections.Generic" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script>
        $(document).ready(function() {

            $('#addSeguidor').dialog({
                autoOpen: false,
                resizable: false,
                height: 250,
                width: 400,
                modal: true,
                title: 'Añadir un nuevo seguidor',
                buttons: {
                    'Cancelar': function() {
                        $(this).dialog('close');
                    },
                    'Aceptar': function() {
                        var _nSerie = $('#newSeguidorNSerie').val();
                        var _desc = $('#newSeguidorDesc').val();
                        var _padre = $('#newSeguidorPadre').val();

                        var actionData = "{'Nserie': '" + _nSerie + "', 'Descripcion': '" + _desc + "','idPadre': '" + _padre + "'}";

                        $.ajax({
                            url: "/administracion/inventario.aspx/addSeguidor",
                            data: actionData,
                            dataType: "json",
                            type: "POST",
                            contentType: "application/json; charset=utf-8",
                            success: function(msg) { },
                            error: function(result) { alert("ERROR " + result.status + ' ' + result.statusText); }
                        });

                        $(this).dialog('close');
                        window.location.reload();
                    }

                }
            });

            $('#addPanel').dialog({
                autoOpen: false,
                resizable: false,
                height: 250,
                width: 400,
                modal: true,
                title: 'Añadir un nuevo panel',
                buttons: {
                    'Cancelar': function() {
                        $(this).dialog('close');
                    },
                    'Aceptar': function() {
                        var _nSerie = $('#newPanelNserie').val();
                        var _desc = $('#newPanelDesc').val();
                        var _padre = $('#newPanelPadre').val();
                        var _ipm = $('#newPanelIpm').val();
                        var _pmax = $('#newPanelPmax').val();

                        var actionData = "{'Nserie': '" + _nSerie + "', 'Descripcion': '" + _desc + "','idPadre': '" + _padre + "','Ipm': '" + _ipm + "','Pmax': '" + _pmax + "'}";

                        $.ajax({
                            url: "/administracion/inventario.aspx/addPanel",
                            data: actionData,
                            dataType: "json",
                            type: "POST",
                            contentType: "application/json; charset=utf-8",
                            success: function(msg) { },
                            error: function(result) { alert("ERROR " + result.status + ' ' + result.statusText); }
                        });

                        $(this).dialog('close');
                        window.location.reload();
                    }

                }
            });

            $('#addString').dialog({
                autoOpen: false,
                resizable: false,
                height: 250,
                width: 400,
                modal: true,
                title: 'Añadir un nuevo string',
                buttons: {
                    'Cancelar': function() {
                        $(this).dialog('close');
                    },
                    'Aceptar': function() {
                        var _nSerie = $('#newStringNserie').val();
                        var _desc = $('#newStringDesc').val();
                        var _padre = $('#newStringPadre').val();
                        var _c1 = $('#canal1').attr('checked');
                        var _c2 = $('#canal2').attr('checked');
                        var _c3 = $('#canal3').attr('checked');
                        var _c4 = $('#canal4').attr('checked');
                        var _c5 = $('#canal5').attr('checked');
                        var _c6 = $('#canal6').attr('checked');
                        var _c7 = $('#canal7').attr('checked');
                        var _c8 = $('#canal8').attr('checked');
                        var _c9 = $('#canal9').attr('checked');
                        var _c10 = $('#canal10').attr('checked');
                        var _c11 = $('#canal11').attr('checked');
                        var _c12 = $('#canal12').attr('checked');
                        var _c13 = $('#canal13').attr('checked');
                        var _c14 = $('#canal14').attr('checked');
                        var _c15 = $('#canal15').attr('checked');
                        var _c16 = $('#canal16').attr('checked');


                        var actionData = "{'Nserie': '" + _nSerie + "', 'Descripcion': '" + _desc + "','idPadre': '" + _padre + "' ,'c1': '" + _c1 + "' ,'c2': '" + _c2 + "','c3': '" + _c3 + "','c4': '" + _c4 + "','c5': '" + _c5 + "','c6': '" + _c6 + "','c7': '" + _c7 + "','c8': '" + _c8 + "','c9': '" + _c9 + "','c10': '" + _c10 + "','c11': '" + _c11 + "','c12': '" + _c12 + "','c13': '" + _c13 + "','c14': '" + _c14 + "','c15': '" + _c15 + "','c16': '" + _c16 + "'}";

                        
                        $.ajax({
                            url: "/administracion/inventario.aspx/addStrings",
                            data: actionData,
                            dataType: "json",
                            type: "POST",
                            contentType: "application/json; charset=utf-8",
                            success: function(msg) { },
                            error: function(result) { alert("ERROR " + result.status + ' ' + result.statusText); }
                        });

                        $(this).dialog('close');
                        window.location.reload();
                    }

                }
            });

            $('#nuevoSeguidor').click(function() {
                $('#addSeguidor').dialog('open');
            });

            $('#nuevoPanel').click(function() {
                $('#addPanel').dialog('open');
            });

            $('#nuevoString').click(function() {
                $('#addString').dialog('open');
            });

        });

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <div id="titular">
        Inventario
    </div>
    <!--<div id="menu">
        <asp:ImageButton ID="cmdNuevo" runat="server" OnClientClick="reset" AlternateText="Nuevo"
            BorderStyle="Ridge" BorderWidth="1px" ImageUrl="~/Images/Nuevo.png" OnClick="cmdNuevo_Click" />
        &nbsp;<asp:ImageButton ID="cmdGuardar" runat="server" OnClick="UpdateComponente"
            OnClientClick="cambia()" AlternateText="Guardar" BorderStyle="Ridge" BorderWidth="1px"
            ImageUrl="~/Images/Guardar.png" />
        &nbsp;<asp:ImageButton ID="cmdBorrar" runat="server" OnClick="EliminarComponente"
            AlternateText="Eliminar" BorderStyle="Ridge" BorderWidth="1px" ImageUrl="~/Images/Basura.png" />
        &nbsp;<asp:ImageButton ID="cmdBaja" runat="server" OnClick="BajaComponente" AlternateText="Dar de Baja"
            BorderStyle="Ridge" BorderWidth="1px" ImageUrl="~/Images/Baja.png" />
    </div>-->
    <div id="inventario">
        <asp:Label ID="lblError" CssClass="error" runat="server" /><br />
        <label class="txtLabel">
                            Selecciona la planta: </label>
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
            <span id="nuevoString" class="cmdAdd">+ Nuevo String</span>
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
            <span id="nuevoSeguidor" class="cmdAdd">+ Nuevo Seguidor</span>
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
            <span id="nuevoPanel" class="cmdAdd">+ Nuevo Panel</span>
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
    <div id="addSeguidor">
        <div class="frmAlta">
            <label class="txtLabel">
                Número de Serie:</label><input id="newSeguidorNSerie" type="text" value="" /><br />
            <label class="txtLabel">
                Descripción:</label><input id="newSeguidorDesc" type="text" value="" /><br />
            <label class="txtLabel">
                String Asociado:</label><input id="newSeguidorPadre" type="text" value="" /><br />
        </div>
    </div>
    
    <div id="addPanel">
        <div class="frmAlta">
            <label class="txtLabel">
                Número de Serie:</label><input id="newPanelNserie" type="text" value="" /><br />
            <label class="txtLabel">
                Descripción:</label><input id="newPanelDesc" type="text" value="" /><br />
            <label class="txtLabel">
                Seguidor Asociado:</label><input id="newPanelPadre" type="text" value="" /><br />
                <label class="txtLabel">
                Pmax:</label><input id="newPanelPmax" type="text" value="" /><br />
                <label class="txtLabel">
                Ipm:</label><input id="newPanelIpm" type="text" value="" /><br />
        </div>
    </div>
    
    <div id="addString">
        <div class="frmAlta">
            <label class="txtLabel">
                Número de Serie:</label><input id="newStringNserie" type="text" value="" /><br />
            <label class="txtLabel">
                Descripción:</label><input id="newStringDesc" type="text" value="" /><br />
            <label class="txtLabel">
                Inversor Asociado:</label><input id="newStringPadre" type="text" value="" /><br />
            <input name="canal1" id="canal1" type="checkbox" /><label for="canal1">Canal 1</label>   
            <input name="canal2" id="canal2" type="checkbox" /><label for="canal2">Canal 2</label>
            <input name="canal3" id="canal3" type="checkbox" /><label for="canal3">Canal 3</label>
            <input name="canal4" id="canal4" type="checkbox" /><label for="canal4">Canal 4</label>
            <input name="canal5" id="canal5" type="checkbox" /><label for="canal5">Canal 5</label>
            <input name="canal6" id="canal6" type="checkbox" /><label for="canal6">Canal 6</label>
            <input name="canal7" id="canal7" type="checkbox" /><label for="canal7">Canal 7</label>
            <input name="canal8" id="canal8" type="checkbox" /><label for="canal8">Canal 8</label>
            <input name="canal9" id="canal9" type="checkbox" /><label for="canal9">Canal 9</label>
            <input name="canal10" id="canal10" type="checkbox" /><label for="canal10">Canal 10</label>
            <input name="canal11" id="canal11" type="checkbox" /><label for="canal11">Canal 11</label>   
            <input name="canal12" id="canal12" type="checkbox" /><label for="canal12">Canal 12</label>
            <input name="canal13" id="canal13" type="checkbox" /><label for="canal13">Canal 13</label>
            <input name="canal14" id="canal14" type="checkbox" /><label for="canal14">Canal 14</label>
            <input name="canal15" id="canal15" type="checkbox" /><label for="canal15">Canal 15</label>
            <input name="canal16" id="canal16" type="checkbox" /><label for="canal16">Canal 16</label>
        </div>
    </div>
    
</asp:Content>
