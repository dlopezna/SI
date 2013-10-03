<%@ Page Language="C#" MasterPageFile="~/IGM.Master" AutoEventWireup="true" CodeBehind="Plantas.aspx.cs"
    Inherits="WebAdmin.Administracion.Plantas" Title="Página sin título" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <center>
        <span class="titulos">Administración Plantas</span></center>
    <div id="marco">
        <div id="superior">
            <div class="altaInventario">
                <span class="texto">Nueva Planta:<br />
                </span>
                <asp:Label ID="Label1" runat="server" Text="Nº Serie:" CssClass="texto2"></asp:Label>
                <asp:TextBox ID="NseriePlanta" CssClass="texto3" runat="server"></asp:TextBox><br />
                <asp:Label ID="Label2" runat="server" Text="Descripción:" CssClass="texto2"></asp:Label>
                <asp:TextBox ID="txtPlanta" CssClass="texto3" runat="server"></asp:TextBox><br />
                <asp:Label ID="Label3" runat="server" Text="Energía Inicial:" CssClass="texto2"></asp:Label>
                <asp:TextBox ID="txtEnergia" CssClass="texto3" runat="server"></asp:TextBox><br />
                <asp:Button ID="cmdAltaPlanta" runat="server" Text="Guardar" OnClick="AltaComponente" />
            </div>
            <asp:ListView ID="lvPlantas" runat="server" DataSourceID="dsPlantas">
                <ItemTemplate>
                    <tr style="">
                        <td>
                            <asp:LinkButton ID="lnkNserie" runat="server" Text='<%# Eval("Nserie") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                        </td>
                        <td>
                            <asp:Label ID="UltimaRevisionLabel" runat="server" Text='<%# Eval("UltimaRevision", "{0:d}") %>' />
                        </td>
                        <td>
                            <asp:Label ID="UltimaIncidenciaLabel" runat="server" Text='<%# Eval("UltimaIncidencia", "{0:d}") %>' />
                        </td>
                        <td>
                            <asp:Label ID="lblEtotal" runat="server" Text='<%# Eval("E_Total") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <AlternatingItemTemplate>
                    <tr style="">
                        <td>
                            <asp:LinkButton ID="lnkNserie" runat="server" Text='<%# Eval("Nserie") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                        </td>
                        <td>
                            <asp:Label ID="UltimaRevisionLabel" runat="server" Text='<%# Eval("UltimaRevision", "{0:d}") %>' />
                        </td>
                        <td>
                            <asp:Label ID="UltimaIncidenciaLabel" runat="server" Text='<%# Eval("UltimaIncidencia", "{0:d}") %>' />
                        </td>
                        <td>
                            <asp:Label ID="lblEtotal" runat="server" Text='<%# Eval("E_Total") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>
                                No se han devuelto datos.
                            </td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Borrar" />
                        </td>
                        <td>
                            <asp:TextBox ID="FechaAltaTextBox" runat="server" Text='<%# Bind("FechaAlta") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DescripcionTextBox" runat="server" Text='<%# Bind("Descripcion") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="UltimaIncidenciaTextBox" runat="server" Text='<%# Bind("UltimaIncidencia") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="FechaBajaTextBox" runat="server" Text='<%# Bind("FechaBaja") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="UltimaRevisionTextBox" runat="server" Text='<%# Bind("UltimaRevision") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="NSerieTextBox" runat="server" Text='<%# Bind("NSerie") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                    <tr runat="server" style="">
                                        <th runat="server">
                                            Número Serie
                                        </th>
                                        <th runat="server">
                                            Descripción
                                        </th>
                                        <th runat="server">
                                            Última Revisión
                                        </th>
                                        <th runat="server">
                                            Última Incidencia
                                        </th>
                                        <th runat="server">
                                            Energía Producida
                                        </th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="">
                                <asp:DataPager ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                    </Fields>
                                    <Fields>
                                        <asp:TemplatePagerField Visible="true" OnPagerCommand="NuevaPlanta">
                                            <PagerTemplate>
                                                <asp:Button ID="cmdNew" runat="server" Text="Crear Planta" />
                                            </PagerTemplate>
                                        </asp:TemplatePagerField>
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <EditItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                        </td>
                        <td>
                            <asp:TextBox ID="FechaAltaTextBox" runat="server" Text='<%# Bind("FechaAlta") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DescripcionTextBox" runat="server" Text='<%# Bind("Descripcion") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="UltimaIncidenciaTextBox" runat="server" Text='<%# Bind("UltimaIncidencia") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="FechaBajaTextBox" runat="server" Text='<%# Bind("FechaBaja") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="UltimaRevisionTextBox" runat="server" Text='<%# Bind("UltimaRevision") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="NSerieTextBox" runat="server" Text='<%# Bind("NSerie") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <SelectedItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label ID="FechaAltaLabel" runat="server" Text='<%# Eval("FechaAlta") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                        </td>
                        <td>
                            <asp:Label ID="UltimaIncidenciaLabel" runat="server" Text='<%# Eval("UltimaIncidencia") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FechaBajaLabel" runat="server" Text='<%# Eval("FechaBaja") %>' />
                        </td>
                        <td>
                            <asp:Label ID="UltimaRevisionLabel" runat="server" Text='<%# Eval("UltimaRevision") %>' />
                        </td>
                        <td>
                            <asp:Label ID="NSerieLabel" runat="server" Text='<%# Eval("NSerie") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="dsPlantas" runat="server" DeleteMethod="EliminarComponente"
                SelectMethod="getComponentes" TypeName="LOBIncidencias.Planta">
                <DeleteParameters>
                    <asp:Parameter Name="numeroSerie" Type="String" />
                </DeleteParameters>
            </asp:ObjectDataSource>
        </div>
        <center>
            <span class="subtitulos">Seguimiento de Planta</span></center>
        <div id="inferior">
        </div>
    </div>
</asp:Content>
