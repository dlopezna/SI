<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/IGM.Master" UICulture="auto"
    Culture="auto" CodeBehind="Default.aspx.cs" Inherits="WebAdmin.Default" %>

<asp:Content ID="content1" runat="server" ContentPlaceHolderID="head">

    <script language="javascript" type="text/javascript">
    function CambioColor(tipo,quiensoy){
    var div = document.getElementById(quiensoy);
    if(tipo=='entra')
        div.style.background='#E4E4E4';
    else
     div.style.background='#e8f4ff';
    }
   
    </script>

</asp:Content>
<asp:Content ID="content2" runat="server" ContentPlaceHolderID="cphMain">
    <div id="titular">
        Panel de Control
    </div>
    <div id="dcha">
        <div class="subtitular">
            mis plantas
        </div>
        <asp:ListView ID="lvPlantas" runat="server" DataKeyNames="Nserie" DataSourceID="dsPlantas"
            OnInit="lvPlantas_Init">
            <ItemTemplate>
                <tr class="elementoI">
                    <td>
                        <asp:ImageButton ID="cmdVer" runat="server" CommandArgument='<%# Eval("EnlaceSUNNY") %>'
                            AlternateText="Ver Planta" ImageAlign="AbsMiddle" ImageUrl="~/Images/Find.png"
                            OnCommand="VerPlanta" />
                    </td>
                    <td>
                        <asp:Label ID="lblNSerie" runat="server" Text='<%# Eval("Nserie") %>' />
                    </td>
                    <td>
                        <asp:Label ID="lblDescripcion" runat="server" Text='<%# Eval("Descripcion") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <AlternatingItemTemplate>
                <tr class="elementoI">
                    <td>
                        <asp:ImageButton ID="cmdVer" runat="server" CommandArgument='<%# Eval("EnlaceSUNNY") %>'
                            AlternateText="Ver Planta" ImageAlign="AbsMiddle" ImageUrl="~/Images/Find.png"
                            OnCommand="VerPlanta" />
                    </td>
                    <td>
                        <asp:Label ID="lblNSerie" runat="server" Text='<%# Eval("Nserie") %>' />
                    </td>
                    <td>
                        <asp:Label ID="lblDescripcion" runat="server" Text='<%# Eval("Descripcion") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EmptyDataTemplate>
                <center>
                    <table id="Table1" runat="server" style="width: 100%">
                        <tr>
                            <td align="center">
                                <img alt="Warning" src="Images/warning-32.png" style="vertical-align: middle;" />
                                <span class="aviso" style="vertical-align: middle;">No se han devuelto datos.</span>
                            </td>
                        </tr>
                    </table>
                </center>
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table runat="server" width="100%">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" width="100%" cellpadding="0"
                                cellspacing="0">
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="">
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
        </asp:ListView>
    </div>
    <div id="izda">
        <div class="subtitular">
            mis notificaciones
        </div>
        <div id="notificaciones" style="background: #e8f4ff; padding: 15px" onmouseover="CambioColor('entra','notificaciones')"
            onmouseout="CambioColor('sal','notificaciones')">
            <div id="subNotificaciones" style="background: white">
                <table>
                    <tr>
                        <td>
                            <img alt="Alerta" src="Images/alarma.png" style="vertical-align: middle;" /><span
                                class="txtLabel">Mis Alertas:</span>
                        </td>
                        <td>
                            <asp:Label ID="lblAlertas" runat="server" Width="40px" CssClass="txtOutput" Style="vertical-align: middle;" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <img alt="Ordenes" src="Images/Tools-32.png" style="vertical-align: middle;" /><span
                                class="txtLabel">Ordenes de Trabajo:</span>
                        </td>
                        <td>
                            <asp:Label ID="lblOrdenes" runat="server" Width="40px" CssClass="txtOutput" Style="vertical-align: middle;" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <img alt="incidencias" src="Images/warning-32.png" style="vertical-align: middle;" /><span
                                class="txtLabel">Incidencias:</span>
                        </td>
                        <td>
                            <asp:Label ID="lblIncidencias" runat="server" Width="40px" CssClass="txtOutput" Style="vertical-align: middle;" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="subtitular">
            top 10 incidencias
        </div>
        <div id="topIncidencias" style="background: #e8f4ff; padding: 15px" onmouseover="CambioColor('entra','topIncidencias')"
            onmouseout="CambioColor('sal','topIncidencias')">
            <div id="Div2" style="background: white">
                <asp:ListView ID="lvIncidenciasTopTen" DataSourceID="dsIncidencias" runat="server">
                    <ItemTemplate>
                        <tr class="elemento">
                            <td>
                                <asp:Label ID="lblDescripcion" runat="server" Text='<%# Eval("Descripcion") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <AlternatingItemTemplate>
                        <td>
                            <asp:Label ID="lblDescripcion" runat="server" Text='<%# Eval("Descripcion") %>' />
                        </td>
                        </tr>
                    </AlternatingItemTemplate>
                    <EmptyDataTemplate>
                        <center>
                            <table id="Table1" runat="server" style="width: 100%">
                                <tr>
                                    <td align="center">
                                        <img alt="Warning" src="Images/warning-15.png" style="vertical-align: middle;" />
                                        <span class="aviso" style="vertical-align: middle;">No se han devuelto datos.</span>
                                    </td>
                                </tr>
                            </table>
                        </center>
                    </EmptyDataTemplate>
                    <LayoutTemplate>
                        <table id="Table2" runat="server" width="100%">
                            <tr id="Tr1" runat="server">
                                <td id="Td1" runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="0" width="100%" cellpadding="0"
                                        cellspacing="0">
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr id="Tr2" runat="server">
                                <td id="Td2" runat="server" style="">
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                </asp:ListView>
            </div>
        </div>
        <div class="subtitular">
            Mis datos
        </div>
        <div>
            <span class="explicacion" style="font-size: medium;"><a href="changepassword.aspx"
                class="explicacion" style="font-size: medium;">Cambiar Clave</a></span>
        </div>
    </div>
    <asp:ObjectDataSource ID="dsIncidencias" runat="server" SelectMethod="getTopTenIncidencias"
        TypeName="LOBIncidencias.IncidenciasManager" />
    <asp:ObjectDataSource ID="dsPlantas" runat="server" SelectMethod="getMisPlantas"
        TypeName="LOBIncidencias.Planta" />
</asp:Content>
