<%@ Page Language="C#" MasterPageFile="~/IGM.Master" AutoEventWireup="true" CodeBehind="MantenimientoTareas.aspx.cs"
    Inherits="WebAdmin.Administracion.MantenimientoTareas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <div id="titular">
        <span style="text-decoration: underline;">Tareas de Mantenimiento</span>
    </div>
    <div id="menu">
        BUSCADOR
    </div>
    <div id="centro">
        <asp:ListView ID="lvTareas" runat="server" DataSourceID="dsTareas" 
            InsertItemPosition="LastItem" oniteminserting="lvTareas_ItemInserting">
            <ItemTemplate>
                <tr class="elemento">
                    <td>
                        <asp:ImageButton ID="cmdEdit" runat="server" AlternateText="Selección" CommandName="Select"
                            ImageUrl="~/Images/marca.gif" />
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
                        <asp:ImageButton ID="cmdEdit" runat="server" AlternateText="Selección" CommandName="Select"
                            ImageUrl="~/Images/marca.gif" />
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
                                <span class="aviso" style="vertical-align: middle;">No se han devuelto datos.</span>
                            </td>
                        </tr>
                    </table>
                </center>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr>
                    <td colspan="4">
                        <span class="explicacion">Insertar un nuevo item</span>
                    </td>
                </tr>
                <tr class="nuevo">
                    <td>
                        <asp:ImageButton ID="cmdInsert" runat="server" BorderWidth="1px" BorderStyle="Ridge"
                            CommandName="Insert" AlternateText="Insertar" ImageUrl="~/Images/add.gif" />
                        <asp:ImageButton ID="cmdCancel" runat="server" BorderWidth="1px" BorderStyle="Ridge"
                            CommandName="Cancel" AlternateText="Cancelar" ImageUrl="~/Images/cancelar.gif" />
                    </td>
                    <td>
                        <asp:TextBox ID="txtDescripcion" runat="server" Width="98%" Text='<%# Bind("Descripcion") %>' />
                    </td>
                    <td>
                        <asp:DropDownList ID="cbPeriodo" runat="server">
                            <asp:ListItem Text="Inmediato" Value="0" />
                            <asp:ListItem Text="1" Value="1" />
                            <asp:ListItem Text="6" Value="6" />
                            <asp:ListItem Text="12" Value="12" />
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList ID="cbTipoComponente" runat="server" DataSourceID="dsTipoComponente"
                            DataValueField="ID" DataTextField="Nombre" />
                    </td>
                </tr>
            </InsertItemTemplate>
            <LayoutTemplate>
                <table runat="server" width="100%">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" width="100%" cellpadding="0"
                                cellspacing="0">
                                <tr runat="server" class="listview-head">
                                    <th runat="server">
                                    </th>
                                    <th runat="server">
                                        Descripción
                                    </th>
                                    <th runat="server">
                                        Periodo
                                    </th>
                                    <th runat="server">
                                        Tipo Componente
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
                                    <asp:NextPreviousPagerField ButtonType="Image" PreviousPageImageUrl="~/Images/anterior.gif"
                                        NextPageImageUrl="~/Images/siguiente.gif" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <EditItemTemplate>
                <tr class="edicion">
                    <td>
                        <asp:ImageButton ID="cmdUpdate" runat="server" BorderWidth="1px" BorderStyle="Ridge"
                            CommandName="Update" AlternateText="Actualizar" ImageUrl="~/Images/aceptada.gif" />
                        <asp:ImageButton ID="cmdCancel" runat="server" BorderWidth="1px" BorderStyle="Ridge"
                            CommandName="Cancel" AlternateText="Cancelar" ImageUrl="~/Images/cancelar.gif" />
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" Visible="false" runat="server" Text='<%# Bind("idTarea") %>' />
                        <asp:TextBox ID="DescripcionTextBox" runat="server" Width="98%" Text='<%# Bind("Descripcion") %>' />
                    </td>
                    <td>
                        <asp:DropDownList ID="cbPeriodo" runat="server" SelectedValue='<%# Bind("Periodo") %>'>
                            <asp:ListItem Text="Inmediato" Value="0" />
                            <asp:ListItem Text="1" Value="1" />
                            <asp:ListItem Text="6" Value="6" />
                            <asp:ListItem Text="12" Value="12" />
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList ID="cbTipoComponente" runat="server" DataSourceID="dsTipoComponente"
                            DataValueField="ID" DataTextField="Nombre" SelectedValue='<%# Bind("TipoComponente") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <SelectedItemTemplate>
             <tr class="seleccion">
                    <td>
                        <asp:ImageButton ID="cmdEdit" runat="server" AlternateText="Editar" CommandName="Edit"
                            ImageUrl="~/Images/edit.gif" />
                                   <asp:ImageButton ID="cmdBorrar" runat="server" AlternateText="Borrar" CommandName="Delete"
                            ImageUrl="~/Images/eliminar.gif" />
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
        DeleteMethod="eliminarTarea" InsertMethod="guardarTarea" SelectMethod="getTareas"
        TypeName="LOBIncidencias.TareasManager" UpdateMethod="guardarTarea">
        </asp:ObjectDataSource>
        
    <asp:ObjectDataSource ID="dsTipoComponente" runat="server" SelectMethod="getGrupos"
        TypeName="LOBIncidencias.IncidenciasManager" />
</asp:Content>
