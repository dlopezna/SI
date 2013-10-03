<%@ Page Language="C#" MasterPageFile="~/IGM.Master" AutoEventWireup="true" CodeBehind="Mantenimiento.aspx.cs"
    Inherits="WebAdmin.Mantenimiento" Title="Página sin título" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <div id="titular">
        Mantenimientos Preventivos
    </div>
    <div id="centro">

                <asp:ListView ID="lvTareas" runat="server" DataSourceID="dsTareas">
                    <ItemTemplate>
                        <tr class="elemento">
                            <td>
                                <asp:ImageButton ID="cmdEdit" runat="server" AlternateText="Selección" OnCommand="irMantenimiento"
                                    CommandArgument='<%# Eval("idTarea") %>' ImageUrl="~/Images/tools_15.png" />
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" Visible="false" runat="server" Text='<%# Eval("idTarea") %>' />
                                <asp:Label ID="lblDescripcion" runat="server" Text='<%# Eval("Descripcion") %>' />
                            </td>
                            <td>
                                <asp:Label ID="lblPeriodo" runat="server" Text='<%# Eval("Periodo") %>' />
                            </td>
                            <td>
                                <asp:Label ID="lblTipoComponente" runat="server" Text='<%# Eval("DefTipoComponente") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <AlternatingItemTemplate>
                        <tr class="alterno">
                            <td>
                                <asp:ImageButton ID="cmdEdit" runat="server" AlternateText="Selección" OnCommand="irMantenimiento"
                                    CommandArgument='<%# Eval("idTarea") %>' ImageUrl="~/Images/tools_15.png" />
                            </td>
                            <td>
                                <asp:Label ID="lblDescripcion" runat="server" Text='<%# Eval("Descripcion") %>' />
                            </td>
                            <td>
                                <asp:Label ID="lblPeriodo" runat="server" Text='<%# Eval("Periodo") %>' />
                            </td>
                            <td>
                                <asp:Label ID="lblTipoComponente" runat="server" Text='<%# Eval("DefTipoComponente") %>' />
                            </td>
                        </tr>
                    </AlternatingItemTemplate>
                    <EmptyDataTemplate>
                        <center>
                            <table id="Table1" runat="server" style="">
                                <tr>
                                    <td align="center">
                                        <img alt="Warning" src="../Images/warning-32.png" style="vertical-align: middle;" />
                                        <span class="aviso" style="vertical-align: middle;">No hay mantenimientos programados.</span>
                                    </td>
                                </tr>
                            </table>
                        </center>
                    </EmptyDataTemplate>
                    <LayoutTemplate>
                        <table id="Table1" runat="server" width="100%">
                            <tr id="Tr1" runat="server">
                                <td id="Td1" runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="0" width="100%" cellpadding="0"
                                        cellspacing="0">
                                        <tr id="Tr2" runat="server" class="listview-head">
                                            <th id="Th1" runat="server">
                                            </th>
                                            <th id="Th2" runat="server">
                                                Descripción
                                            </th>
                                            <th id="Th3" runat="server">
                                                Periodo
                                            </th>
                                            <th id="Th4" runat="server">
                                                Tipo Componente
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
                                            <asp:NextPreviousPagerField ButtonType="Image" PreviousPageImageUrl="~/Images/anterior.gif"
                                                NextPageImageUrl="~/Images/siguiente.gif" />
                                        </Fields>
                                    </asp:DataPager>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <tr class="seleccion">
                            <td>
                                <asp:ImageButton ID="cmdEdit" runat="server" AlternateText="Mantenimiento" ImageUrl="~/Images/tools_15.png" />
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" Visible="false" runat="server" Text='<%# Eval("idTarea") %>' />
                                <asp:Label ID="lblDescripcion" runat="server" Text='<%# Eval("Descripcion") %>' />
                            </td>
                            <td>
                                <asp:Label ID="lblPeriodo" runat="server" Text='<%# Eval("Periodo") %>' />
                            </td>
                            <td>
                                <asp:Label ID="lblTipoComponente" runat="server" Text='<%# Eval("DefTipoComponente") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>
 
    </div>
    <asp:ObjectDataSource ID="dsTareas" runat="server" DataObjectTypeName="LOBIncidencias.Tarea"
        SelectMethod="getTareas" TypeName="LOBIncidencias.TareasManager" />
</asp:Content>
