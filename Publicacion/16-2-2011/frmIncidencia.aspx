<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/IGM.Master" CodeBehind="frmIncidencia.aspx.cs"
    EnableEventValidation="false" Inherits="WebAdmin.frmIncidencia" %>

<asp:Content ID="contentTitle" runat="server" ContentPlaceHolderID="title">
    Alta Incidencia
</asp:Content>
<asp:Content ID="content1" runat="server" ContentPlaceHolderID="head">
    <!--<link href="css/StyleIGM.css" rel="stylesheet" type="text/css" />
    <link href="css/Fuentes.css" rel="stylesheet" type="text/css" />-->

    <script type="text/javascript">
        $(document).ready(function() {
            $(".txtFecha").datepicker({
                showOn: "button",
                buttonImage: "/images/calendar7.png",
                buttonImageOnly: true
            });
        });
    
    
    
    
    </script>
</asp:Content>
<asp:Content ID="content2" runat="server" ContentPlaceHolderID="cphMain">
    <div id="titular">
        Incidencia
    </div>
    <div class="menu">
        <asp:Button ID="cmdSave" runat="server" Text="Guardar" 
            onclick="cmdSave_Click" />
        <asp:Button ID="cmdCancel" runat="server" Text="Cancelar" />    
    </div>
    <div id="divIncidencia" style="display: block">
        <form id="frmAddNewIncidencia" method="post" action="" style="text-align: left;">
        <span class="txtLabel">Fecha:</span><asp:TextBox ID="txtFecha" runat="server" class="txtFecha"
            Style="vertical-align: middle;"></asp:TextBox>
        <br />
        <br />
        <span class="txtLabel">Tipo Incidencia: </span>
        <br />
        <asp:DropDownList ID="cbTipoComponentes" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1"
            DataTextField="Nombre" DataValueField="ID" Width="300px">
            <asp:ListItem Text="Panta" Value="Planta" Selected="True" />
            <asp:ListItem Text="Inversor" Value="Inversor" />
            <asp:ListItem Text="String" Value="String" />
            <asp:ListItem Text="Seguidor" Value="Seguidor" />
            <asp:ListItem Text="Panel" Value="Panel" />
        </asp:DropDownList>
        <br />
        <br />
        <span class="txtLabel">Subtipo Incidencia:</span><br />
        <asp:DropDownList ID="cbTipoIncidencia" runat="server" DataSourceID="SqlDataSource2"
            Width="300px" DataTextField="Definicion" DataValueField="ID" />
        <br />
        <br />
        <span class="txtLabel">Observaciones:</span><br />
        <asp:TextBox runat="server" ID="txtComentarios" TextMode="MultiLine" Width="100%"
            Height="100px" />
        </form>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IGMIncidenciasConnectionString %>"
        SelectCommand="SELECT [ID], [Nombre], [Descripcion] FROM [GrupoIncidencias] ORDER BY [Nombre]">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IGMIncidenciasConnectionString %>"
        SelectCommand="SELECT [ID], [Definicion], [idGrupo] FROM [ClasificacionIncidencias] WHERE ([idGrupo] = @idGrupo)">
        <SelectParameters>
            <asp:ControlParameter ControlID="cbTipoComponentes" Name="idGrupo" PropertyName="SelectedValue"
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
