<%@ Page Language="C#" MasterPageFile="~/IGM.Master" AutoEventWireup="true" CodeBehind="HistorialIncidencias.aspx.cs"
    Inherits="WebAdmin.HistorialIncidencias" EnableEventValidation="false" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
  <div id="titular">
    Historial de Seguimiento
    </div>
            <div id="menu">
                <table>
                    <tr>
                        <td>
                            <asp:DropDownList ID="cbPlantas" runat="server" DataSourceID="dsPlantas" DataTextField="NSerie"
                                DataValueField="NSerie" />
                        </td>
                        <td>
                            <asp:DropDownList ID="cbInversores" runat="server" DataSourceID="dsInversores" DataTextField="NSerie"
                                DataValueField="NSerie" />
                        </td>
                        <td>
                            <asp:DropDownList ID="cbStrings" runat="server" DataSourceID="dsStrings" DataTextField="NSerie"
                                DataValueField="NSerie" />
                        </td>
                        <td>
                            <asp:DropDownList ID="cbSeguidores" runat="server" DataSourceID="dsSeguidores" DataTextField=""
                                DataValueField="NSerie" />
                        </td>
                        <td>
                            <asp:DropDownList ID="cbPaneles" runat="server" DataSourceID="dsPaneles" DataTextField="NSerie"
                                DataValueField="NSerie" />
                        </td>
                        <td>
                            <asp:UpdatePanel runat="server" ID="updFiltrar">
                                <ContentTemplate>
                                    <asp:ImageButton ID="cmdFiltrar" runat="server" AlternateText="Filtrar" BorderWidth="1px"
                                        BorderStyle="Ridge" ImageUrl="~/Images/filter-20.png" onclick="Filtrar" />
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </td>
                    </tr>
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
            <div id="centro">
            <asp:ListView ID="lvIncidencias" runat="server" DataSourceID="dsIncidencias">
                <ItemTemplate>
                    <tr class="elemento">
                        <td>
                            <asp:Label ID="FechaAperturaLabel" runat="server" Text='<%# Eval("FechaApertura", "{0:d}") %>' />
                        </td>
                        <td>
                            <asp:Label ID="NSerieLabel" runat="server" Text='<%# Eval("NSerie") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DesripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ObservacionesLabel" runat="server" Text='<%# Eval("Observaciones") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FechaCierreLabel" runat="server" Text='<%# Eval("FechaCierre", "{0:d}") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <AlternatingItemTemplate>
                    <tr class="alterno">
                        <td>
                            <asp:Label ID="FechaAperturaLabel" runat="server" Text='<%# Eval("FechaApertura", "{0:d}") %>' />
                        </td>
                        <td>
                            <asp:Label ID="NSerieLabel" runat="server" Text='<%# Eval("NSerie") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DesripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ObservacionesLabel" runat="server" Text='<%# Eval("Observaciones") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FechaCierreLabel" runat="server" Text='<%# Eval("FechaCierre", "{0:d}") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EmptyDataTemplate>
                   <center>
                    <table id="Table1" runat="server" style="width:100%">
                        <tr>
                            <td align="center">
                                <img alt="Warning" src="Images/warning-32.png" style="vertical-align:middle;" />
                                <span class="aviso" style="vertical-align:middle;">No se han devuelto datos.</span>
                            </td>
                        </tr>
                    </table>
                   </center>
                </EmptyDataTemplate>
                <LayoutTemplate>
                    <table runat="server" width="100%">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="0" style="" width="100%" cellpadding="0" cellspacing="0">
                                    <tr runat="server" class="listview-head">
                                        <th runat="server">
                                            Fecha Incidencia
                                        </th>
                                        <th runat="server">
                                            Componente
                                        </th>
                                        <th runat="server">
                                            Descripción
                                        </th>
                                        <th runat="server">
                                            Observaciones
                                        </th>
                                        <th runat="server">
                                            FechaCierre
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
    <cc1:CascadingDropDown ID="cbPlantas_CascadingDropDown" runat="server" Category="planta"
        PromptText="Inversores.." LoadingText="[Cargando Inversores...]" ServicePath="WSIncidencias.asmx"
        ServiceMethod="getComponentesByParent" ParentControlID="cbPlantas" TargetControlID="cbInversores"
        SelectedValue="SomeValue" UseContextKey="True" />
    <cc1:CascadingDropDown ID="cbInversores_CascadingDropDown" runat="server" Category="inversor"
        PromptText="Strings.." LoadingText="[Cargando Strings...]" ServicePath="WSIncidencias.asmx"
        ServiceMethod="getComponentesByParent" ParentControlID="cbInversores" TargetControlID="cbStrings"
        SelectedValue="SomeValue" UseContextKey="True" />
    <cc1:CascadingDropDown ID="CascadingDropDown2" runat="server" Category="string" PromptText="Seguidores.."
        LoadingText="[Cargando Seguidores...]" ServicePath="WSIncidencias.asmx" ServiceMethod="getComponentesByParent"
        ParentControlID="cbStrings" TargetControlID="cbSeguidores" SelectedValue="SomeValue"
        UseContextKey="True" />
    <cc1:CascadingDropDown ID="CascadingDropDown3" runat="server" Category="seguidor"
        PromptText="Paneles.." LoadingText="[Cargando Paneles...]" ServicePath="WSIncidencias.asmx"
        ServiceMethod="getComponentesByParent" ParentControlID="cbSeguidores" TargetControlID="cbPaneles"
        SelectedValue="SomeValue" UseContextKey="True" />
    <cc1:CalendarExtender ID="txtCal1_CalendarExtender" runat="server" Enabled="True"
        TargetControlID="txtCal1" Format="dd/MM/yyyy" PopupButtonID="imgCal1">
    </cc1:CalendarExtender>
    <cc1:CalendarExtender ID="txtCal2_CalendarExtender" runat="server" Enabled="True"
        TargetControlID="txtCal2" Format="dd/MM/yyyy" PopupButtonID="imgCal2">
    </cc1:CalendarExtender>
    <asp:ObjectDataSource ID="dsSeguidores" runat="server" SelectMethod="getComponentes"
        TypeName="LOBIncidencias.Seguidor" />
    <asp:ObjectDataSource ID="dsInversores" runat="server" SelectMethod="getComponentes"
        TypeName="LOBIncidencias.Inversor" />
    <asp:ObjectDataSource ID="dsStrings" runat="server" SelectMethod="getComponentes"
        TypeName="LOBIncidencias.String" />
    <asp:ObjectDataSource ID="dsPlantas" runat="server" SelectMethod="getComponentes"
        TypeName="LOBIncidencias.Planta" />
    <asp:ObjectDataSource ID="dsPaneles" runat="server" SelectMethod="getComponentes"
        TypeName="LOBIncidencias.Panel" />
    <asp:ObjectDataSource ID="dsIncidencias" runat="server" SelectMethod="getIncidencias"
        TypeName="LOBIncidencias.IncidenciasManager" />
</asp:Content>
