<%@ Page Language="C#" MasterPageFile="~/IGM.Master" AutoEventWireup="true" CodeBehind="createuser.aspx.cs" Inherits="WebAdmin.createuser" Title="Página sin título" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <div id="titular">
Crear nuevos Usuarios
</div>
<div style="text-align:center;">
<div style="position:relative;text-align:left;width:40%;">
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server">
        <StartNavigationTemplate>
            <asp:Button ID="StartNextButton" runat="server" CommandName="MoveNext" 
                Text="Siguiente" />
        </StartNavigationTemplate>
        <WizardSteps>
            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                <CustomNavigationTemplate>
                    <table border="0" cellspacing="5" style="width:100%;height:100%; text-align:left;">
                        <tr align="right">
                            <td align="right" colspan="0">
                                <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" 
                                    Text="Crear usuario" ValidationGroup="CreateUserWizard1" />
                            </td>
                        </tr>
                    </table>
                </CustomNavigationTemplate>
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                <ContentTemplate>
                    <table border="0">
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
                                    CommandName="Continue" Text="Continuar" ValidationGroup="CreateUserWizard1" />
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:CompleteWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>
</div>

</div>
</asp:Content>
