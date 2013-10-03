<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebAdmin.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="css/StyleIGM.css" rel="stylesheet" type="text/css" />
    
    <script language="javascript"  type="text/javascript">
    function CambioColor(tipo){
    var div = document.getElementById("login");
    if(tipo=='entra')
        div.style.background='#E4E4E4';
    else
     div.style.background='#e8f4ff';
    }
    </script>
</head>
<body style="background:white;">
    <form id="form1" runat="server">
    <div id="login" style="vertical-align: middle; padding: 5px;" onmouseover="CambioColor('entra')" onmouseout="CambioColor('sal')">
     <img alt="" src="Images/usuario.gif" style="width: 11px; height: 22px; vertical-align: middle;" />
                                            <span style="vertical-align: middle;color:#94C9FF;font-weight:bold;">Iniciar sesión</span>
                                            <br />
        <center>
            <asp:Login ID="Login1" runat="server" ForeColor="#999999" BackColor="white">
                <CheckBoxStyle BorderColor="Silver" />
                <TextBoxStyle BorderColor="#94C9FF" BorderStyle="Solid" BorderWidth="1px" CssClass="txtInput" />
                <LayoutTemplate>
                    <table border="0" cellpadding="1" cellspacing="0" style="border-collapse: collapse;">
                        <tr>
                            <td>
                                <table border="0" cellpadding="0">
                                    <tr>
                                        <td align="center" colspan="2" style="text-align: left">
                                           <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="color: #999999;" valign="top">
                                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Nombre 
                                            de usuario:</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="UserName" runat="server" BorderColor="#94C9FF" BorderStyle="Solid"
                                                BorderWidth="1px" CssClass="txtInput"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                                ErrorMessage="El nombre de usuario es obligatorio." ToolTip="El nombre de usuario es obligatorio."
                                                ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="color: #999999;" valign="top">
                                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Contraseña:</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="Password" runat="server" BorderColor="#94C9FF" BorderStyle="Solid"
                                                BorderWidth="1px" CssClass="txtInput" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                                ErrorMessage="La contraseña es obligatoria." ToolTip="La contraseña es obligatoria."
                                                ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="border-color: Silver; text-align: left;">
                                            <asp:CheckBox ID="RememberMe" runat="server" Text="Recordármelo la próxima vez." />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2" style="color: Red;">
                                            <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" colspan="2">
                                            <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Inicio de sesión"
                                                ValidationGroup="Login1" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <LabelStyle ForeColor="#999999" HorizontalAlign="Left" VerticalAlign="Top" />
                <TitleTextStyle HorizontalAlign="Center" />
            </asp:Login>
        </center>
    </div>
    </form>
</body>
</html>
