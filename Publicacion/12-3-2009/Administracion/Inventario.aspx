<%@ Page Language="C#" MasterPageFile="~/IGM.Master" AutoEventWireup="true" CodeBehind="Inventario.aspx.cs"
    Inherits="WebAdmin.Inventario" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script  language="javascript" type="text/javascript">
function cambia(){
alert('cambia');

}

</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <div id="titular">
        Inventario
    </div>
    <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="upd_divMenu"
        DisplayAfter="0">
        <ProgressTemplate>
            <div id="upd_progress">
                <div style="margin-top: 25%;">
                    <img src="../Images/loading.gif" alt="cargando..." style="vertical-align: middle;
                        border: solid 1px black; filter: alpha(opacity=100);" />
                </div>
            </div>
        </ProgressTemplate>
    </asp:UpdateProgress>
    <asp:UpdateProgress ID="UpdateProgress2" runat="server" AssociatedUpdatePanelID="upd_Paneles"
        DisplayAfter="0">
        <ProgressTemplate>
            <div id="upd_progress">
                <div style="margin-top: 25%;">
                    <img src="../Images/loading.gif" alt="cargando..." style="vertical-align: middle;
                        border: solid 1px black; filter: alpha(opacity=100);" />
                </div>
            </div>
        </ProgressTemplate>
    </asp:UpdateProgress>
   
    
    <asp:UpdatePanel ID="upd_divMenu" runat="server">
        <ContentTemplate>
            <div id="menu">
                <asp:ImageButton ID="cmdNuevo" runat="server" OnClientClick="reset" AlternateText="Nuevo"
                    BorderStyle="Ridge" BorderWidth="1px" ImageUrl="~/Images/Nuevo.png" OnClick="cmdNuevo_Click" />
                &nbsp;<asp:ImageButton ID="cmdGuardar" runat="server" OnClick="UpdateComponente" OnClientClick="cambia()"
                    AlternateText="Guardar" BorderStyle="Ridge" BorderWidth="1px" ImageUrl="~/Images/Guardar.png" />
                &nbsp;<asp:ImageButton ID="cmdBorrar" runat="server" OnClick="EliminarComponente"
                    AlternateText="Eliminar" BorderStyle="Ridge" BorderWidth="1px" ImageUrl="~/Images/Basura.png" />
                &nbsp;<asp:ImageButton ID="cmdBaja" runat="server" OnClick="BajaComponente" AlternateText="Dar de Baja"
                    BorderStyle="Ridge" BorderWidth="1px" ImageUrl="~/Images/Baja.png" />
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <div id="inventario">
        <asp:Label ID="lblError" CssClass="error" runat="server" />
        <asp:UpdatePanel ID="upd_Paneles" runat="server">
            <ContentTemplate>
                <cc1:TabContainer ID="Paneles" runat="server" Width="100%">
                    <cc1:TabPanel ID="tabPlantas" runat="server" HeaderText="Plantas" Width="100%">
                        <ContentTemplate>
                            <div class="altaInventario">
                                <table>
                                    <tr>
                                        <td>
                                            <span class="txtLabel">Nº Serie:</span>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="NseriePlanta" CssClass="txtInput" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                            ControlToValidate="NseriePlanta"
                                             Display="Dynamic" Text="*" ErrorMessage="Este campo es obligatorio" 
                                            ToolTip= "Este campo es obligatorio" ValidationGroup="Plantas"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <span class="txtLabel">Descripción:</span>
                                        </td>
                                        <td colspan="3">
                                            <asp:TextBox ID="DescPlanta" TextMode="MultiLine" Rows="2" Width="350px" CssClass="txtInput"
                                                runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <span class="txtLabel">CIF:</span>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtCif" runat="server" CssClass="txtInput" />
                                        </td>
                                        <td>
                                            <span class="txtLabel">Teléfono:</span>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtTlf" runat="server" CssClass="txtInput" />
                                        </td>
                                        <td>
                                            <span class="txtLabel">Energía Total:</span>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtEtotal" runat="server" CssClass="txtInput" />
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                            ControlToValidate="txtEtotal"
                                             Display="Dynamic" Text="*" ErrorMessage="Este campo es obligatorio" 
                                            ToolTip= "Este campo es obligatorio" ValidationGroup="Plantas"></asp:RequiredFieldValidator>
                                            
                                            <asp:RangeValidator ID="rangeValidator1" runat="server"
                                            ControlToValidate="txtEtotal" Text="*" ErrorMessage="Los únicos valores permitidos son numéricos"
                                            Display="Dynamic" ToolTip="Los únicos valores permitidos son numéricos" Type="Double"
                                            MinimumValue="0" MaximumValue="999999999" ValidationGroup="Plantas" />
                                        </td>
                                    </tr>
                                    <tr>
                                </table>
                            </div>
                            <div style="width: 100%;">
                                <asp:ListView ID="lvPlantas" runat="server" DataKeyNames="Nserie" DataSourceID="dsPlantas"
                                    OnSelectedIndexChanged="LoadComponent">
                                    <ItemTemplate>
                                        <tr class="elemento">
                                            <td>
                                                <asp:LinkButton ID="lnkPlanta" runat="server" Text='<%# Eval("Nserie") %>' CommandName="Select" />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label16" runat="server" Text='<%# Eval("Descripcion") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label17" runat="server" Text='<%# Eval("Ultima_Revision","{0:d}") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label18" runat="server" Text='<%# Eval("Ultima_Incidencia","{0:d}") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label22" runat="server" Text='<%# Eval("E_total") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label21" runat="server" Text='<%# Eval("Telefono") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label23" runat="server" Text='<%# Eval("Cif") %>' />
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                    <AlternatingItemTemplate>
                                        <tr class="alterno">
                                            <td>
                                                <asp:LinkButton ID="lnkPlanta" runat="server" Text='<%# Eval("Nserie") %>' CommandName="Select" />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label16" runat="server" Text='<%# Eval("Descripcion") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label17" runat="server" Text='<%# Eval("Ultima_Revision","{0:d}") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label18" runat="server" Text='<%# Eval("Ultima_Incidencia","{0:d}") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label22" runat="server" Text='<%# Eval("E_total") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label21" runat="server" Text='<%# Eval("Telefono") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label23" runat="server" Text='<%# Eval("Cif") %>' />
                                            </td>
                                        </tr>
                                    </AlternatingItemTemplate>
                                    <EmptyDataTemplate>
                                        <center>
                                            <table id="Table9" runat="server" style="width: 100%">
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
                                        <table id="Table2" runat="server" width="100%">
                                            <tr id="Tr1" runat="server">
                                                <td id="Td1" runat="server">
                                                    <table id="itemPlaceholderContainer" runat="server" border="0" width="100%" cellspacing="0"
                                                        cellpadding="0">
                                                        <tr id="Tr2" runat="server" class="listview-head">
                                                            <th id="Th2" runat="server">
                                                                Número Serie
                                                            </th>
                                                            <th id="Th4" runat="server">
                                                                Descripción
                                                            </th>
                                                            <th id="Th5" runat="server">
                                                                Última Revisión
                                                            </th>
                                                            <th id="Th6" runat="server">
                                                                Última Incidencia
                                                            </th>
                                                            <th id="Th1" runat="server">
                                                                Energía Total
                                                            </th>
                                                            <th id="Th3" runat="server">
                                                                Teléfono
                                                            </th>
                                                            <th id="Th7" runat="server">
                                                                CIF
                                                            </th>
                                                        </tr>
                                                        <tr id="itemPlaceholder" runat="server">
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr id="Tr3" runat="server">
                                                <td id="Td2" runat="server" style="">
                                                    <asp:DataPager ID="DataPager1" runat="server" PageSize="15">
                                                        <Fields>
                                                            <asp:NextPreviousPagerField ButtonType="Image" PreviousPageImageUrl="~/Images/anterior.gif"
                                                                NextPageImageUrl="~/Images/siguiente.gif" />
                                                        </Fields>
                                                    </asp:DataPager>
                                                </td>
                                            </tr>
                                        </table>
                                    </LayoutTemplate>
                                    <SelectedItemTemplate>
                                        <tr class="seleccion">
                                            <td>
                                                <asp:LinkButton ID="lnkPlanta" runat="server" Text='<%# Eval("Nserie") %>' CommandName="Select" />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label16" runat="server" Text='<%# Eval("Descripcion") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label17" runat="server" Text='<%# Eval("Ultima_Revision","{0:d}") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label18" runat="server" Text='<%# Eval("Ultima_Incidencia","{0:d}") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label22" runat="server" Text='<%# Eval("E_total") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label21" runat="server" Text='<%# Eval("Telefono") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label23" runat="server" Text='<%# Eval("Cif") %>' />
                                            </td>
                                        </tr>
                                    </SelectedItemTemplate>
                                </asp:ListView>
                            </div>
                        </ContentTemplate>
                    </cc1:TabPanel>
                    <cc1:TabPanel ID="tabInversores" runat="server" HeaderText="Inversores" Width="100%">
                        <ContentTemplate>
                            <div id="divAltaInventario" class="altaInventario">
                                <asp:Label ID="lblNSerie" runat="server" Text="Nº Serie:" CssClass="txtLabel"></asp:Label>
                                <asp:TextBox ID="txtNSerieInversor" CssClass="txtInput" runat="server"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                            ControlToValidate="txtNSerieInversor"
                                             Display="Dynamic" Text="*" ErrorMessage="Este campo es obligatorio" 
                                            ToolTip= "Este campo es obligatorio" ValidationGroup="Inversores"></asp:RequiredFieldValidator>
                                <asp:Label ID="lblPotencia" runat="server" Text="Potencia:" CssClass="txtLabel"></asp:Label>                                
                                <asp:TextBox ID="txtPotencia" CssClass="txtInput" runat="server"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                            ControlToValidate="txtPotencia"
                                             Display="Dynamic" Text="*" ErrorMessage="Este campo es obligatorio" 
                                            ToolTip= "Este campo es obligatorio" ValidationGroup="Inversores"></asp:RequiredFieldValidator>
                                            
                                            <asp:RangeValidator ID="rangeValidator2" runat="server"
                                            ControlToValidate="txtPotencia" Text="*" ErrorMessage="Los únicos valores permitidos son numéricos"
                                            Display="Dynamic" ToolTip="Los únicos valores permitidos son numéricos" Type="Double"
                                            MinimumValue="0" MaximumValue="999999999" ValidationGroup="Inversores" />
                                <asp:Label ID="lblPlanta" runat="server" Text="Planta:" CssClass="txtLabel"></asp:Label>
                                <asp:DropDownList ID="cbPlantas" runat="server" DataSourceID="dsPlantas" DataTextField="NSerie"
                                    DataValueField="NSerie" />
                                <br />
                                <asp:Label ID="lblEnlaceSunny" runat="server" CssClass="txtLabel" Text="Enlace Sunny:" /><asp:TextBox
                                    ID="txtEnlaceSunny" runat="server" Width="600px" CssClass="txtInput" />
                            </div>
                            <div>
                                <asp:ListView ID="lvInversores" runat="server" DataKeyNames="Nserie" DataSourceID="dsInversores"
                                    OnSelectedIndexChanged="LoadComponent">
                                    <ItemTemplate>
                                        <tr class="elemento">
                                            <td>
                                                <asp:LinkButton ID="lnkInversor" runat="server" Text='<%# Eval("Nserie") %>' CommandName="Select" />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label16" runat="server" Text='<%# Eval("Potencia") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label17" runat="server" Text='<%# Eval("Ultima_Revision","{0:d}") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label18" runat="server" Text='<%# Eval("Ultima_Incidencia","{0:d}") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label24" runat="server" Text='<%# Eval("ComponentePadre") %>' />
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                    <AlternatingItemTemplate>
                                        <tr class="alterno">
                                            <td>
                                                <asp:LinkButton ID="lnkInversor" runat="server" Text='<%# Eval("Nserie") %>' CommandName="Select" />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label16" runat="server" Text='<%# Eval("Potencia") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label17" runat="server" Text='<%# Eval("Ultima_Revision","{0:d}") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label18" runat="server" Text='<%# Eval("Ultima_Incidencia","{0:d}") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label24" runat="server" Text='<%# Eval("ComponentePadre") %>' />
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
                                        <table id="Table2" runat="server" width="100%">
                                            <tr id="Tr1" runat="server">
                                                <td id="Td1" runat="server">
                                                    <table id="itemPlaceholderContainer" runat="server" border="0" style="" width="100%"
                                                        cellspacing="0" cellpadding="0">
                                                        <tr id="Tr2" runat="server" class="listview-head">
                                                            <th id="Th2" runat="server">
                                                                Número Serie
                                                            </th>
                                                            <th id="Th4" runat="server">
                                                                Potencia
                                                            </th>
                                                            <th id="Th5" runat="server">
                                                                Última Revisión
                                                            </th>
                                                            <th id="Th6" runat="server">
                                                                Última Incidencia
                                                            </th>
                                                            <th id="Th8" runat="server">
                                                                Planta
                                                            </th>
                                                        </tr>
                                                        <tr id="itemPlaceholder" runat="server">
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr id="Tr3" runat="server">
                                                <td id="Td2" runat="server" style="">
                                                    <asp:DataPager ID="DataPager1" runat="server" PageSize="15">
                                                        <Fields>
                                                            <asp:NextPreviousPagerField ButtonType="Image" PreviousPageImageUrl="~/Images/anterior.gif"
                                                                NextPageImageUrl="~/Images/siguiente.gif" />
                                                        </Fields>
                                                    </asp:DataPager>
                                                </td>
                                            </tr>
                                        </table>
                                    </LayoutTemplate>
                                    <SelectedItemTemplate>
                                        <tr class="seleccion">
                                            <td>
                                                <asp:LinkButton ID="lnkInversor" runat="server" Text='<%# Eval("Nserie") %>' CommandName="Select" />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label16" runat="server" Text='<%# Eval("Potencia") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label17" runat="server" Text='<%# Eval("Ultima_Revision","{0:d}") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label18" runat="server" Text='<%# Eval("Ultima_Incidencia","{0:d}") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label24" runat="server" Text='<%# Eval("ComponentePadre") %>' />
                                            </td>
                                        </tr>
                                    </SelectedItemTemplate>
                                </asp:ListView>
                            </div>
                        </ContentTemplate>
                    </cc1:TabPanel>
                    <cc1:TabPanel ID="tabStrings" runat="server" HeaderText="Strings" Width="100%">
                        <ContentTemplate>
                            <div class="altaInventario">
                                <table>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label3" runat="server" Text="Nº Serie:" CssClass="txtLabel"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="NserieString" CssClass="txtInput" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                            ControlToValidate="NserieString"
                                             Display="Dynamic" Text="*" ErrorMessage="Este campo es obligatorio" 
                                            ToolTip= "Este campo es obligatorio" ValidationGroup="Strings"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label4" runat="server" Text="Descripción:" CssClass="txtLabel"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="DescString" CssClass="txtInput" runat="server" TextMode="MultiLine"
                                                Columns="50" Rows="3"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label9" runat="server" Text="Inversor Asociado:" CssClass="txtLabel"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="cbInversores" runat="server" DataSourceID="dsInversores" DataTextField="NSerie"
                                                DataValueField="NSerie" />
                                        </td>
                                        <td>
                                            <asp:Label ID="lblCanales" runat="server" Text="Canales:" CssClass="txtLabel" /><br />
                                        </td>
                                        <td>
                                            <asp:CheckBox ID="canal1" runat="server" />
                                            <asp:CheckBox ID="canal2" runat="server" />
                                            <asp:CheckBox ID="canal3" runat="server" />
                                            <asp:CheckBox ID="canal4" runat="server" />
                                            <asp:CheckBox ID="canal5" runat="server" />
                                            <asp:CheckBox ID="canal6" runat="server" />
                                            <asp:CheckBox ID="canal7" runat="server" />
                                            <asp:CheckBox ID="canal8" runat="server" /><br />
                                            <asp:CheckBox ID="canal9" runat="server" />
                                            <asp:CheckBox ID="canal10" runat="server" />
                                            <asp:CheckBox ID="canal11" runat="server" />
                                            <asp:CheckBox ID="canal12" runat="server" />
                                            <asp:CheckBox ID="canal13" runat="server" />
                                            <asp:CheckBox ID="canal14" runat="server" />
                                            <asp:CheckBox ID="canal15" runat="server" />
                                            <asp:CheckBox ID="canal16" runat="server" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div>
                                <asp:ListView ID="lvStrings" runat="server" DataKeyNames="Nserie" DataSourceID="dsStrings"
                                    OnSelectedIndexChanged="LoadComponent">
                                    <ItemTemplate>
                                        <tr class="elemento">
                                            <td>
                                                <asp:LinkButton ID="lnkString" runat="server" Text='<%# Eval("Nserie") %>' CommandName="Select" />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblDesc" runat="server" Text='<%# Eval("Descripcion") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblultimaR" runat="server" Text='<%# Eval("Ultima_Revision","{0:d}") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblultimaI" runat="server" Text='<%# Eval("Ultima_Incidencia","{0:d}") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label19" runat="server" Text='<%# Eval("ComponentePadre") %>' />
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                    <AlternatingItemTemplate>
                                        <tr class="alterno">
                                            <td>
                                                <asp:LinkButton ID="lnkString" runat="server" Text='<%# Eval("Nserie") %>' CommandName="Select" />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblDesc" runat="server" Text='<%# Eval("Descripcion") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblultimaR" runat="server" Text='<%# Eval("Ultima_Revision","{0:d}") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblultimaI" runat="server" Text='<%# Eval("Ultima_Incidencia","{0:d}") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label19" runat="server" Text='<%# Eval("ComponentePadre") %>' />
                                            </td>
                                        </tr>
                                    </AlternatingItemTemplate>
                                    <EmptyDataTemplate>
                                        <center>
                                            <table id="Table3" runat="server" style="width: 100%">
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
                                        <table id="Table4" runat="server" width="100%">
                                            <tr id="Tr4" runat="server">
                                                <td id="Td3" runat="server">
                                                    <table id="itemPlaceholderContainer" runat="server" border="0" style="" width="100%"
                                                        cellspacing="0" cellpadding="0">
                                                        <tr id="Tr5" runat="server" class="listview-head">
                                                            <th id="Th9" runat="server">
                                                                Número Serie
                                                            </th>
                                                            <th id="Th10" runat="server">
                                                                Descripción
                                                            </th>
                                                            <th id="Th13" runat="server">
                                                                Última Incidencia
                                                            </th>
                                                            <th id="Th14" runat="server">
                                                                Última Revision
                                                            </th>
                                                            <th id="Th15" runat="server">
                                                                Inversor
                                                            </th>
                                                        </tr>
                                                        <tr id="itemPlaceholder" runat="server">
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr id="Tr6" runat="server">
                                                <td id="Td4" runat="server" style="">
                                                    <asp:DataPager ID="DataPager1" runat="server" PageSize="15">
                                                        <Fields>
                                                            <asp:NextPreviousPagerField ButtonType="Image" PreviousPageImageUrl="~/Images/anterior.gif"
                                                                NextPageImageUrl="~/Images/siguiente.gif" />
                                                        </Fields>
                                                    </asp:DataPager>
                                                </td>
                                            </tr>
                                        </table>
                                    </LayoutTemplate>
                                    <SelectedItemTemplate>
                                        <tr class="seleccion">
                                            <td>
                                                <asp:LinkButton ID="lnkString" runat="server" Text='<%# Eval("Nserie") %>' CommandName="Select" />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblDesc" runat="server" Text='<%# Eval("Descripcion") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblultimaR" runat="server" Text='<%# Eval("Ultima_Revision","{0:d}") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblultimaI" runat="server" Text='<%# Eval("Ultima_Incidencia","{0:d}") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label19" runat="server" Text='<%# Eval("ComponentePadre") %>' />
                                            </td>
                                        </tr>
                                    </SelectedItemTemplate>
                                </asp:ListView>
                            </div>
                        </ContentTemplate>
                    </cc1:TabPanel>
                    <cc1:TabPanel ID="tabSeguidores" runat="server" HeaderText="Seguidores">
                        <ContentTemplate>
                            <div class="altaInventario">
                                <asp:Label ID="Label5" runat="server" Text="Nº Serie:" CssClass="txtLabel"></asp:Label>
                                <asp:TextBox ID="NserieSeguidor" CssClass="txtInput" runat="server"></asp:TextBox><br />
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                            ControlToValidate="NserieSeguidor"
                                             Display="Dynamic" Text="*" ErrorMessage="Este campo es obligatorio" 
                                            ToolTip= "Este campo es obligatorio" ValidationGroup="Seguidores"></asp:RequiredFieldValidator>
                                <asp:Label ID="Label6" runat="server" Text="Descripción:" CssClass="txtLabel"></asp:Label><br />
                                <asp:TextBox ID="DescSeguidor" CssClass="txtInput" runat="server" TextMode="MultiLine"
                                    Columns="50" Rows="3"></asp:TextBox>
                                <asp:Label ID="Label10" runat="server" Text="String Asociado:" CssClass="txtLabel"></asp:Label>
                                <asp:DropDownList ID="cbStrings" runat="server" DataSourceID="dsStrings" DataTextField="NSerie"
                                    DataValueField="NSerie" />
                            </div>
                            <div>
                                <asp:ListView ID="lvSeguidores" runat="server" DataKeyNames="nSerie" DataSourceID="dsSeguidores"
                                    OnSelectedIndexChanged="LoadComponent">
                                    <ItemTemplate>
                                        <tr class="elemento">
                                            <td>
                                                <asp:LinkButton ID="lnkSeguidor" runat="server" Text='<%# Eval("NSerie") %>' CommandName="Select" />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblDesc" runat="server" Text='<%# Eval("Descripcion") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblUltimaR" runat="server" Text='<%# Eval("Ultima_Revision","{0:d}") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblUltimaI" runat="server" Text='<%# Eval("Ultima_Incidencia","{0:d}") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblString" runat="server" Text='<%# Eval("ComponentePadre") %>' />
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                    <AlternatingItemTemplate>
                                        <tr class="alterno">
                                            <td>
                                                <asp:LinkButton ID="lnkSeguidor" runat="server" Text='<%# Eval("NSerie") %>' CommandName="Select" />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblDesc" runat="server" Text='<%# Eval("Descripcion") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblUltimaR" runat="server" Text='<%# Eval("Ultima_Revision","{0:d}") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblUltimaI" runat="server" Text='<%# Eval("Ultima_Incidencia","{0:d}") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblString" runat="server" Text='<%# Eval("ComponentePadre") %>' />
                                            </td>
                                        </tr>
                                    </AlternatingItemTemplate>
                                    <EmptyDataTemplate>
                                        <center>
                                            <table id="Table5" runat="server" style="width: 100%">
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
                                        <table id="Table6" runat="server" width="100%">
                                            <tr id="Tr7" runat="server">
                                                <td id="Td5" runat="server">
                                                    <table id="itemPlaceholderContainer" runat="server" border="0" width="100%" cellspacing="0"
                                                        cellpadding="0">
                                                        <tr id="Tr8" runat="server" class="listview-head">
                                                            <th id="Th17" runat="server">
                                                                Número Serie
                                                            </th>
                                                            <th id="Th18" runat="server">
                                                                Descripción
                                                            </th>
                                                            <th id="Th21" runat="server">
                                                                Última Revisión
                                                            </th>
                                                            <th id="Th22" runat="server">
                                                                Última Incidencia
                                                            </th>
                                                            <th id="Th23" runat="server">
                                                                String
                                                            </th>
                                                        </tr>
                                                        <tr id="itemPlaceholder" runat="server">
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr id="Tr9" runat="server">
                                                <td id="Td6" runat="server" style="">
                                                    <asp:DataPager ID="DataPager1" runat="server" PageSize="15">
                                                        <Fields>
                                                            <asp:NextPreviousPagerField ButtonType="Image" PreviousPageImageUrl="~/Images/anterior.gif"
                                                                NextPageImageUrl="~/Images/siguiente.gif" />
                                                        </Fields>
                                                    </asp:DataPager>
                                                </td>
                                            </tr>
                                        </table>
                                    </LayoutTemplate>
                                    <SelectedItemTemplate>
                                        <tr class="seleccion">
                                            <td>
                                                <asp:LinkButton ID="lnkSeguidor" runat="server" Text='<%# Eval("NSerie") %>' CommandName="Select" />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblDesc" runat="server" Text='<%# Eval("Descripcion") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblUltimaR" runat="server" Text='<%# Eval("Ultima_Revision","{0:d}") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblUltimaI" runat="server" Text='<%# Eval("Ultima_Incidencia","{0:d}") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblString" runat="server" Text='<%# Eval("ComponentePadre") %>' />
                                            </td>
                                        </tr>
                                    </SelectedItemTemplate>
                                </asp:ListView>
                            </div>
                        </ContentTemplate>
                    </cc1:TabPanel>
                    <cc1:TabPanel ID="tabPaneles" runat="server" HeaderText="Paneles">
                        <ContentTemplate>
                            <div class="altaInventario">
                                <asp:Label ID="Label7" runat="server" Text="Nº Serie:" CssClass="txtLabel"></asp:Label>
                                <asp:TextBox ID="NseriePanel" CssClass="txtInput" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                            ControlToValidate="NseriePanel"
                                             Display="Dynamic" Text="*" ErrorMessage="Este campo es obligatorio" 
                                            ToolTip= "Este campo es obligatorio" ValidationGroup="Paneles"></asp:RequiredFieldValidator>
                                <asp:Label ID="Label13" runat="server" Text="Pmax:" CssClass="txtLabel"></asp:Label>
                                <asp:TextBox ID="txtPmax" CssClass="txtInput" Width="50px" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                            ControlToValidate="txtPmax"
                                             Display="Dynamic" Text="*" ErrorMessage="Este campo es obligatorio" 
                                            ToolTip= "Este campo es obligatorio" ValidationGroup="Paneles"></asp:RequiredFieldValidator>
                                            
                                            <asp:RangeValidator ID="rangeValidator4" runat="server"
                                            ControlToValidate="txtPmax" Text="*" ErrorMessage="Los únicos valores permitidos son numéricos"
                                            Display="Dynamic" ToolTip="Los únicos valores permitidos son numéricos" Type="Double"
                                            MinimumValue="0" MaximumValue="999" ValidationGroup="Paneles" />
                                <asp:Label ID="Label14" runat="server" Text="Ipm:" CssClass="txtLabel"></asp:Label>
                                <asp:TextBox ID="txtIpm" CssClass="txtInput" Width="50px" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                            ControlToValidate="txtIpm"
                                             Display="Dynamic" Text="*" ErrorMessage="Este campo es obligatorio" 
                                            ToolTip= "Este campo es obligatorio" ValidationGroup="Paneles"></asp:RequiredFieldValidator>
                                            
                                            <asp:RangeValidator ID="rangeValidator3" runat="server"
                                            ControlToValidate="txtIpm" Text="*" ErrorMessage="Los únicos valores permitidos son numéricos"
                                            Display="Dynamic" ToolTip="Los únicos valores permitidos son numéricos" Type="Double"
                                            MinimumValue="0" MaximumValue="999" ValidationGroup="Paneles" />
                                <asp:Label ID="Label15" runat="server" Text="Tensión:" CssClass="txtLabel"></asp:Label>
                                <asp:TextBox ID="txtTension" ReadOnly="true" Width="50px" CssClass="txtInput" runat="server"></asp:TextBox><br />
                                <asp:Label ID="Label8" runat="server" Text="Descripción:" CssClass="txtLabel"></asp:Label><br />
                                <asp:TextBox ID="DescPanel" CssClass="txtInput" runat="server" TextMode="MultiLine"
                                    Columns="50" Rows="3"></asp:TextBox>
                                <asp:Label ID="Label11" runat="server" Text="Seguidor Asociado:" CssClass="txtLabel"></asp:Label>
                                <asp:DropDownList ID="cbSeguidores" runat="server" DataSourceID="dsSeguidores" DataTextField="NSerie"
                                    DataValueField="NSerie" />
                            </div>
                            <div>
                                <asp:ListView ID="lvPaneles" runat="server" DataKeyNames="Nserie" DataSourceID="dsPaneles"
                                    OnSelectedIndexChanged="LoadComponent">
                                    <ItemTemplate>
                                        <tr class="elemento">
                                            <td>
                                                <asp:LinkButton ID="lnkPanel" runat="server" Text='<%# Eval("Nserie") %>' CommandName="Select" />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblDesc" runat="server" Text='<%# Eval("Descripcion") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblpmax" runat="server" Text='<%# Eval("Pmax") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblipm" runat="server" Text='<%# Eval("Ipm") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblultimaR" runat="server" Text='<%# Eval("Ultima_Revision","{0:d}") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblUltimaI" runat="server" Text='<%# Eval("Ultima_Incidencia","{0:d}") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblSeguidor" runat="server" Text='<%# Eval("ComponentePadre") %>' />
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                    <AlternatingItemTemplate>
                                        <tr class="alterno">
                                            <td>
                                                <asp:LinkButton ID="lnkPanel" runat="server" Text='<%# Eval("Nserie") %>' CommandName="Select" />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblDesc" runat="server" Text='<%# Eval("Descripcion") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblpmax" runat="server" Text='<%# Eval("Pmax") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblipm" runat="server" Text='<%# Eval("Ipm") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblultimaR" runat="server" Text='<%# Eval("Ultima_Revision","{0:d}") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblUltimaI" runat="server" Text='<%# Eval("Ultima_Incidencia","{0:d}") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblSeguidor" runat="server" Text='<%# Eval("ComponentePadre") %>' />
                                            </td>
                                        </tr>
                                    </AlternatingItemTemplate>
                                    <EmptyDataTemplate>
                                        <center>
                                            <table id="Table7" runat="server" style="width: 100%">
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
                                        <table id="Table8" runat="server" width="100%">
                                            <tr id="Tr10" runat="server">
                                                <td id="Td7" runat="server">
                                                    <table id="itemPlaceholderContainer" runat="server" border="0" width="100%" cellspacing="0"
                                                        cellpadding="0">
                                                        <tr id="Tr11" runat="server" class="listview-head">
                                                            <th id="Th25" runat="server">
                                                                Número Serie
                                                            </th>
                                                            <th id="Th26" runat="server">
                                                                Descripción
                                                            </th>
                                                            <th id="Th27" runat="server">
                                                                Pmax
                                                            </th>
                                                            <th id="Th28" runat="server">
                                                                Ipm
                                                            </th>
                                                            <th id="Th31" runat="server">
                                                                Última Revision
                                                            </th>
                                                            <th id="Th32" runat="server">
                                                                Última Incidencia
                                                            </th>
                                                            <th id="Th33" runat="server">
                                                                Seguidor
                                                            </th>
                                                        </tr>
                                                        <tr id="itemPlaceholder" runat="server">
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr id="Tr12" runat="server">
                                                <td id="Td8" runat="server" style="">
                                                    <asp:DataPager ID="DataPager1" runat="server" PageSize="15">
                                                        <Fields>
                                                            <asp:NextPreviousPagerField ButtonType="Image" PreviousPageImageUrl="~/Images/anterior.gif"
                                                                NextPageImageUrl="~/Images/siguiente.gif" />
                                                        </Fields>
                                                    </asp:DataPager>
                                                </td>
                                            </tr>
                                        </table>
                                    </LayoutTemplate>
                                    <SelectedItemTemplate>
                                        <tr class="seleccion">
                                            <td>
                                                <asp:LinkButton ID="lnkPanel" runat="server" Text='<%# Eval("Nserie") %>' CommandName="Select" />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblDesc" runat="server" Text='<%# Eval("Descripcion") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblpmax" runat="server" Text='<%# Eval("Pmax") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblipm" runat="server" Text='<%# Eval("Ipm") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblultimaR" runat="server" Text='<%# Eval("Ultima_Revision","{0:d}") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblUltimaI" runat="server" Text='<%# Eval("Ultima_Incidencia","{0:d}") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblSeguidor" runat="server" Text='<%# Eval("ComponentePadre") %>' />
                                            </td>
                                        </tr>
                                    </SelectedItemTemplate>
                                </asp:ListView>
                            </div>
                        </ContentTemplate>
                    </cc1:TabPanel>
                   <%-- <cc1:TabPanel ID="tabConfiguracion" runat="server" HeaderText="Ver Configuración">
                        <ContentTemplate>
                            <asp:Label ID="Label12" runat="server" Text="Seleccione un Inversor:" CssClass="subtitulos"></asp:Label>
                            <asp:DropDownList ID="selInversores" runat="server" DataSourceID="dsInversores" DataTextField="Nserie"
                                DataValueField="Nserie">
                            </asp:DropDownList>
                        </ContentTemplate>
                    </cc1:TabPanel>--%>
                </cc1:TabContainer>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <asp:ObjectDataSource ID="dsSeguidores" runat="server" SelectMethod="getComponentes"
        TypeName="LOBIncidencias.Seguidor" />
    <asp:ObjectDataSource ID="dsInversores" runat="server" SelectMethod="getComponentes"
        TypeName="LOBIncidencias.Inversor" />
    <asp:ObjectDataSource ID="dsStrings" runat="server" SelectMethod="getComponentes"
        TypeName="LOBIncidencias.String" />
    <asp:ObjectDataSource ID="dsPlantas" runat="server" SelectMethod="getComponentes"
        TypeName="LOBIncidencias.Planta" />
    <asp:ObjectDataSource ID="dsPaneles" runat="server" SelectMethod="getComponentes"
        TypeName="LOBIncidencias.Panel" />
</asp:Content>
