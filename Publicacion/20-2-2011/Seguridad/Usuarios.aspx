<%@ Page Language="C#" MasterPageFile="~/IGM.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs"
    Inherits="WebAdmin.Usuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
 <asp:UpdateProgress ID="updP" runat="server" AssociatedUpdatePanelID="upd_RolCliente"
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
    <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="upd_lvUsuarios"
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
    <div id="menu">
        <span style="text-decoration: underline;">Administración de Usuarios y Perfiles</span>
    </div>
    <div id="dcha">
        <div id="Div1" class="subtitular">
            Usuarios del sistema</div>
            <asp:UpdatePanel ID="upd_lvUsuarios" runat="server" >
            <ContentTemplate>
        <asp:ListView ID="lvUsuarios" runat="server" DataSourceID="dsUsuarios" OnItemEditing="lvUsuarios_ItemEditing"
            OnItemUpdating="lvUsuarios_ItemUpdating" 
                            OnSelectedIndexChanging="lvUsuarios_SelectedIndexChanging" 
                            onitemdeleting="lvUsuarios_ItemDeleting" 
                            onitemcanceling="lvUsuarios_ItemCanceling">
            <ItemTemplate>
                <tr class="elemento">
                    <td>
                        <asp:ImageButton ID="cmdSeleccion" runat="server" CommandName="Select" AlternateText="Seleccionar"
                            ImageUrl="~/Images/marca.gif" />
                    </td>
                    <td>
                        <asp:Label ID="lblUserName" runat="server" Text='<%# Eval("UserName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    </td>
                    <td>
                        <asp:CheckBox ID="IsLockedOutCheckBox" runat="server" Checked='<%# Eval("IsLockedOut") %>'
                            Enabled="false" />
                    </td>
                    <td>
                        <asp:CheckBox ID="IsOnlineCheckBox" runat="server" Checked='<%# Eval("IsOnline") %>'
                            Enabled="false" />
                    </td>
                </tr>
            </ItemTemplate>
            <AlternatingItemTemplate>
                <tr class="alterno">
                    <td>
                        <asp:ImageButton ID="cmdSeleccion" runat="server" CommandName="Select" AlternateText="Seleccionar"
                            ImageUrl="~/Images/marca.gif" />
                    </td>
                    <td>
                        <asp:Label ID="lblUserName" runat="server" Text='<%# Eval("UserName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    </td>
                    <td>
                        <asp:CheckBox ID="IsLockedOutCheckBox" runat="server" Checked='<%# Eval("IsLockedOut") %>'
                            Enabled="false" />
                    </td>
                    <td>
                        <asp:CheckBox ID="IsOnlineCheckBox" runat="server" Checked='<%# Eval("IsOnline") %>'
                            Enabled="false" />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EmptyDataTemplate>
                <center>
                    <table id="Table1" runat="server" style="width: 100%">
                        <tr>
                            <td align="center">
                                <img alt="Warning" src="../Images/warning-32.png" style="vertical-align: middle;" />
                                <span class="aviso" style="vertical-align: middle;">No se han devuelto datos.</span>
                            </td>
                        </tr>
                    </table>
                </center>
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table id="Table3" runat="server" width="100%">
                    <tr id="Tr4" runat="server">
                        <td id="Td3" runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" width="100%" cellpadding="0"
                                cellspacing="0">
                                <tr id="Tr5" runat="server" style="">
                                    <td>
                                    </td>
                                    <th id="Th2" runat="server">
                                        Usuario
                                    </th>
                                    <th id="Th3" runat="server">
                                        Correo
                                    </th>
                                    <th id="Th4" runat="server">
                                        Desactivado
                                    </th>
                                    <th id="Th5" runat="server">
                                        Conectado
                                    </th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr id="Tr6" runat="server">
                        <td id="Td4" runat="server" style="">
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <EditItemTemplate>
                <tr class="elemento">
                    <td>
                        <asp:ImageButton ID="cmdUpdate" runat="server" CommandName="Update" AlternateText="Actualizar"
                            ImageUrl="~/Images/aceptada.gif" />
                        <asp:ImageButton ID="cmdCancel" runat="server" CommandName="Cancel" AlternateText="Cancelar"
                            ImageUrl="~/Images/cancelar.gif" />
                    </td>
                    <td>
                        <asp:Label ID="lblUserName" runat="server" Text='<%# Bind("UserName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    </td>
                    <td>
                        <asp:CheckBox ID="IsLockedOutCheckBox" runat="server" Checked='<%# Eval("IsLockedOut") %>'
                            Enabled="true" />
                    </td>
                    <td>
                        <asp:CheckBox ID="IsOnlineCheckBox" runat="server" Checked='<%# Eval("IsOnline") %>'
                            Enabled="false" />
                    </td>
                </tr>
            </EditItemTemplate>
            <SelectedItemTemplate>
                <tr class="elemento">
                    <td>
                        <asp:ImageButton ID="cmdEdit" runat="server" CommandName="Edit" AlternateText="Editar"
                            ImageUrl="~/Images/edit.gif" />
                        <asp:ImageButton ID="cmdDelete" runat="server" CommandName="Delete" AlternateText="Borrar"
                            ImageUrl="~/Images/eliminar.gif" />
                    </td>
                    <td>
                        <asp:Label ID="lblUserName" runat="server" Text='<%# Eval("username") %>' />
                    </td>
                    <td>
                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    </td>
                    <td>
                        <asp:CheckBox ID="IsLockedOutCheckBox" runat="server" Checked='<%# Eval("IsLockedOut") %>'
                            Enabled="false" />
                    </td>
                    <td>
                        <asp:CheckBox ID="IsOnlineCheckBox" runat="server" Checked='<%# Eval("IsOnline") %>'
                            Enabled="false" />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <div id="izda">
        <div class="subtitular">
            Roles disponibles</div>
            <asp:UpdatePanel ID="upd_RolCliente" runat="server">
            <ContentTemplate>
        <asp:CheckBoxList ID="chkBoxListRoles" runat="server" DataSourceID="dsRoles" DataTextField="Nombre"
            DataValueField="Nombre" Enabled="false" ForeColor="#800000" />
            <div class="subtitular">
            Clientes Autorizados</div>
            <asp:CheckBoxList ID="chkBoxListClientes" runat="server" DataSourceID="dsClientes" DataTextField="Nombre"
            DataValueField="id" Enabled="false" ForeColor="#800000"  />
            </ContentTemplate>
            </asp:UpdatePanel>
    </div>
    <asp:ObjectDataSource ID="dsUsuarios" runat="server" SelectMethod="getAllUsers" DeleteMethod="eliminarUsuario" 
    UpdateMethod="guardarUsuario" TypeName="SecurityServices.SecurityManager">
        <UpdateParameters>
            <asp:Parameter Name="UserName" Type="String" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="dsRoles" runat="server" SelectMethod="getAllRoles" TypeName="SecurityServices.SecurityManager">
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="dsClientes" runat="server" SelectMethod="getAllClientes" TypeName="SecurityServices.SecurityManager">
    </asp:ObjectDataSource>
    
</asp:Content>
