<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmIncidencia.aspx.cs"
    EnableEventValidation="false" Inherits="WebAdmin.frmIncidencia" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Formulario de Incidencias</title>

    <script type="text/javascript" language="javascript">
    
    function closefrmIncidencia(){
        window.close();

}
    </script>

    <link href="css/StyleIGM.css" rel="stylesheet" type="text/css" />
    <link href="css/Fuentes.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div id="titular">
    Incidencia
    </div>
    <div id="menu">
        <table>
            <tr>
                <td>
                    <asp:ImageButton ID="cmdGuardarIncidencia" runat="server" AlternateText="Guardar"
                        BorderWidth="1px" BorderStyle="Ridge" ImageUrl="~/Images/Guardar.png" OnClick="AltaIncidencia"
                        OnClientClick="closefrmIncidencia()" />
                </td>
                <td>
                    &nbsp;
                </td>
                <td>
                    <img id="cmdVolver" alt="Volver..." src="Images/volver.png" style="border: 1px; border-style: ridge"
                        onclick="closefrmIncidencia()" />
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
    </div>
    <div id="divIncidencia" style="display: block">
        <table>
        <tr>
        <td colspan="3"><span class="txtLabel">Nº Serie: </span></td>
        <td><asp:Label ID="lblplanta" CssClass="txtLabel" runat="server" /></td>
        </tr>
            <tr>
                <td colspan="3">
                    <span class="txtLabel">Fecha:</span>
                </td>
                <td>
                    <asp:TextBox ID="txtFecha" runat="server" CssClass="txtInput" Style="vertical-align: middle;"></asp:TextBox>
                    <asp:Image ID="imgCalendar" runat="server" AlternateText="Calendar" ImageUrl="~/Images/calendar7.png"
                        Style="vertical-align: middle;" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <span class="txtLabel">Tipo Componente: </span>
                </td>
                <td>
                    <asp:DropDownList ID="cbTipoComponentes" runat="server">
                        <asp:ListItem Text="Panta" Value="Planta" Selected="True" />
                        <asp:ListItem Text="Inversor" Value="Inversor" />
                        <asp:ListItem Text="String" Value="String" />
                        <asp:ListItem Text="Seguidor" Value="Seguidor" />
                        <asp:ListItem Text="Panel" Value="Panel" />
                    </asp:DropDownList>
                    <asp:DropDownList ID="cbComponentes" runat="server" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <span class="txtLabel">Tipo de Incidencia:</span>
                </td>
                <td>
                    <asp:DropDownList ID="cbIncidencias" runat="server" />
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <span class="txtLabel">Comentarios:</span>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:TextBox runat="server" ID="txtComentarios" TextMode="MultiLine" Columns="50"
                        Height="100px" />
                </td>
            </tr>
        </table>
        <cc1:CascadingDropDown ID="cbTipoComponentes_CascadingDropDown" runat="server" Category="Componentes"
            PromptText="Selecciona un Componente" LoadingText="[Cargando Componentes...]"
            ServicePath="WSIncidencias.asmx" ServiceMethod="getComponentesByTipo" ParentControlID="cbTipoComponentes"
            TargetControlID="cbComponentes" SelectedValue="SomeValue" UseContextKey="True" />
        <cc1:CalendarExtender ID="txtFecha_CalendarExtender" runat="server" Enabled="True"
            TargetControlID="txtFecha" Format="dd/MM/yyyy" PopupButtonID="imgCalendar">
        </cc1:CalendarExtender>
        <cc1:CascadingDropDown ID="CascadingDropDown1" runat="server" Category="Incidencias"
            PromptText="Selecciona una Incidencia" LoadingText="[Cargando Incidencias...]"
            ServicePath="WSIncidencias.asmx" ServiceMethod="getIncidenciasByGrupo" ParentControlID="cbTipoComponentes"
            TargetControlID="cbIncidencias" SelectedValue="SomeValue" UseContextKey="True" />
    </div>
    </form>
</body>
</html>
