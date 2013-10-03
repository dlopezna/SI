<%@ Page Language="C#" MasterPageFile="~/IGM.Master" AutoEventWireup="true" CodeBehind="RealizarMantenimiento.aspx.cs"
    EnableEventValidation="false" Inherits="WebAdmin.RealizarMantenimiento" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
       
    
    
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
                    
                            <asp:ImageButton ID="cmdCargar" runat="server" AlternateText="Cargar" ImageUrl="~/Images/Refresh_32.png" BorderStyle="Ridge" BorderWidth="1px"
                                OnClick="Cargar" />
                
                </td>
            </tr>
        </table>
        
    </div>
    <div id="centro">
       
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
