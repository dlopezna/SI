<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmOrden.aspx.cs" Inherits="WebAdmin.frmOrden" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Orden de Trabajo</title>
    <link href="css/StyleIGM.css" rel="stylesheet" type="text/css" />
    <link href="css/Fuentes.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" language="javascript">
    
    function closefrmIncidencia(){
        window.close();

}
    </script>

</head>
<body style="background-color:White">
    <form id="form1" runat="server" style="text-align:left;">
    <div id="titular">
    Orden de Trabajo
    </div>
   <div id="menu">
            
                        <asp:ImageButton ID="cmdFinalizar" runat="server" AlternateText="Finalizar" OnClick="cmdFinalizar_Click" 
                        OnClientClick="closefrmIncidencia()" BorderWidth="1px" BorderStyle="Ridge" ImageUrl="~/Images/Guardar.png" />
                 
                        <img id="cmdVolver" alt="Volver..." src="Images/salir-20.png" style="border: 1px; border-style: ridge"
                            onclick="closefrmIncidencia()" />

        </div>
        <div id="divIncidencia">
            <table width="100%">
                <tr>
                    <td>
                        <span class="txtLabel">Orden de trabajo: </span>
                    </td>
                    <td colspan="3">
                        <asp:Label CssClass="txtOutput" ID="lblOrden" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <span class="txtLabel">Fecha Inicio: </span>
                    </td>
                    <td>
                        <asp:Label CssClass="txtOutput" ID="lblFecha" runat="server" />
                    </td>
                    <td>
                        <span class="txtLabel">Fecha Finalización Previstas: </span>
                    </td>
                    <td>
                        <asp:Label CssClass="txtOutput" ID="lblFechaFinPrevista" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                    </td>
                </tr>
                <tr>
                    <td>
                        <span class="txtLabel">ID Motivo:</span>
                    </td>
                    <td colspan="3">
                        <asp:Label ID="lblIdMotivo" runat="server" CssClass="txtOutput" />
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <center>
                            <span class="txtLabel">Descripción</span></center>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:TextBox ID="txtDescripcion" runat="server" TextMode="MultiLine" Width="100%"
                            ReadOnly="true" Rows="5" />
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <center>
                            <span class="txtLabel">Observaciones</span></center>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:TextBox ID="txtObservaciones" runat="server" TextMode="MultiLine" Width="100%"
                            Rows="6" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
