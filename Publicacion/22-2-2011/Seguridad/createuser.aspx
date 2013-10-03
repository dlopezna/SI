<%@ Page Language="C#" MasterPageFile="~/IGM.Master" AutoEventWireup="true" CodeBehind="createuser.aspx.cs" Inherits="WebAdmin.createuser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 166px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
   <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="upd_wizard"
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
    <asp:UpdateProgress ID="UpdateProgress2" runat="server" AssociatedUpdatePanelID="upd_RolCliente"
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
    <div id="titular">
Crear nuevos Usuarios
</div>
<div  id="dcha">
<div class="subtitular">Regístrese para obtener una nueva cuenta</div>
<div>
<asp:UpdatePanel ID="upd_wizard" runat="server">
<ContentTemplate>
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" 
        TitleTextStyle-HorizontalAlign="Left" Width="400px" 
        FinishDestinationPageUrl="~/Seguridad/createuser.aspx" 
        LoginCreatedUser="False" oncreateduser="CreateUserWizard1_CreatedUser" >
        <TitleTextStyle HorizontalAlign="Left" />
        <WizardSteps>
            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server" >
                <ContentTemplate>
                    <table border="0" style="color:#800000; background-color:white;">
                        <tr>
                            <td align="right" style="text-align: left" class="style1">
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Nombre 
                                de usuario:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="UserName" runat="server" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                    ControlToValidate="UserName" 
                                    ErrorMessage="El nombre de usuario es obligatorio." 
                                    ToolTip="El nombre de usuario es obligatorio." 
                                    ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="text-align: left" class="style1">
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" 
                                    style="text-align: left">Contraseña:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                    ControlToValidate="Password" ErrorMessage="La contraseña es obligatoria." 
                                    ToolTip="La contraseña es obligatoria." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="text-align: left" class="style1">
                                <asp:Label ID="ConfirmPasswordLabel" runat="server" 
                                    AssociatedControlID="ConfirmPassword">Confirmar contraseña:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" 
                                    ControlToValidate="ConfirmPassword" 
                                    ErrorMessage="Confirmar contraseña es obligatorio." 
                                    ToolTip="Confirmar contraseña es obligatorio." 
                                    ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="text-align: left" class="style1">
                                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">Correo 
                                electrónico:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" 
                                    ControlToValidate="Email" ErrorMessage="El correo electrónico es obligatorio." 
                                    ToolTip="El correo electrónico es obligatorio." 
                                    ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="text-align: left" class="style1">
                                <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">Pregunta 
                                de seguridad:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Question" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" 
                                    ControlToValidate="Question" 
                                    ErrorMessage="La pregunta de seguridad es obligatoria." 
                                    ToolTip="La pregunta de seguridad es obligatoria." 
                                    ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="text-align: left" class="style1">
                                <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">Respuesta 
                                de seguridad:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" 
                                    ControlToValidate="Answer" 
                                    ErrorMessage="La respuesta de seguridad es obligatoria." 
                                    ToolTip="La respuesta de seguridad es obligatoria." 
                                    ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <asp:CompareValidator ID="PasswordCompare" runat="server" 
                                    ControlToCompare="Password" ControlToValidate="ConfirmPassword" 
                                    CssClass="explicacion" Display="Dynamic" 
                                    ErrorMessage="Contraseña y Confirmar contraseña deben coincidir." 
                                    ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" style="color:Red;">
                                <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                <ContentTemplate>
                    <table border="0" style="color:#800000">
                        <tr>
                            <td align="center" colspan="2">
                                Completar</td>
                        </tr>
                        <tr>
                            <td>
                                La cuenta se ha creado correctamente.</td>
                        </tr>
                        <tr>
                            <td align="right" colspan="2">
                                <asp:Button ID="ContinueButton" runat="server" CausesValidation="False" 
                                    CommandName="Continue" Text="Continuar" ValidationGroup="CreateUserWizard1" PostBackUrl="~/Seguridad/Usuarios.aspx" />
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:CompleteWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>
    </ContentTemplate>
    </asp:UpdatePanel>
    </div>
</div>
<div id="izda">
<div class="subtitular">
Roles disponibles
</div>
<asp:UpdatePanel ID="upd_RolCliente" runat="server">
<ContentTemplate>
 <asp:CheckBoxList ID="chkBoxListRoles" runat="server" DataSourceID="dsRoles" DataTextField="Nombre"
            DataValueField="Nombre" Enabled="true" ForeColor="#800000"  />
            <div class="subtitular">
            Clientes Autorizados
            </div>
              <asp:CheckBoxList ID="chkBoxListClientes" runat="server" DataSourceID="dsClientes" DataTextField="Nombre"
            DataValueField="id" Enabled="true" ForeColor="#800000" />
            </ContentTemplate>
            </asp:UpdatePanel>
</div>
    <asp:ObjectDataSource ID="dsRoles" runat="server" SelectMethod="getAllRoles" TypeName="SecurityServices.SecurityManager">
    </asp:ObjectDataSource>
       <asp:ObjectDataSource ID="dsClientes" runat="server" SelectMethod="getAllClientes" TypeName="SecurityServices.SecurityManager">
    </asp:ObjectDataSource>
</asp:Content>
