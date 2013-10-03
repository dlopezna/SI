<%@ Page Language="C#" MasterPageFile="~/IGM.Master" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs"
    Inherits="WebAdmin.Seguridad.Clientes"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
<asp:UpdateProgress ID="updP" runat="server" AssociatedUpdatePanelID="upd_altaCliente"
        DisplayAfter="0">
        <ProgressTemplate>
            <div id="upd_progress">
                <div style="margin-top: 25%;">
                    <img src="../Images/loading.gif" alt="cargando..." style="vertical-align: middle;
                        border: solid 1px black;" />
                </div>
            </div>
        </ProgressTemplate>
    </asp:UpdateProgress>
 <asp:UpdateProgress ID="UpdateProgress2" runat="server" AssociatedUpdatePanelID="upd_lvClientes"
        DisplayAfter="0">
        <ProgressTemplate>
            <div id="upd_progress">
                <div style="margin-top: 25%;">
                    <img src="../Images/loading.gif" alt="cargando..." style="vertical-align: middle;
                        border: solid 1px black;" />
                </div>
            </div>
        </ProgressTemplate>
    </asp:UpdateProgress>
    <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="upd_Plantas"
        DisplayAfter="0">
        <ProgressTemplate>
            <div id="upd_progress">
                <div style="margin-top: 25%;">
                    <img src="../Images/loading.gif" alt="cargando..." style="vertical-align: middle;
                        border: solid 1px black;" />
                </div>
            </div>
        </ProgressTemplate>
        </asp:UpdateProgress>
     
    <div id="dcha" style="width:75%">
        <div class="subtitular">
            Listado de Clientes
        </div>
        <asp:UpdatePanel ID="upd_altaCliente" runat="server">
        <ContentTemplate>
        <div id="alta" class="altaInventario">
        <div style="margin:5px;background-color:#ffffff;padding:3px;">
            <div>Cliente:&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtCliente" runat="server" 
                    Width="80%" />
            </div>
            <div>Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtEmail" runat="server" Width="80%" /></div>
            <div style="float:left;">Teléfono:&nbsp; <asp:TextBox ID="txtTelefono" runat="server" /></div>
            
            <div> <asp:Button ID="cmdAceptar" runat="server" Text="Guardar" 
                    onclick="cmdAceptar_Click" />
            <asp:Button ID="cmdCancelar" runat="server" Text="Cancelar" /></div>
        </div>
        </div>
        </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdatePanel ID="upd_lvClientes" runat="server" >
        <ContentTemplate>
        <asp:ListView ID="lvClientes" runat="server" DataSourceID="dsClientes" 
                            onitemdeleting="lvClientes_ItemDeleting" 
                            onselectedindexchanging="lvClientes_SelectedIndexChanging" 
                            onitemcanceling="lvClientes_ItemCanceling" 
                            onitemediting="lvClientes_ItemEditing" onitemupdating="lvClientes_ItemUpdating">
            <ItemTemplate>
                <tr class="elemento">
                    <td>
                        <asp:ImageButton ID="cmdSelect" runat="server" CommandName="Select"  
                            AlternateText="Selección" ImageUrl="~/Images/marca.gif" />
                    </td>
                    <td>
                        <asp:Label ID="lblId" runat="server" Visible="false" Text='<%# Eval("Id") %>' />
                        <asp:Label ID="lblNombre" runat="server" Text='<%# Eval("Nombre") %>' />
                    </td>
                    <td>
                        <asp:Label ID="lblTelefono" runat="server" Text='<%# Eval("Telefono") %>' />
                    </td>
                    <td>
                        <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("Email") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <AlternatingItemTemplate>
                <tr class="alterno">
                                    <td>
                        <asp:ImageButton ID="cmdSelect" runat="server" CommandName="Select"  
                            AlternateText="Selección" ImageUrl="~/Images/marca.gif" />
                    </td>
                    <td>
                    <asp:Label ID="lblId" runat="server" Visible="false" Text='<%# Eval("Id") %>' />
                        <asp:Label ID="lblNombre" runat="server" Text='<%# Eval("Nombre") %>' />
                    </td>
                    <td>
                        <asp:Label ID="lblTelefono" runat="server" Text='<%# Eval("Telefono") %>' />
                    </td>
                    <td>
                        <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("Email") %>' />
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
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="width:100%" cellpadding="0" cellspacing="0" >
                                <tr runat="server" class="listview-head">
                                    <th runat="server">
                                    </th>
                                    <th runat="server">
                                        Nombre</th>
                                    <th runat="server">
                                        Telefono</th>
                                    <th runat="server">
                                        Email</th>
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
            <EditItemTemplate>
                <tr class="edicion">
                    <td>
                       <asp:ImageButton ID="cmdUpdate" runat="server" BorderWidth="1px" BorderStyle="Ridge"
                                    CommandName="Update" AlternateText="Actualizar" ImageUrl="~/Images/aceptada.gif" />
                                <asp:ImageButton ID="cmdCancel" runat="server" BorderWidth="1px" BorderStyle="Ridge"
                                    CommandName="Cancel" AlternateText="Cancelar" ImageUrl="~/Images/cancelar.gif" />
                    </td>
                    <td>
                        <asp:TextBox ID="lblId" runat="server" Visible="false" Text='<%# Bind("Id") %>' />
                        <asp:TextBox ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="TelefonoTextBox" runat="server" Text='<%# Bind("Telefono") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
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
                        <asp:Label ID="lblId" runat="server" Visible="false" Text='<%# Eval("Id") %>' />
                        <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TelefonoLabel" runat="server" Text='<%# Eval("Telefono") %>' />
                    </td>
                    <td>
                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <div id="izda" style="width:20%;">
    
        <div class="subtitular">
            Plantas Disponibles
        </div>
        <asp:UpdatePanel ID="upd_Plantas" runat="server">
        <ContentTemplate>
        <div class="altaInventario">
        <asp:CheckBox ID="chkTodas" runat="server" Text="Seleccionar Todo" 
                ForeColor="#800000" AutoPostBack="True" 
                oncheckedchanged="chkTodas_CheckedChanged" />
        </div>
        <asp:CheckBoxList ID="chkBoxPlantas" runat="server" DataSourceID="dsPlantas" 
            DataTextField="NSerie" DataValueField="NSerie" ForeColor="#800000" >
        </asp:CheckBoxList>
        </ContentTemplate>
        </asp:UpdatePanel>
        <asp:ObjectDataSource ID="dsPlantas" runat="server" 
            SelectMethod="getComponentes" TypeName="LOBIncidencias.Planta">
        </asp:ObjectDataSource>
    </div>
    <asp:ObjectDataSource ID="dsClientes" runat="server" SelectMethod="getAllClientes"
        TypeName="SecurityServices.SecurityManager" 
        DeleteMethod="RemoveCliente" 
        UpdateMethod="GuardarCliente">
        <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int16" />
        </DeleteParameters>
    </asp:ObjectDataSource>
</asp:Content>
