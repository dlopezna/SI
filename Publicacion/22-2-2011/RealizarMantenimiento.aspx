<%@ Page Language="C#" MasterPageFile="~/IGM.Master" AutoEventWireup="true" CodeBehind="RealizarMantenimiento.aspx.cs"
    EnableEventValidation="false" Inherits="WebAdmin.RealizarMantenimiento" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="upd_lvSubTareas"
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
    <asp:UpdateProgress ID="UpdateProgress3" runat="server" AssociatedUpdatePanelID="upd_lvSubTareasOff"
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
    <asp:UpdateProgress ID="UpdateProgress2" runat="server" AssociatedUpdatePanelID="upd_cmdCargar"
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
    <div id="titular">
        Definición mantenimiento
    </div>
    <div id="menu">
        <table>
            <tr>
                <td>
                    <asp:DropDownList ID="cbPlantas" runat="server" DataSourceID="dsPlantas" DataTextField="NSerie"
                        DataValueField="NSerie" />
                </td>
                <td>
                    <asp:DropDownList ID="cbInversores" runat="server" DataSourceID="dsInversores" DataTextField="NSerie"
                        DataValueField="NSerie" />
                </td>
                <td>
                    <asp:DropDownList ID="cbStrings" runat="server" DataSourceID="dsStrings" DataTextField="NSerie"
                        DataValueField="NSerie" />
                </td>
                <td>
                    <asp:DropDownList ID="cbSeguidores" runat="server" DataSourceID="dsSeguidores" DataTextField=""
                        DataValueField="NSerie" />
                </td>
                <td>
                    <asp:DropDownList ID="cbPaneles" runat="server" DataSourceID="dsPaneles" DataTextField="NSerie"
                        DataValueField="NSerie" />
                </td>
                <td>
                    <asp:UpdatePanel ID="upd_cmdCargar" runat="server">
                        <ContentTemplate>
                            <asp:ImageButton ID="cmdCargar" runat="server" AlternateText="Cargar" ImageUrl="~/Images/Refresh_32.png" BorderStyle="Ridge" BorderWidth="1px"
                                OnClick="Cargar" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
        </table>
        <cc1:CascadingDropDown ID="cbPlantas_CascadingDropDown" runat="server" Category="planta"
            PromptText="Inversor.." LoadingText="[Cargando Inversores...]" ServicePath="WSIncidencias.asmx"
            ServiceMethod="getComponentesByParent" ParentControlID="cbPlantas" TargetControlID="cbInversores"
            SelectedValue="SomeValue" UseContextKey="True" />
        <cc1:CascadingDropDown ID="cbInversores_CascadingDropDown" runat="server" Category="inversor"
            PromptText="String.." LoadingText="[Cargando Strings...]" ServicePath="WSIncidencias.asmx"
            ServiceMethod="getComponentesByParent" ParentControlID="cbInversores" TargetControlID="cbStrings"
            SelectedValue="SomeValue" UseContextKey="True" />
        <cc1:CascadingDropDown ID="CascadingDropDown2" runat="server" Category="string" PromptText="Seguidor.."
            LoadingText="[Cargando Seguidores...]" ServicePath="WSIncidencias.asmx" ServiceMethod="getComponentesByParent"
            ParentControlID="cbStrings" TargetControlID="cbSeguidores" SelectedValue="SomeValue"
            UseContextKey="True" />
        <cc1:CascadingDropDown ID="CascadingDropDown3" runat="server" Category="seguidor"
            PromptText="Panel.." LoadingText="[Cargando Paneles...]" ServicePath="WSIncidencias.asmx"
            ServiceMethod="getComponentesByParent" ParentControlID="cbSeguidores" TargetControlID="cbPaneles"
            SelectedValue="SomeValue" UseContextKey="True" />
    </div>
    <div id="centro">
        <asp:UpdatePanel ID="upd_lvSubTareas" runat="server">
            <ContentTemplate>
                <asp:ListView ID="lvSubTareas" runat="server" DataSourceID="dsSubTareas" OnItemUpdating="lvSubTareas_ItemUpdating"
                    OnItemUpdated="lvSubTareas_ItemUpdated">
                    <ItemTemplate>
                        <tr class="elemento">
                            <td>
                                <asp:ImageButton ID="cmdEdit" runat="server" AlternateText="Editar" CommandName="Edit"
                                    ImageUrl="~/Images/edit.gif" />
                            </td>
                            <td>
                                <asp:Label ID="lblDescripcion" runat="server" Text='<%# Eval("Descripcion") %>' />
                            </td>
                            <td>
                                <span class="explicacion">Pendiente</span>
                            </td>
                        </tr>
                    </ItemTemplate>
                    <AlternatingItemTemplate>
                        <tr class="alterno">
                            <td>
                                <asp:ImageButton ID="cmdEdit" runat="server" AlternateText="Editar" CommandName="Edit"
                                    ImageUrl="~/Images/edit.gif" />
                            </td>
                            <td>
                                <asp:Label ID="lblDescripcion" runat="server" Text='<%# Eval("Descripcion") %>' />
                            </td>
                            <td>
                                <span class="explicacion">Pendiente</span>
                            </td>
                        </tr>
                    </AlternatingItemTemplate>
                    <LayoutTemplate>
                        <table id="Table2" runat="server" width="100%">
                            <tr id="Tr1" runat="server">
                                <td id="Td1" runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="0" width="100%" cellpadding="0"
                                        cellspacing="0">
                                        <tr id="Tr2" runat="server" class="listview-head">
                                            <th id="Th1" runat="server" style="width: 5%">
                                            </th>
                                            <th id="Th3" runat="server" style="width: 90%">
                                                Descripción
                                            </th>
                                            <th id="Th2" runat="server" style="width: 5%">
                                                Estado
                                            </th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr id="Tr3" runat="server">
                                <td>
                                    <asp:DataPager ID="DataPager1" runat="server" PageSize="10">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonType="Image" PreviousPageImageUrl="~/Images/anterior.gif"
                                                NextPageImageUrl="~/Images/siguiente.gif" />
                                        </Fields>
                                    </asp:DataPager>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <EmptyDataTemplate>
                        <center>
                            <table id="Table1" runat="server" style="width:100%">
                                <tr>
                                    <td align="center">
                                        <img alt="Warning" src="../Images/warning-32.png" style="vertical-align: middle;" />
                                        <span class="aviso" style="vertical-align: middle;">No hay tareas de mantenimiento programadas</span>
                                    </td>
                                </tr>
                            </table>
                        </center>
                    </EmptyDataTemplate>
                    <EditItemTemplate>
                        <tr class="edicion">
                            <td colspan="2">
                                <asp:Label ID="lblId" runat="server" Visible="false" Text='<%# Bind("Id") %>' />
                                <asp:Label ID="lblIdTarea" runat="server" Visible="false" Text='<%# Bind("IdTarea") %>' />
                                <asp:Label ID="lblComponente" runat="server" Visible="false" Text='<%# Bind("Componente") %>' />
                                <asp:Label ID="lblDescripcion" runat="server" Text='<%# Bind("Descripcion") %>' />
                            </td>
                            <td>
                                <asp:CheckBox ID="chkOk" runat="server" AutoPostBack="false" Checked='<%# Bind("Estado") %>' />
                            </td>
                        </tr>
                        <tr class="edicion">
                            <td colspan="3">
                                <span class="explicacion">Observaciones:</span><asp:TextBox ID="txtObservacion" runat="server"
                                    Width="94%" Text='<%# Bind("Observaciones") %>' />
                                <asp:ImageButton ID="ImageButton1" runat="server" AlternateText="Update" CommandName="Update"
                                    ImageUrl="~/Images/save-15.png" />
                            </td>
                        </tr>
                    </EditItemTemplate>
                </asp:ListView>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdatePanel ID="upd_lvSubTareasOff" runat="server">
            <ContentTemplate>
                <asp:ListView ID="lvSubTareasOff" runat="server" DataSourceID="dsSubTareasOff">
                    <ItemTemplate>
                        <tr class="elemento">
                            <td>
                                <img alt="elemento" src="../Images/marca.gif" />
                            </td>
                            <td>
                                <asp:Label ID="lblDescripcion" runat="server" Text='<%# Eval("Descripcion") %>' />
                            </td>
                            <td>
                                <asp:CheckBox ID="chkEstado" runat="server" Checked='<%# Eval("Estado") %>' />
                            </td>
                            <td>
                                <asp:Label ID="lblCaduca" runat="server" Text='<%# Eval("Caduca","{0:d}") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <AlternatingItemTemplate>
                        <tr class="alterno">
                            <td>
                                <img alt="elemento" src="../Images/marca.gif" />
                            </td>
                            <td>
                                <asp:Label ID="lblDescripcion" runat="server" Text='<%# Eval("Descripcion") %>' />
                            </td>
                            <td>
                                <asp:CheckBox ID="chkEstado" runat="server" Checked='<%# Eval("Estado") %>' />
                            </td>
                            <td>
                                <asp:Label ID="lblCaduca" runat="server" Text='<%# Eval("Caduca","{0:d}") %>' />
                            </td>
                        </tr>
                    </AlternatingItemTemplate>
                    <LayoutTemplate>
                        <table id="Table2" runat="server" width="100%">
                            <tr id="Tr1" runat="server">
                                <td id="Td1" runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="0" width="100%" cellpadding="0"
                                        cellspacing="0">
                                        <tr id="Tr2" runat="server" class="listview-head">
                                            <th id="Th1" runat="server" style="width: 5%">
                                            </th>
                                            <th id="Th3" runat="server" style="width: 85%">
                                                Descripción
                                            </th>
                                            <th id="Th4" runat="server" style="width: 5%">
                                                estado
                                            </th>
                                            <th id="Th2" runat="server" style="width: 5%">
                                                vigor
                                            </th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr id="Tr3" runat="server">
                                <td>
                                    <asp:DataPager ID="DataPager1" runat="server" PageSize="10">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonType="Image" PreviousPageImageUrl="~/Images/anterior.gif"
                                                NextPageImageUrl="~/Images/siguiente.gif" />
                                        </Fields>
                                    </asp:DataPager>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <EmptyDataTemplate>
                        <center>
                            <table id="Table1" runat="server" style="width:100%">
                                <tr>
                                    <td align="center">
                                        <img alt="Warning" src="../Images/warning-32.png" style="vertical-align: middle;" />
                                        <span class="aviso" style="vertical-align: middle;">No se han realizado tareas de mantenimiento</span>
                                    </td>
                                </tr>
                            </table>
                        </center>
                    </EmptyDataTemplate>
                </asp:ListView>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <asp:ObjectDataSource ID="dsSubTareas" runat="server" DataObjectTypeName="LOBIncidencias.subTarea"
        SelectMethod="getSubtareasByComponente" TypeName="LOBIncidencias.TareasManager"
        UpdateMethod="guardarMantenimiento">
        <SelectParameters>
            <asp:SessionParameter SessionField="idTarea" DbType="Guid" Name="idTarea" />
            <asp:SessionParameter SessionField="NSerie" DbType="String" Name="componente" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="dsSubTareasOff" runat="server" DataObjectTypeName="LOBIncidencias.subTarea"
        SelectMethod="getSubtareasByComponenteOff" TypeName="LOBIncidencias.TareasManager">
        <SelectParameters>
            <asp:SessionParameter SessionField="idTarea" DbType="Guid" Name="idTarea" />
            <asp:SessionParameter SessionField="NSerie" DbType="String" Name="componente" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="dsSeguidores" runat="server" SelectMethod="getComponentes"
        TypeName="LOBIncidencias.Seguidor"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="dsInversores" runat="server" SelectMethod="getComponentes"
        TypeName="LOBIncidencias.Inversor" ></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="dsStrings" runat="server" SelectMethod="getComponentes"
        TypeName="LOBIncidencias.String" ></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="dsPlantas" runat="server" SelectMethod="getComponentes"
        TypeName="LOBIncidencias.Planta" ></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="dsPaneles" runat="server" SelectMethod="getComponentes"
        TypeName="LOBIncidencias.Panel" ></asp:ObjectDataSource>
</asp:Content>
