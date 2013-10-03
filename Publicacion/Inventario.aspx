<%@ Page Language="C#" MasterPageFile="~/IGM.Master" AutoEventWireup="true" CodeBehind="Inventario.aspx.cs"
    Inherits="WebAdmin.Inventario" Title="Página sin título" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <center>
        <span class="titulos">Administración de Inventarios</span></center>
    <div id="marco">
        <div id="inventario">
            <cc1:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0">
                <cc1:TabPanel ID="tabInversores" runat="server" HeaderText="Inversores">
                    <ContentTemplate>
                        <div class="altaInventario">
                            <span class="texto">Nuevo Inversor:<br />
                            </span>
                            
                            <asp:Label ID="Label1" runat="server" Text="Nº Serie:" CssClass="texto2"></asp:Label>
                            <asp:TextBox ID="NserieInversor" CssClass="texto3" runat="server"></asp:TextBox><br />
                            <asp:Label ID="Label2" runat="server" Text="Descripción:" CssClass="texto2"></asp:Label><br />
                            <asp:TextBox ID="DescInversor" CssClass="texto3" runat="server" TextMode="MultiLine" Columns="50" Rows="3"></asp:TextBox><br />
                            <asp:Button ID="cmdAltaInversor" runat="server" Text="Guardar" OnClick="AltaComponente" />
                        </div>
                        <div>
                          <asp:ListView ID="lvInversores" runat="server" DataKeyNames="Nserie" DataSourceID="dataInversores">
                <ItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Eliminar" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                        </td>
                        <td>
                            <asp:Label ID="NserieLabel" runat="server" Text='<%# Eval("Nserie") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FechaAltaLabel" runat="server" Text='<%# Eval("FechaAlta") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FechaBajaLabel" runat="server" Text='<%# Eval("FechaBaja") %>' />
                        </td>
                        <td>
                            <asp:Label ID="UltimaRevisionLabel" runat="server" Text='<%# Eval("UltimaRevision") %>' />
                        </td>
                        <td>
                            <asp:Label ID="UltimaIncidenciaLabel" runat="server" Text='<%# Eval("UltimaIncidencia") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <AlternatingItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Eliminar" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                        </td>
                        <td>
                            <asp:Label ID="NserieLabel" runat="server" Text='<%# Eval("Nserie") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FechaAltaLabel" runat="server" Text='<%# Eval("FechaAlta") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FechaBajaLabel" runat="server" Text='<%# Eval("FechaBaja") %>' />
                        </td>
                        <td>
                            <asp:Label ID="UltimaRevisionLabel" runat="server" Text='<%# Eval("UltimaRevision") %>' />
                        </td>
                        <td>
                            <asp:Label ID="UltimaIncidenciaLabel" runat="server" Text='<%# Eval("UltimaIncidencia") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EmptyDataTemplate>
                    <table id="Table1" runat="server" style="">
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
                            <asp:TextBox ID="NserieTextBox" runat="server" Text='<%# Bind("Nserie") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DescripcionTextBox" runat="server" Text='<%# Bind("Descripcion") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="FechaAltaTextBox" runat="server" Text='<%# Bind("FechaAlta") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="FechaBajaTextBox" runat="server" Text='<%# Bind("FechaBaja") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="UltimaRevisionTextBox" runat="server" Text='<%# Bind("UltimaRevision") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="UltimaIncidenciaTextBox" runat="server" Text='<%# Bind("UltimaIncidencia") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <LayoutTemplate>
                    <table id="Table2" runat="server">
                        <tr id="Tr1" runat="server">
                            <td id="Td1" runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                    <tr id="Tr2" runat="server" style="">
                                        <th id="Th1" runat="server">
                                        </th>
                                        <th id="Th2" runat="server">
                                            Nserie
                                        </th>
                                        <th id="Th3" runat="server">
                                            Descripción
                                        </th>
                                        <th id="Th4" runat="server">
                                            FechaAlta
                                        </th>
                                        <th id="Th5" runat="server">
                                            FechaBaja
                                        </th>
                                        <th id="Th6" runat="server">
                                            UltimaRevision
                                        </th>
                                        <th id="Th7" runat="server">
                                            UltimaIncidencia
                                        </th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr id="Tr3" runat="server">
                            <td id="Td2" runat="server" style="">
                                <asp:DataPager ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
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
                            <asp:Label ID="NserieLabel1" runat="server" Text='<%# Eval("Nserie") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DescripcionTextBox" runat="server" Text='<%# Bind("Descripcion") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="FechaAltaTextBox" runat="server" Text='<%# Bind("FechaAlta") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="FechaBajaTextBox" runat="server" Text='<%# Bind("FechaBaja") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="UltimaRevisionTextBox" runat="server" Text='<%# Bind("UltimaRevision") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="UltimaIncidenciaTextBox" runat="server" Text='<%# Bind("UltimaIncidencia") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <SelectedItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Eliminar" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                        </td>
                        <td>
                            <asp:Label ID="NserieLabel" runat="server" Text='<%# Eval("Nserie") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FechaAltaLabel" runat="server" Text='<%# Eval("FechaAlta") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FechaBajaLabel" runat="server" Text='<%# Eval("FechaBaja") %>' />
                        </td>
                        <td>
                            <asp:Label ID="UltimaRevisionLabel" runat="server" Text='<%# Eval("UltimaRevision") %>' />
                        </td>
                        <td>
                            <asp:Label ID="UltimaIncidenciaLabel" runat="server" Text='<%# Eval("UltimaIncidencia") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
                        </div>
                    </ContentTemplate>
                </cc1:TabPanel>
                <cc1:TabPanel ID="tabStrings" runat="server" HeaderText="Strings">
                    <ContentTemplate>
                        <div class="altaInventario">
                            <span class="texto">Nuevo String:<br />
                            </span>
                            <asp:Label ID="Label3" runat="server" Text="Nº Serie:" CssClass="texto2"></asp:Label>
                            <asp:TextBox ID="NserieString" CssClass="texto3" runat="server"></asp:TextBox><br />
                            <asp:Label ID="Label4" runat="server" Text="Descripción:" CssClass="texto2"></asp:Label><br />
                            <asp:TextBox ID="DescString" CssClass="texto3" runat="server" TextMode="MultiLine" Columns="50" Rows="3"></asp:TextBox>
                            <asp:Label ID="Label9" runat="server" Text="Inversor Asociado:" CssClass="texto2"></asp:Label>
                            <asp:DropDownList ID="cbInversores" runat="server" DataSourceID="dataInversores"
                                DataTextField="NSerie" DataValueField="NSerie" />
                            <asp:Button ID="cmdAltaString" runat="server" Text="Guardar" OnClick="AltaComponente"/>
                        </div>
                        <div>
                         <asp:ListView ID="lvStrings" runat="server" DataKeyNames="Nserie" DataSourceID="dataStrings">
                <ItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Eliminar" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                        </td>
                        <td>
                            <asp:Label ID="NserieLabel" runat="server" Text='<%# Eval("Nserie") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FechaAltaLabel" runat="server" Text='<%# Eval("FechaAlta") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FechaBajaLabel" runat="server" Text='<%# Eval("FechaBaja") %>' />
                        </td>
                        <td>
                            <asp:Label ID="UltimaIncidenciaLabel" runat="server" Text='<%# Eval("UltimaIncidencia") %>' />
                        </td>
                        <td>
                            <asp:Label ID="UltimaRevisionLabel" runat="server" Text='<%# Eval("UltimaRevision") %>' />
                        </td>
                        <td>
                            <asp:Label ID="InversorLabel" runat="server" Text='<%# Eval("Inversor") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <AlternatingItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Eliminar" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                        </td>
                        <td>
                            <asp:Label ID="NserieLabel" runat="server" Text='<%# Eval("Nserie") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FechaAltaLabel" runat="server" Text='<%# Eval("FechaAlta") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FechaBajaLabel" runat="server" Text='<%# Eval("FechaBaja") %>' />
                        </td>
                        <td>
                            <asp:Label ID="UltimaIncidenciaLabel" runat="server" Text='<%# Eval("UltimaIncidencia") %>' />
                        </td>
                        <td>
                            <asp:Label ID="UltimaRevisionLabel" runat="server" Text='<%# Eval("UltimaRevision") %>' />
                        </td>
                        <td>
                            <asp:Label ID="InversorLabel" runat="server" Text='<%# Eval("Inversor") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EmptyDataTemplate>
                    <table id="Table3" runat="server" style="">
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
                            <asp:TextBox ID="NserieTextBox" runat="server" Text='<%# Bind("Nserie") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DescripcionTextBox" runat="server" Text='<%# Bind("Descripcion") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="FechaAltaTextBox" runat="server" Text='<%# Bind("FechaAlta") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="FechaBajaTextBox" runat="server" Text='<%# Bind("FechaBaja") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="UltimaIncidenciaTextBox" runat="server" Text='<%# Bind("UltimaIncidencia") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="UltimaRevisionTextBox" runat="server" Text='<%# Bind("UltimaRevision") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="InversorTextBox" runat="server" Text='<%# Bind("Inversor") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <LayoutTemplate>
                    <table id="Table4" runat="server">
                        <tr id="Tr4" runat="server">
                            <td id="Td3" runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                    <tr id="Tr5" runat="server" style="">
                                        <th id="Th8" runat="server">
                                        </th>
                                        <th id="Th9" runat="server">
                                            Nserie
                                        </th>
                                        <th id="Th10" runat="server">
                                            Descripcion
                                        </th>
                                        <th id="Th11" runat="server">
                                            FechaAlta
                                        </th>
                                        <th id="Th12" runat="server">
                                            FechaBaja
                                        </th>
                                        <th id="Th13" runat="server">
                                            UltimaIncidencia
                                        </th>
                                        <th id="Th14" runat="server">
                                            UltimaRevision
                                        </th>
                                        <th id="Th15" runat="server">
                                            Inversor
                                        </th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr id="Tr6" runat="server">
                            <td id="Td4" runat="server" style="">
                                <asp:DataPager ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
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
                            <asp:Label ID="NserieLabel1" runat="server" Text='<%# Eval("Nserie") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DescripcionTextBox" runat="server" Text='<%# Bind("Descripcion") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="FechaAltaTextBox" runat="server" Text='<%# Bind("FechaAlta") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="FechaBajaTextBox" runat="server" Text='<%# Bind("FechaBaja") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="UltimaIncidenciaTextBox" runat="server" Text='<%# Bind("UltimaIncidencia") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="UltimaRevisionTextBox" runat="server" Text='<%# Bind("UltimaRevision") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="InversorTextBox" runat="server" Text='<%# Bind("Inversor") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <SelectedItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Eliminar" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                        </td>
                        <td>
                            <asp:Label ID="NserieLabel" runat="server" Text='<%# Eval("Nserie") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FechaAltaLabel" runat="server" Text='<%# Eval("FechaAlta") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FechaBajaLabel" runat="server" Text='<%# Eval("FechaBaja") %>' />
                        </td>
                        <td>
                            <asp:Label ID="UltimaIncidenciaLabel" runat="server" Text='<%# Eval("UltimaIncidencia") %>' />
                        </td>
                        <td>
                            <asp:Label ID="UltimaRevisionLabel" runat="server" Text='<%# Eval("UltimaRevision") %>' />
                        </td>
                        <td>
                            <asp:Label ID="InversorLabel" runat="server" Text='<%# Eval("Inversor") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
                        </div>
                    </ContentTemplate>
                   
                </cc1:TabPanel>
                <cc1:TabPanel ID="tabSeguidores" runat="server" HeaderText="Seguidores">
                <ContentTemplate>
                 <div class="altaInventario">
                            <span class="texto">Nuevo Seguidor:<br />
                            </span>
                            <asp:Label ID="Label5" runat="server" Text="Nº Serie:" CssClass="texto2"></asp:Label>
                            <asp:TextBox ID="NserieSeguidor"  CssClass="texto3" runat="server"></asp:TextBox><br />
                            <asp:Label ID="Label6" runat="server" Text="Descripción:" CssClass="texto2"></asp:Label><br />
                            <asp:TextBox ID="DescSeguidor" CssClass="texto3" runat="server" TextMode="MultiLine" Columns="50" Rows="3"></asp:TextBox>
                            <asp:Label ID="Label10" runat="server" Text="String Asociado:" CssClass="texto2"></asp:Label>
                            <asp:DropDownList ID="cbStrings" runat="server" DataSourceID="dataStrings" DataTextField="NSerie"
                                DataValueField="NSerie" />
                            <asp:Button ID="cmdAltaSeguidor" runat="server" Text="Guardar" OnClick="AltaComponente"/>
                        </div>
                        <div>
                         <asp:ListView ID="lvSeguidores" runat="server" DataKeyNames="nSerie" DataSourceID="dataSeguidores">
                <ItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Eliminar" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                        </td>
                        <td>
                            <asp:Label ID="nSerieLabel" runat="server" Text='<%# Eval("nSerie") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FechaAltaLabel" runat="server" Text='<%# Eval("FechaAlta") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FechaBajaLabel" runat="server" Text='<%# Eval("FechaBaja") %>' />
                        </td>
                        <td>
                            <asp:Label ID="UltimaIncidenciaLabel" runat="server" Text='<%# Eval("UltimaIncidencia") %>' />
                        </td>
                        <td>
                            <asp:Label ID="UltimaRevisionLabel" runat="server" Text='<%# Eval("UltimaRevision") %>' />
                        </td>
                        <td>
                            <asp:Label ID="StringLabel" runat="server" Text='<%# Eval("String") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <AlternatingItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Eliminar" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                        </td>
                        <td>
                            <asp:Label ID="nSerieLabel" runat="server" Text='<%# Eval("nSerie") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FechaAltaLabel" runat="server" Text='<%# Eval("FechaAlta") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FechaBajaLabel" runat="server" Text='<%# Eval("FechaBaja") %>' />
                        </td>
                        <td>
                            <asp:Label ID="UltimaIncidenciaLabel" runat="server" Text='<%# Eval("UltimaIncidencia") %>' />
                        </td>
                        <td>
                            <asp:Label ID="UltimaRevisionLabel" runat="server" Text='<%# Eval("UltimaRevision") %>' />
                        </td>
                        <td>
                            <asp:Label ID="StringLabel" runat="server" Text='<%# Eval("String") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EmptyDataTemplate>
                    <table id="Table5" runat="server" style="">
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
                            <asp:TextBox ID="nSerieTextBox" runat="server" Text='<%# Bind("nSerie") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DescripcionTextBox" runat="server" Text='<%# Bind("Descripcion") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="FechaAltaTextBox" runat="server" Text='<%# Bind("FechaAlta") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="FechaBajaTextBox" runat="server" Text='<%# Bind("FechaBaja") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="UltimaIncidenciaTextBox" runat="server" Text='<%# Bind("UltimaIncidencia") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="UltimaRevisionTextBox" runat="server" Text='<%# Bind("UltimaRevision") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="StringTextBox" runat="server" Text='<%# Bind("String") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <LayoutTemplate>
                    <table id="Table6" runat="server">
                        <tr id="Tr7" runat="server">
                            <td id="Td5" runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                    <tr id="Tr8" runat="server" style="">
                                        <th id="Th16" runat="server">
                                        </th>
                                        <th id="Th17" runat="server">
                                            nSerie
                                        </th>
                                        <th id="Th18" runat="server">
                                            Descripcion
                                        </th>
                                        <th id="Th19" runat="server">
                                            FechaAlta
                                        </th>
                                        <th id="Th20" runat="server">
                                            FechaBaja
                                        </th>
                                        <th id="Th21" runat="server">
                                            UltimaIncidencia
                                        </th>
                                        <th id="Th22" runat="server">
                                            UltimaRevision
                                        </th>
                                        <th id="Th23" runat="server">
                                            String
                                        </th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr id="Tr9" runat="server">
                            <td id="Td6" runat="server" style="">
                                <asp:DataPager ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
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
                            <asp:Label ID="nSerieLabel1" runat="server" Text='<%# Eval("nSerie") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DescripcionTextBox" runat="server" Text='<%# Bind("Descripcion") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="FechaAltaTextBox" runat="server" Text='<%# Bind("FechaAlta") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="FechaBajaTextBox" runat="server" Text='<%# Bind("FechaBaja") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="UltimaIncidenciaTextBox" runat="server" Text='<%# Bind("UltimaIncidencia") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="UltimaRevisionTextBox" runat="server" Text='<%# Bind("UltimaRevision") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="StringTextBox" runat="server" Text='<%# Bind("String") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <SelectedItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Eliminar" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                        </td>
                        <td>
                            <asp:Label ID="nSerieLabel" runat="server" Text='<%# Eval("nSerie") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FechaAltaLabel" runat="server" Text='<%# Eval("FechaAlta") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FechaBajaLabel" runat="server" Text='<%# Eval("FechaBaja") %>' />
                        </td>
                        <td>
                            <asp:Label ID="UltimaIncidenciaLabel" runat="server" Text='<%# Eval("UltimaIncidencia") %>' />
                        </td>
                        <td>
                            <asp:Label ID="UltimaRevisionLabel" runat="server" Text='<%# Eval("UltimaRevision") %>' />
                        </td>
                        <td>
                            <asp:Label ID="StringLabel" runat="server" Text='<%# Eval("String") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
                        </div>
                </ContentTemplate>
                </cc1:TabPanel>
                <cc1:TabPanel ID="tabPaneles" runat="server" HeaderText="Paneles">
                    <ContentTemplate>
                        <div class="altaInventario">
                            <span class="texto">Nuevo Panel:<br />
                            </span>
                            <asp:Label ID="Label7" runat="server" Text="Nº Serie:" CssClass="texto2"></asp:Label>
                            <asp:TextBox ID="NseriePanel" CssClass="texto3" runat="server"></asp:TextBox><br />
                            <asp:Label ID="Label8" runat="server" Text="Descripción:" CssClass="texto2"></asp:Label><br />
                            <asp:TextBox ID="DescPanel" CssClass="texto3" runat="server" TextMode="MultiLine" Columns="50" Rows="3"></asp:TextBox>
                            <asp:Label ID="Label11" runat="server" Text="Seguidor Asociado:" CssClass="texto2"></asp:Label>
                            <asp:DropDownList ID="cbSeguidores" runat="server" DataSourceID="dataSeguidores" DataTextField="NSerie"
                                DataValueField="NSerie" />
                            <asp:Button ID="cmdAltaPanel" runat="server" Text="Guardar" OnClick="AltaComponente"/>
                        </div>
                        <div>
                           <asp:ListView ID="lvPaneles" runat="server" DataKeyNames="Nserie" DataSourceID="dataPaneles">
                <ItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Eliminar" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                        </td>
                        <td>
                            <asp:Label ID="NserieLabel" runat="server" Text='<%# Eval("Nserie") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PmaxLabel" runat="server" Text='<%# Eval("Pmax") %>' />
                        </td>
                        <td>
                            <asp:Label ID="IpmLabel" runat="server" Text='<%# Eval("Ipm") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FechaAltaLabel" runat="server" Text='<%# Eval("FechaAlta") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FechaBajaLabel" runat="server" Text='<%# Eval("FechaBaja") %>' />
                        </td>
                        <td>
                            <asp:Label ID="UltimaRevisionLabel" runat="server" Text='<%# Eval("UltimaRevision") %>' />
                        </td>
                        <td>
                            <asp:Label ID="UltimaIncidenciaLabel" runat="server" Text='<%# Eval("UltimaIncidencia") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SeguidorLabel" runat="server" Text='<%# Eval("Seguidor") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <AlternatingItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Eliminar" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                        </td>
                        <td>
                            <asp:Label ID="NserieLabel" runat="server" Text='<%# Eval("Nserie") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PmaxLabel" runat="server" Text='<%# Eval("Pmax") %>' />
                        </td>
                        <td>
                            <asp:Label ID="IpmLabel" runat="server" Text='<%# Eval("Ipm") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FechaAltaLabel" runat="server" Text='<%# Eval("FechaAlta") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FechaBajaLabel" runat="server" Text='<%# Eval("FechaBaja") %>' />
                        </td>
                        <td>
                            <asp:Label ID="UltimaRevisionLabel" runat="server" Text='<%# Eval("UltimaRevision") %>' />
                        </td>
                        <td>
                            <asp:Label ID="UltimaIncidenciaLabel" runat="server" Text='<%# Eval("UltimaIncidencia") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SeguidorLabel" runat="server" Text='<%# Eval("Seguidor") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EmptyDataTemplate>
                    <table id="Table7" runat="server" style="">
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
                            <asp:TextBox ID="NserieTextBox" runat="server" Text='<%# Bind("Nserie") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DescripcionTextBox" runat="server" Text='<%# Bind("Descripcion") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PmaxTextBox" runat="server" Text='<%# Bind("Pmax") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="IpmTextBox" runat="server" Text='<%# Bind("Ipm") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="FechaAltaTextBox" runat="server" Text='<%# Bind("FechaAlta") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="FechaBajaTextBox" runat="server" Text='<%# Bind("FechaBaja") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="UltimaRevisionTextBox" runat="server" Text='<%# Bind("UltimaRevision") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="UltimaIncidenciaTextBox" runat="server" Text='<%# Bind("UltimaIncidencia") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="SeguidorTextBox" runat="server" Text='<%# Bind("Seguidor") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <LayoutTemplate>
                    <table id="Table8" runat="server">
                        <tr id="Tr10" runat="server">
                            <td id="Td7" runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                    <tr id="Tr11" runat="server" style="">
                                        <th id="Th24" runat="server">
                                        </th>
                                        <th id="Th25" runat="server">
                                            Nserie
                                        </th>
                                        <th id="Th26" runat="server">
                                            Descripcion
                                        </th>
                                        <th id="Th27" runat="server">
                                            Pmax
                                        </th>
                                        <th id="Th28" runat="server">
                                            Ipm
                                        </th>
                                        <th id="Th29" runat="server">
                                            FechaAlta
                                        </th>
                                        <th id="Th30" runat="server">
                                            FechaBaja
                                        </th>
                                        <th id="Th31" runat="server">
                                            UltimaRevision
                                        </th>
                                        <th id="Th32" runat="server">
                                            UltimaIncidencia
                                        </th>
                                        <th id="Th33" runat="server">
                                            Seguidor
                                        </th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr id="Tr12" runat="server">
                            <td id="Td8" runat="server" style="">
                                <asp:DataPager ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
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
                            <asp:Label ID="NserieLabel1" runat="server" Text='<%# Eval("Nserie") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DescripcionTextBox" runat="server" Text='<%# Bind("Descripcion") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PmaxTextBox" runat="server" Text='<%# Bind("Pmax") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="IpmTextBox" runat="server" Text='<%# Bind("Ipm") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="FechaAltaTextBox" runat="server" Text='<%# Bind("FechaAlta") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="FechaBajaTextBox" runat="server" Text='<%# Bind("FechaBaja") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="UltimaRevisionTextBox" runat="server" Text='<%# Bind("UltimaRevision") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="UltimaIncidenciaTextBox" runat="server" Text='<%# Bind("UltimaIncidencia") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="SeguidorTextBox" runat="server" Text='<%# Bind("Seguidor") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <SelectedItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Eliminar" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                        </td>
                        <td>
                            <asp:Label ID="NserieLabel" runat="server" Text='<%# Eval("Nserie") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PmaxLabel" runat="server" Text='<%# Eval("Pmax") %>' />
                        </td>
                        <td>
                            <asp:Label ID="IpmLabel" runat="server" Text='<%# Eval("Ipm") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FechaAltaLabel" runat="server" Text='<%# Eval("FechaAlta") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FechaBajaLabel" runat="server" Text='<%# Eval("FechaBaja") %>' />
                        </td>
                        <td>
                            <asp:Label ID="UltimaRevisionLabel" runat="server" Text='<%# Eval("UltimaRevision") %>' />
                        </td>
                        <td>
                            <asp:Label ID="UltimaIncidenciaLabel" runat="server" Text='<%# Eval("UltimaIncidencia") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SeguidorLabel" runat="server" Text='<%# Eval("Seguidor") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
                        </div>
                    </ContentTemplate>
                </cc1:TabPanel>
            </cc1:TabContainer>
        </div>
    </div>
    <asp:SqlDataSource ID="dataInversores" runat="server" ConnectionString="<%$ ConnectionStrings:IGMIncidenciasConnectionString %>"
        DeleteCommand="DELETE FROM [Inversores] WHERE [Nserie] = @Nserie" InsertCommand="INSERT INTO [Inversores] ([Nserie], [Descripcion], [FechaAlta], [FechaBaja], [UltimaRevision], [UltimaIncidencia]) VALUES (@Nserie, @Descripcion, @FechaAlta, @FechaBaja, @UltimaRevision, @UltimaIncidencia)"
        SelectCommand="SELECT * FROM [Inversores]" UpdateCommand="UPDATE [Inversores] SET [Descripcion] = @Descripcion, [FechaAlta] = @FechaAlta, [FechaBaja] = @FechaBaja, [UltimaRevision] = @UltimaRevision, [UltimaIncidencia] = @UltimaIncidencia WHERE [Nserie] = @Nserie">
        <DeleteParameters>
            <asp:Parameter Name="Nserie" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Descripcion" Type="String" />
            <asp:Parameter DbType="Date" Name="FechaAlta" />
            <asp:Parameter DbType="Date" Name="FechaBaja" />
            <asp:Parameter DbType="Date" Name="UltimaRevision" />
            <asp:Parameter DbType="Date" Name="UltimaIncidencia" />
            <asp:Parameter Name="Nserie" Type="String" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="Nserie" Type="String" />
            <asp:Parameter Name="Descripcion" Type="String" />
            <asp:Parameter DbType="Date" Name="FechaAlta" />
            <asp:Parameter DbType="Date" Name="FechaBaja" />
            <asp:Parameter DbType="Date" Name="UltimaRevision" />
            <asp:Parameter DbType="Date" Name="UltimaIncidencia" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dataSeguidores" runat="server" ConnectionString="<%$ ConnectionStrings:IGMIncidenciasConnectionString %>"
        DeleteCommand="DELETE FROM [Seguidores] WHERE [nSerie] = @nSerie" InsertCommand="INSERT INTO [Seguidores] ([nSerie], [Descripcion], [FechaAlta], [FechaBaja], [UltimaIncidencia], [UltimaRevision], [String]) VALUES (@nSerie, @Descripcion, @FechaAlta, @FechaBaja, @UltimaIncidencia, @UltimaRevision, @String)"
        SelectCommand="SELECT * FROM [Seguidores]" UpdateCommand="UPDATE [Seguidores] SET [Descripcion] = @Descripcion, [FechaAlta] = @FechaAlta, [FechaBaja] = @FechaBaja, [UltimaIncidencia] = @UltimaIncidencia, [UltimaRevision] = @UltimaRevision, [String] = @String WHERE [nSerie] = @nSerie">
        <DeleteParameters>
            <asp:Parameter Name="nSerie" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Descripcion" Type="String" />
            <asp:Parameter DbType="Date" Name="FechaAlta" />
            <asp:Parameter DbType="Date" Name="FechaBaja" />
            <asp:Parameter DbType="Date" Name="UltimaIncidencia" />
            <asp:Parameter DbType="Date" Name="UltimaRevision" />
            <asp:Parameter Name="String" Type="String" />
            <asp:Parameter Name="nSerie" Type="String" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="nSerie" Type="String" />
            <asp:Parameter Name="Descripcion" Type="String" />
            <asp:Parameter DbType="Date" Name="FechaAlta" />
            <asp:Parameter DbType="Date" Name="FechaBaja" />
            <asp:Parameter DbType="Date" Name="UltimaIncidencia" />
            <asp:Parameter DbType="Date" Name="UltimaRevision" />
            <asp:Parameter Name="String" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dataStrings" runat="server" ConnectionString="<%$ ConnectionStrings:IGMIncidenciasConnectionString %>"
        DeleteCommand="DELETE FROM [Strings] WHERE [Nserie] = @Nserie" InsertCommand="INSERT INTO [Strings] ([Nserie], [Descripcion], [FechaAlta], [FechaBaja], [UltimaIncidencia], [UltimaRevision], [Inversor]) VALUES (@Nserie, @Descripcion, @FechaAlta, @FechaBaja, @UltimaIncidencia, @UltimaRevision, @Inversor)"
        SelectCommand="SELECT * FROM [Strings]" UpdateCommand="UPDATE [Strings] SET [Descripcion] = @Descripcion, [FechaAlta] = @FechaAlta, [FechaBaja] = @FechaBaja, [UltimaIncidencia] = @UltimaIncidencia, [UltimaRevision] = @UltimaRevision, [Inversor] = @Inversor WHERE [Nserie] = @Nserie">
        <DeleteParameters>
            <asp:Parameter Name="Nserie" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Descripcion" Type="String" />
            <asp:Parameter DbType="Date" Name="FechaAlta" />
            <asp:Parameter DbType="Date" Name="FechaBaja" />
            <asp:Parameter DbType="Date" Name="UltimaIncidencia" />
            <asp:Parameter DbType="Date" Name="UltimaRevision" />
            <asp:Parameter Name="Inversor" Type="String" />
            <asp:Parameter Name="Nserie" Type="String" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="Nserie" Type="String" />
            <asp:Parameter Name="Descripcion" Type="String" />
            <asp:Parameter DbType="Date" Name="FechaAlta" />
            <asp:Parameter DbType="Date" Name="FechaBaja" />
            <asp:Parameter DbType="Date" Name="UltimaIncidencia" />
            <asp:Parameter DbType="Date" Name="UltimaRevision" />
            <asp:Parameter Name="Inversor" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dataPaneles" runat="server" ConnectionString="<%$ ConnectionStrings:IGMIncidenciasConnectionString %>"
        DeleteCommand="DELETE FROM [Paneles] WHERE [Nserie] = @Nserie" InsertCommand="INSERT INTO [Paneles] ([Nserie], [Descripcion], [Pmax], [Ipm], [FechaAlta], [FechaBaja], [UltimaRevision], [UltimaIncidencia], [Seguidor]) VALUES (@Nserie, @Descripcion, @Pmax, @Ipm, @FechaAlta, @FechaBaja, @UltimaRevision, @UltimaIncidencia, @Seguidor)"
        SelectCommand="SELECT * FROM [Paneles]" UpdateCommand="UPDATE [Paneles] SET [Descripcion] = @Descripcion, [Pmax] = @Pmax, [Ipm] = @Ipm, [FechaAlta] = @FechaAlta, [FechaBaja] = @FechaBaja, [UltimaRevision] = @UltimaRevision, [UltimaIncidencia] = @UltimaIncidencia, [Seguidor] = @Seguidor WHERE [Nserie] = @Nserie">
        <DeleteParameters>
            <asp:Parameter Name="Nserie" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Descripcion" Type="String" />
            <asp:Parameter Name="Pmax" Type="Decimal" />
            <asp:Parameter Name="Ipm" Type="Decimal" />
            <asp:Parameter DbType="Date" Name="FechaAlta" />
            <asp:Parameter DbType="Date" Name="FechaBaja" />
            <asp:Parameter DbType="Date" Name="UltimaRevision" />
            <asp:Parameter DbType="Date" Name="UltimaIncidencia" />
            <asp:Parameter Name="Seguidor" Type="String" />
            <asp:Parameter Name="Nserie" Type="String" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="Nserie" Type="String" />
            <asp:Parameter Name="Descripcion" Type="String" />
            <asp:Parameter Name="Pmax" Type="Decimal" />
            <asp:Parameter Name="Ipm" Type="Decimal" />
            <asp:Parameter DbType="Date" Name="FechaAlta" />
            <asp:Parameter DbType="Date" Name="FechaBaja" />
            <asp:Parameter DbType="Date" Name="UltimaRevision" />
            <asp:Parameter DbType="Date" Name="UltimaIncidencia" />
            <asp:Parameter Name="Seguidor" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:ObjectDataSource ID="objInversores" runat="server" 
        DeleteMethod="EliminarComponente" InsertMethod="CrearComponente" 
        SelectMethod="getComponentes" TypeName="LOBIncidencias.Inversor">
        <DeleteParameters>
            <asp:Parameter Name="nserie" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nserieInversor" Type="String" />
            <asp:Parameter Name="descInversor" Type="String" />
        </InsertParameters>
    </asp:ObjectDataSource>
    
</asp:Content>
