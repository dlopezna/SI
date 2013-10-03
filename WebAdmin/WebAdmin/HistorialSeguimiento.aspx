<%@ Page Language="C#" MasterPageFile="~/IGM.Master" AutoEventWireup="true" CodeBehind="HistorialSeguimiento.aspx.cs"
    Inherits="WebAdmin.HistorialSeguimiento" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <div id="titular">
        Historial de Seguimiento
    </div>
    <div id="menu">
        <center>
            <table>
                <tr>
                    <td>
                        <span class="txtLabel" style="vertical-align: middle;">Planta:</span>
                    </td>
                    <td>
                        <span>
                            <asp:DropDownList ID="cbPlantas" runat="server" DataSourceID="dsPlantas" DataTextField="NSerie"
                                DataValueField="NSerie" Style="vertical-align: middle;" />
                        </span>
                    </td>
                    <td>
                        <span class="txtLabel" style="vertical-align: middle;">Desde..</span>
                    </td>
                    <td>
                        <span>
                            <asp:TextBox ID="txtFinicio" runat="server" CssClass="txtInput" Style="vertical-align: middle;
                                z-index: 100;" /></span>
                    </td>
                    <td>
                        <asp:Image runat="server" ID="imgcal1" AlternateText="Calendario" ImageUrl="~/Images/calendar1.png"
                            BorderWidth="1px" BorderStyle="Ridge" Style="vertical-align: middle;" />
                    </td>
                    <td valign="middle">
                        <span class="txtLabel" style="vertical-align: middle;">Hasta..</span>
                    </td>
                    <td>
                        <asp:TextBox ID="txtFfinal" runat="server" CssClass="txtInput" Style="vertical-align: middle;" />
                        <asp:Image runat="server" ID="imgcal2" AlternateText="Calendario" ImageUrl="~/Images/calendar1.png"
                            BorderWidth="1px" BorderStyle="Ridge" Style="vertical-align: middle;" />
                    </td>
                    <td>
                        <asp:ImageButton runat="server" ID="cmdFiltrar" AlternateText="Filtrar" ImageUrl="~/Images/filter-20.png"
                            BorderWidth="1px" BorderStyle="Ridge" OnClick="Filtrar" Style="vertical-align: middle;" />
                    </td>
                </tr>
            </table>
        </center>
    </div>
    <div id="centro">
        <asp:ListView runat="server" ID="lvSeguimiento" DataSourceID="dsSeguimiento">
            <ItemTemplate>
                <tr class="elemento">
                    <td>
                        <asp:Label ID="NSerieLabel" runat="server" Text='<%# Eval("NSerie") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PacLabel" runat="server" Text='<%# Eval("Pac") %>' />
                    </td>
                    <td>
                        <asp:Label ID="E_HoyLabel" runat="server" Text='<%# Eval("E_Hoy") %>' />
                    </td>
                    <td>
                        <asp:Label ID="FechaSeguimientoLabel" runat="server" Text='<%# Eval("FechaSeguimiento","{0:d}") %>' />
                    </td>
                    <td>
                        <asp:Label ID="IncidenciaLabel" runat="server" Text='<%# Eval("Incidencia") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <AlternatingItemTemplate>
                <tr class="alterno">
                    <td>
                        <asp:Label ID="NSerieLabel" runat="server" Text='<%# Eval("NSerie") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PacLabel" runat="server" Text='<%# Eval("Pac") %>' />
                    </td>
                    <td>
                        <asp:Label ID="E_HoyLabel" runat="server" Text='<%# Eval("E_Hoy") %>' />
                    </td>
                    <td>
                        <asp:Label ID="FechaSeguimientoLabel" runat="server" Text='<%# Eval("FechaSeguimiento","{0:d}") %>' />
                    </td>
                    <td>
                        <asp:Label ID="IncidenciaLabel" runat="server" Text='<%# Eval("Incidencia") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EmptyDataTemplate>
                <center>
                    <table runat="server" style="width: 100%">
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
                                <tr runat="server" class="listview-head">
                                    <th runat="server">
                                        Número Serie
                                    </th>
                                    <th runat="server">
                                        Potencia
                                    </th>
                                    <th runat="server">
                                        E-Hoy
                                    </th>
                                    <th runat="server">
                                        Fecha Seguimiento
                                    </th>
                                    <th runat="server">
                                        Incidencia
                                    </th>
                                </tr>
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
    <asp:ObjectDataSource ID="dsPlantas" runat="server" SelectMethod="getComponentes"
        TypeName="LOBIncidencias.Planta"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="dsSeguimiento" runat="server" SelectMethod="getSeguimientoPlanta"
        TypeName="LOBIncidencias.SeguimientosManager">
        <SelectParameters>
            <asp:ControlParameter ControlID="cbPlantas" Name="nserie" PropertyName="SelectedValue"
                Type="String" />
            <asp:ControlParameter ControlID="txtFinicio" Name="finicio" PropertyName="Text" Type="DateTime" />
            <asp:ControlParameter ControlID="txtFfinal" Name="ffinal" PropertyName="Text" Type="DateTime" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
