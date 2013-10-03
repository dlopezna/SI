<%@ Page Language="C#" MasterPageFile="~/IGM.Master" AutoEventWireup="true" CodeBehind="EstadoActual.aspx.cs" Inherits="WebAdmin.EstadoActual" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
  <div id="titular">
    Estado Actual
    </div>
    <div id="centro">
    <div id="menu">
    Seleccione un inversor: 
    <asp:DropDownList id="cbInversores" runat="server" AutoPostBack="True" DataSourceID="dsInversores"
     DataTextField="NSerie" DataValueField="EnlaceSunny" 
            onselectedindexchanged="FiltrarInversor" />
    
    </div>
    <iframe id="ifsunnyPortal" title="Estado de las Plantas" frameborder="0" runat="server" scrolling="yes" width="100%" height="450px" src="http://www.sunnyportal.com/PublicPage.aspx?page=ced58d3b-ec55-48f7-afc1-231b888d6eb1">
    </iframe>
    </div>
    <asp:ObjectDataSource ID="dsInversores" runat="server" 
        SelectMethod="getComponentes" TypeName="LOBIncidencias.Inversor" />
</asp:Content>
