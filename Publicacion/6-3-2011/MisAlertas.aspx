<%@ Page Language="C#" MasterPageFile="~/IGM.Master" AutoEventWireup="true" CodeBehind="MisAlertas.aspx.cs"
    Inherits="WebAdmin.Administracion.MisAlertas" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <asp:UpdateProgress ID="updP" runat="server" AssociatedUpdatePanelID="upd_Envio"
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
        Mis Alertas
    </div>
    <div id="menu">
        <asp:UpdatePanel ID="upd_Envio" runat="server">
            <ContentTemplate>
                <div>
                    <span class="txtLabel">Alerta:</span>
                    <asp:DropDownList ID="cbAlertas" runat="server" DataSourceID="dsAlertas" DataTextField="Descripcion"
                        DataValueField="idAlerta" />
                </div>
                <div>
                    <asp:RadioButton ID="rbInmediato" runat="server" Checked="True" GroupName="Envio"
                        Text="Inmediato" OnCheckedChanged="rbInmediato_CheckedChanged" AutoPostBack="true"
                        Font-Size="Small" />
                    <asp:RadioButton ID="rbDiario" runat="server" GroupName="Envio" Text="Resumen Diario"
                        OnCheckedChanged="rbDiario_CheckedChanged" AutoPostBack="true" Font-Size="Small" />
                    <asp:RadioButton ID="rbSemanal" runat="server" GroupName="Envio" Text="Semanal" OnCheckedChanged="rbSemanal_CheckedChanged"
                        AutoPostBack="true" Font-Size="Small" />
                    <span class="txtLabel">Hora:</span>
                    <asp:TextBox ID="txtHora" runat="server" Enabled="false" Width="20px" Text="00" Font-Size="Small" />:
                    <asp:TextBox ID="txtMinutos" runat="server" Enabled="false" Width="20px" Text="00"
                        Font-Size="Small" />
                    <asp:RangeValidator ID="valida_txtHora" runat="server" ErrorMessage="La hora indicada no es válida"
                        Text="*" ToolTip="La hora indicada no es válida" ControlToValidate="txtHora"
                        MinimumValue="0" MaximumValue="24" Type="Integer" Display="Dynamic" />
                    <asp:RangeValidator ID="valida_txtMinutos" runat="server" ErrorMessage="Los minutos indicados no son válidos"
                        Text="*" ToolTip="Los minutos indicados no son válidos" ControlToValidate="txtMinutos"
                        MinimumValue="0" MaximumValue="59" Type="Integer" Display="Dynamic" />
                </div>
                <div style="float: left;">
                    <asp:CheckBoxList ID="chkDias" runat="server" Enabled="False" RepeatDirection="Horizontal"
                        Font-Size="Small">
                        <asp:ListItem>Lunes</asp:ListItem>
                        <asp:ListItem>Martes</asp:ListItem>
                        <asp:ListItem>Miércoles</asp:ListItem>
                        <asp:ListItem>Jueves</asp:ListItem>
                        <asp:ListItem>Viernes</asp:ListItem>
                        <asp:ListItem>Sábado</asp:ListItem>
                        <asp:ListItem>Domingo</asp:ListItem>
                    </asp:CheckBoxList>
                </div>
                <div>
                    <asp:ImageButton ID="cmdInsertar" runat="server" AlternateText="Crear" ImageUrl="~/Images/alarma.png"
                        OnClick="AddAlarma" ImageAlign="Middle" />
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <div id="centro">
        <asp:ListView ID="lvMisAlertas" runat="server" DataSourceID="dsMisAlertas" OnItemDeleting="lvMisAlertas_ItemDeleting"
            OnItemUpdating="lvMisAlertas_ItemUpdating">
            <ItemTemplate>
                <tr class="elemento">
                    <td>
                        <asp:ImageButton ID="cmdEdit" AlternateText="Editar" runat="server" CommandName="Select"
                            ImageUrl="~/Images/marca.gif" />
                    </td>
                    <td>
                        <asp:Label ID="IdalertaLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                    </td>
                    <td style="text-align: center;">
                        <asp:CheckBox ID="InstantaneaCheckBox" runat="server" Checked='<%# Eval("Instantanea") %>'
                            Enabled="false" />
                    </td>
                    <td style="text-align: center;">
                        <asp:CheckBox ID="DiariaCheckBox" runat="server" Checked='<%# Eval("Diaria") %>'
                            Enabled="false" />
                    </td>
                    <td>
                        <asp:Label ID="DiasLabel" runat="server" Text='<%# Eval("Dias") %>' />
                    </td>
                    <td style="text-align: right;">
                        <asp:Label ID="HoraLabel" runat="server" Text='<%# Eval("Hora") %>' />
                    </td>
                    <td style="text-align: center;">
                        <asp:CheckBox ID="EmailCheckBox" runat="server" Checked='<%# Eval("Email") %>' Enabled="false" />
                    </td>
                    <td style="text-align: center;">
                        <asp:CheckBox ID="HabilitadaCheckBox" runat="server" Checked='<%# Eval("Habilitada") %>'
                            Enabled="false" />
                    </td>
                </tr>
            </ItemTemplate>
            <AlternatingItemTemplate>
                <tr class="alterno">
                    <td>
                        <asp:ImageButton ID="cmdEdit" AlternateText="Editar" runat="server" CommandName="Select"
                            ImageUrl="~/Images/marca.gif" />
                    </td>
                    <td>
                        <asp:Label ID="IdalertaLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                    </td>
                    <td style="text-align: center;">
                        <asp:CheckBox ID="InstantaneaCheckBox" runat="server" Checked='<%# Eval("Instantanea") %>'
                            Enabled="false" />
                    </td>
                    <td style="text-align: center;">
                        <asp:CheckBox ID="DiariaCheckBox" runat="server" Checked='<%# Eval("Diaria") %>'
                            Enabled="false" />
                    </td>
                    <td>
                        <asp:Label ID="DiasLabel" runat="server" Text='<%# Eval("Dias") %>' />
                    </td>
                    <td style="text-align: right;">
                        <asp:Label ID="HoraLabel" runat="server" Text='<%# Eval("Hora") %>' />
                    </td>
                    <td style="text-align: center;">
                        <asp:CheckBox ID="EmailCheckBox" runat="server" Checked='<%# Eval("Email") %>' Enabled="false" />
                    </td>
                    <td style="text-align: center;">
                        <asp:CheckBox ID="HabilitadaCheckBox" runat="server" Checked='<%# Eval("Habilitada") %>'
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
                                <span class="aviso" style="vertical-align: middle;">No hay mantenimientos programados.</span>
                            </td>
                        </tr>
                    </table>
                </center>
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table runat="server" width="100%">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="" cellpadding="0"
                                cellspacing="0" width="100%">
                                <tr runat="server" class="listview-head">
                                    <th runat="server">
                                    </th>
                                    <th runat="server">
                                        Descripción
                                    </th>
                                    <th runat="server">
                                        I(*)
                                    </th>
                                    <th runat="server">
                                        D(*)
                                    </th>
                                    <th runat="server">
                                        S(*)
                                    </th>
                                    <th runat="server">
                                        H(*)
                                    </th>
                                    <th runat="server">
                                        E(*)
                                    </th>
                                    <th runat="server">
                                        H(*)
                                    </th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="">
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr class="seleccion">
                    <td>
                        <asp:ImageButton ID="cmdEdit" AlternateText="Editar" runat="server" CommandName="Edit"
                            ImageUrl="~/Images/edit.gif" />
                        <asp:ImageButton ID="cmdBorrar" AlternateText="Borrar" runat="server" CommandName="Delete"
                            ImageUrl="~/Images/eliminar.gif" />
                    </td>
                    <td>
                        <asp:Label ID="lblAlerta" runat="server" Visible="false" Text='<%# Bind("Idalerta") %>' />
                        <asp:Label ID="lblUsuario" runat="server" Visible="false" Text='<%# Bind("Idusuario") %>' />
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Descripcion") %>' />
                    </td>
                    <td style="text-align: center;">
                        <asp:CheckBox ID="InstantaneaCheckBox" runat="server" Checked='<%# Eval("Instantanea") %>'
                            Enabled="false" />
                    </td>
                    <td style="text-align: center;">
                        <asp:CheckBox ID="DiariaCheckBox" runat="server" Checked='<%# Eval("Diaria") %>'
                            Enabled="false" />
                    </td>
                    <td>
                        <asp:Label ID="DiasLabel" runat="server" Text='<%# Eval("Dias") %>' />
                    </td>
                    <td style="text-align: right;">
                        <asp:Label ID="HoraLabel" runat="server" Text='<%# Eval("Hora") %>' />
                    </td>
                    <td style="text-align: center;">
                        <asp:CheckBox ID="EmailCheckBox" runat="server" Checked='<%# Eval("Email") %>' Enabled="false" />
                    </td>
                    <td style="text-align: center;">
                        <asp:CheckBox ID="HabilitadaCheckBox" runat="server" Checked='<%# Eval("Habilitada") %>'
                            Enabled="false" />
                    </td>
                </tr>
            </SelectedItemTemplate>
            <EditItemTemplate>
                <tr class="edicion">
                    <td>
                        <asp:ImageButton ID="cmdEdit" AlternateText="Editar" runat="server" CommandName="Update"
                            ImageUrl="~/Images/aceptada.gif" />
                        <asp:ImageButton ID="cmdBorrar" AlternateText="Borrar" runat="server" CommandName="Cancel"
                            ImageUrl="~/Images/cancelar.gif" />
                    </td>
                    <td>
                        <asp:Label ID="lblAlerta" runat="server" Visible="false" Text='<%# Bind("Idalerta") %>' />
                        <asp:Label ID="lblUsuario" runat="server" Visible="false" Text='<%# Bind("Idusuario") %>' />
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Descripcion") %>' />
                    </td>
                    <td style="text-align: center;">
                        <asp:CheckBox ID="InstantaneaCheckBox" runat="server" Checked='<%# Eval("Instantanea") %>'
                            Enabled="false" />
                    </td>
                    <td style="text-align: center;">
                        <asp:CheckBox ID="DiariaCheckBox" runat="server" Checked='<%# Eval("Diaria") %>'
                            Enabled="false" />
                    </td>
                    <td>
                        <asp:Label ID="DiasLabel" runat="server" Text='<%# Eval("Dias") %>' />
                    </td>
                    <td style="text-align: right;">
                        <asp:Label ID="HoraLabel" runat="server" Text='<%# Eval("Hora") %>' />
                    </td>
                    <td style="text-align: center;">
                        <asp:CheckBox ID="EmailCheckBox" runat="server" Checked='<%# Bind("Email") %>' Enabled="true" />
                    </td>
                    <td style="text-align: center;">
                        <asp:CheckBox ID="HabilitadaCheckBox" runat="server" Checked='<%# Bind("Habilitada") %>'
                            Enabled="true" />
                    </td>
                </tr>
            </EditItemTemplate>
        </asp:ListView>
        <span class="explicacion">I(*) - Envío Inmediato</span> <span class="explicacion">D(*)
            - Envío Diario</span><br />
        <span class="explicacion">S(*) - Envío Semanal</span> <span class="explicacion">T(*)
            - Hora de envío</span><br />
        <span class="explicacion">E(*) - Notificación por Email</span> <span class="explicacion">
            H(*) - Notificación Habilitada</span><br />
    </div>
    <asp:ObjectDataSource ID="dsAlertas" runat="server" SelectMethod="getAlertasEnabled"
        TypeName="LOBIncidencias.AlertasManager" />
    <asp:ObjectDataSource ID="dsMisAlertas" runat="server" InsertMethod="AddAlertaToCliente"
        SelectMethod="getMisAlertas" DeleteMethod="RemoveAlertaToCliente" UpdateMethod="UpdateAlertaFromUsuario"
        TypeName="LOBIncidencias.AlertasManager">
        <UpdateParameters>
            <asp:Parameter Type="String" Name="Idalerta" />
            <asp:Parameter Type="String" Name="Idusuario" />
            <asp:Parameter Type="Boolean" Name="Habilitada" />
        </UpdateParameters>
        <DeleteParameters>
            <asp:Parameter Type="String" Name="Idalerta" />
            <asp:Parameter Type="String" Name="Idusuario" />
        </DeleteParameters>
    </asp:ObjectDataSource>
</asp:Content>
