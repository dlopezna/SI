<%@ Page Language="C#" MasterPageFile="~/IGM.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs"
    Inherits="WebAdmin.Usuarios" Title="Página sin título" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <div id="menu">
        <span style="text-decoration: underline;">Administración de Usuarios y Perfiles</span>
    </div>
    <div id="izda">
        <div id="titular">
            Creación de usuarios</div>
        <asp:CreateUserWizard ID="addUser" runat="server">
            <WizardSteps>
                <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                </asp:CreateUserWizardStep>
                <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                </asp:CompleteWizardStep>
            </WizardSteps>
        </asp:CreateUserWizard>
        <div id="titular">
            Roles disponibles</div>
        <asp:ListView ID="lvRoles" runat="server" DataSourceID="dsRoles">
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="LengthLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <AlternatingItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="LengthLabel" runat="server" Text='<%# Eval("Nombre") %>' />
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
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>
                        <asp:TextBox ID="LengthTextBox" runat="server" Text='<%# Bind("Length") %>' />
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
                                        Grupos de Usuarios
                                    </th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr id="Tr3" runat="server">
                        <td id="Td2" runat="server" style="">
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <EditItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:TextBox ID="LengthTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <SelectedItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="LengthLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
    </div>
    <div id="dcha">
        <div id="titular">
            Usuarios del sistema</div>
        <asp:ListView ID="lvUsuarios" runat="server" DataSourceID="dsUsuarios">
            <ItemTemplate>
                <tr class="elemento">
                    <td>
                      <asp:ImageButton ID="cmdSeleccion" runat="server" CommandName="Select" AlternateText="Seleccionar" 
                      ImageUrl="~/Images/marca.gif" />
                    </td>
                    <td>
                        <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
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
                    <%--<td>
                        <asp:Label ID="lblRol" runat="server" Text='<%# Eval("Rol") %>' />
                    </td>--%>
                </tr>
            </ItemTemplate>
            <AlternatingItemTemplate>
                <tr class="alterno">
                    <td>
                                   <asp:ImageButton ID="cmdSeleccion" runat="server" CommandName="Select" AlternateText="Seleccionar" 
                      ImageUrl="~/Images/marca.gif" />
                    </td>
                    <td>
                        <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
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
                        <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
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
                       <asp:ImageButton ID="cmdEdit" runat="server" CommandName="Edit" AlternateText="Editar" ImageUrl="~/Images/edit.gif" />
                       <asp:ImageButton ID="cmdDelete" runat="server" CommandName="Delete" AlternateText="Borrar" ImageUrl="~/Images/eliminar.gif" />
                    </td>
                    <td>
                        <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
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
    </div>
    <asp:ObjectDataSource ID="dsUsuarios" runat="server" SelectMethod="getAllUsers" TypeName="SecurityServices.SecurityManager">
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="dsRoles" runat="server" SelectMethod="getAllRoles" TypeName="SecurityServices.SecurityManager">
    </asp:ObjectDataSource>
</asp:Content>
