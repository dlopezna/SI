<%@ Page Language="C#" MasterPageFile="~/IGM.Master" AutoEventWireup="true" CodeBehind="Incidencias.aspx.cs"
    Inherits="WebAdmin.Incidencias" %>

<asp:Content ID="cabecera" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="cphMain" runat="server">
    <asp:UpdateProgress ID="updP" runat="server" AssociatedUpdatePanelID="upd_lvIncidencias"
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
    <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="upd_lvNiveles"
        DisplayAfter="0">
        <ProgressTemplate>
            <div id="upd_progress">
                <div style="margin-top: 25%;">
                    <img src="../Images/loading.gif" alt="cargando..." style="vertical-align: middle;
                        border: solid 1px black;"/>
                </div>
            </div>
        </ProgressTemplate>
    </asp:UpdateProgress>
    <asp:UpdateProgress ID="UpdateProgress2" runat="server" AssociatedUpdatePanelID="upd_lvGrupos"
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
    <div id="izda">
        <div id="titular">
            <span style="text-decoration: underline;">Niveles de Incidencias</span>
        </div>
        <asp:UpdatePanel ID="upd_lvNiveles" runat="server">
            <ContentTemplate>
                <asp:ListView ID="lvNiveles" runat="server" DataKeyNames="ID" DataSourceID="dsNivelesIncidencia"
                    InsertItemPosition="LastItem">
                    <ItemTemplate>
                        <tr class="elemento">
                            <td>
                                <asp:LinkButton ID="lnkDescripcion" runat="server" Text='<%# Eval("Descripcion") %>'
                                    CommandName="Select" />
                            </td>
                            <td>
                                <asp:Label ID="lblTiempo" runat="server" Text='<%# Eval("Treparacion") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <AlternatingItemTemplate>
                        <tr class="alterno">
                            <td>
                                <asp:LinkButton ID="lnkDescripcion" runat="server" Text='<%# Eval("Descripcion") %>'
                                    CommandName="Select" />
                            </td>
                            <td>
                                <asp:Label ID="lblTiempo" runat="server" Text='<%# Eval("Treparacion") %>' />
                            </td>
                        </tr>
                    </AlternatingItemTemplate>
                    <EmptyDataTemplate>
                        <center>
                            <table id="Table1" runat="server" style="">
                                <tr>
                                    <td align="center">
                                        <img alt="Warning" src="../Images/warning-32.png" style="vertical-align: middle;" />
                                        <span class="aviso" style="vertical-align: middle;">No se han devuelto datos.</span>
                                    </td>
                                </tr>
                            </table>
                        </center>
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <tr>
                            <td colspan="2">
                                <span class="explicacion">Insertar un nuevo item</span>
                            </td>
                        </tr>
                        <tr class="nuevo">
                            <td>
                                <asp:TextBox ID="txtDescripcion" runat="server" Width="90%" Text='<%# Bind("Descripcion") %>'
                                    ValidationGroup="insNivel" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="insNivel"
                                    ErrorMessage="RequiredFieldValidator" ControlToValidate="txtDescripcion" Text="*"
                                    ToolTip="El campo descripción no puede estar vacío"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                                <asp:TextBox ID="txtTiempo" runat="server" Width="30px" Text='<%# Bind("Treparacion") %>'
                                    ValidationGroup="insNivel" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="insNivel"
                                    ErrorMessage="RequiredFieldValidator" Display="Dynamic" ControlToValidate="txtTiempo"
                                    Text="*" ToolTip="Debe especificar un tiempo de reparación"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="RangeValidator"
                                    ControlToValidate="txtTiempo" Display="Dynamic" Type="Integer" ValidationGroup="insNivel"
                                    Text="*" ToolTip="El valor no es correcto, debe ser un número" MinimumValue="0"
                                    MaximumValue="180"></asp:RangeValidator>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:ImageButton ID="cmdInsert" runat="server" BorderWidth="1px" BorderStyle="Ridge"
                                    CommandName="Insert" AlternateText="Insertar" ImageUrl="~/Images/add.gif" ValidationGroup="insNivel" />
                                <asp:ImageButton ID="cmdCancel" runat="server" BorderWidth="1px" BorderStyle="Ridge"
                                    CommandName="Cancel" AlternateText="Cancelar" ImageUrl="~/Images/cancelar.gif" />
                            </td>
                        </tr>
                    </InsertItemTemplate>
                    <LayoutTemplate>
                        <table runat="server" width="100%">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="0" width="100%" cellpadding="0"
                                        cellspacing="0">
                                        <tr runat="server" class="listview-head">
                                            <th runat="server" align="left">
                                                Descripción
                                            </th>
                                            <th runat="server" align="left">
                                                T(*)
                                            </th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server" class="listview-body">
                                        </tr>
                                        <tr>
                                            <td>
                                                <span class="explicacion">* Tiempo Reparación</span>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <EditItemTemplate>
                        <tr class="edicion">
                            <td>
                                <asp:TextBox ID="txtDescripcion" runat="server" ValidationGroup="updNivel" Width="90%"
                                    Text='<%# Bind("Descripcion") %>' />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="updNivel"
                                    ErrorMessage="RequiredFieldValidator" ControlToValidate="txtDescripcion" Text="*"
                                    ToolTip="El campo descripción no puede estar vacío"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                                <asp:TextBox ID="txtTiempo" runat="server" Width="30px" ValidationGroup="updNivel"
                                    Text='<%# Bind("Treparacion") %>' />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="updNivel"
                                    Display="Dynamic" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtTiempo"
                                    Text="*" ToolTip="Debe especificar un tiempo de reparación"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="RangeValidator"
                                    ControlToValidate="txtTiempo" Display="Dynamic" Type="Integer" ValidationGroup="updNivel"
                                    Text="*" ToolTip="El valor no es correcto, debe ser un número" MinimumValue="0"
                                    MaximumValue="180"></asp:RangeValidator>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:ImageButton ID="cmdUpdate" runat="server" BorderWidth="1px" BorderStyle="Ridge"
                                    CommandName="Update" AlternateText="Actualizar" ImageUrl="~/Images/aceptada.gif" />
                                <asp:ImageButton ID="cmdCancel" runat="server" BorderWidth="1px" BorderStyle="Ridge"
                                    CommandName="Cancel" AlternateText="Cancelar" ImageUrl="~/Images/cancelar.gif" />
                            </td>
                        </tr>
                    </EditItemTemplate>
                    <SelectedItemTemplate>
                        <tr class="seleccion">
                            <td>
                                <asp:Label ID="lblDescripcion" runat="server" Text='<%# Eval("Descripcion") %>' />
                            </td>
                            <td>
                                <asp:Label ID="lblTiempo" runat="server" Text='<%# Eval("Treparacion") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:ImageButton ID="cmdBorrar" runat="server" BorderWidth="1px" BorderStyle="Ridge"
                                    CommandName="Delete" AlternateText="Eliminar" ImageUrl="~/Images/eliminar.gif" />
                                <asp:ImageButton ID="cmdEditar" runat="server" BorderWidth="1px" BorderStyle="Ridge"
                                    CommandName="Edit" AlternateText="Editar" ImageUrl="~/Images/edit.gif" />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>
            </ContentTemplate>
        </asp:UpdatePanel>
        <div id="menu">
            <span style="text-decoration: underline;">Grupos de Incidencias</span>
        </div>
        <asp:UpdatePanel ID="upd_lvGrupos" runat="server">
            <ContentTemplate>
                <asp:ListView ID="lvGrupos" runat="server" DataKeyNames="ID" DataSourceID="dsGruposIncidencia"
                    InsertItemPosition="LastItem">
                    <ItemTemplate>
                        <tr class="elemento">
                            <td>
                                <asp:LinkButton ID="lnkNombre" runat="server" Text='<%# Eval("Nombre") %>' CommandName="Select" />
                            </td>
                            <td>
                                <asp:Label ID="lblDesc" runat="server" Text='<%# Eval("Descripcion") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <AlternatingItemTemplate>
                        <tr class="alterno">
                            <td>
                                <asp:LinkButton ID="lnkNombre" runat="server" Text='<%# Eval("Nombre") %>' CommandName="Select" />
                            </td>
                            <td>
                                <asp:Label ID="lblDesc" runat="server" Text='<%# Eval("Descripcion") %>' />
                            </td>
                        </tr>
                    </AlternatingItemTemplate>
                    <EmptyDataTemplate>
                        <center>
                            <table id="Table2" runat="server" style="">
                                <tr>
                                    <td align="center">
                                        <img alt="Warning" src="../Images/warning-32.png" style="vertical-align: middle;" />
                                        <span class="aviso" style="vertical-align: middle;">No se han devuelto datos.</span>
                                    </td>
                                </tr>
                            </table>
                        </center>
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <tr>
                            <td colspan="2">
                                <span class="explicacion">Insertar un nuevo item</span>
                            </td>
                        </tr>
                        <tr class="nuevo">
                            <td style="width: 30%">
                                <asp:TextBox ID="txtNombre" runat="server" Width="90%" Text='<%# Bind("Nombre") %>'
                                    ValidationGroup="insGrupo" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="insGrupo"
                                    ErrorMessage="RequiredFieldValidator" ControlToValidate="txtNombre" Text="*"
                                    ToolTip="El campo nombre no puede estar vacío"></asp:RequiredFieldValidator>
                            </td>
                            <td style="width: 70%">
                                <asp:TextBox ID="txtDesc" runat="server" Width="97%" Text='<%# Bind("Descripcion") %>'
                                    ValidationGroup="insGrupo" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ValidationGroup="insGrupo"
                                    ErrorMessage="RequiredFieldValidator" ControlToValidate="txtDesc" Text="*" ToolTip="El campo descripción no puede estar vacío"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:ImageButton ID="cmdInsert" runat="server" BorderWidth="1px" BorderStyle="Ridge"
                                    CommandName="Insert" AlternateText="Insertar" ImageUrl="~/Images/add.gif" ValidationGroup="insGrupo" />
                                <asp:ImageButton ID="cmdCancel" runat="server" BorderWidth="1px" BorderStyle="Ridge"
                                    CommandName="Cancel" AlternateText="Cancelar" ImageUrl="~/Images/cancelar.gif" />
                            </td>
                        </tr>
                    </InsertItemTemplate>
                    <LayoutTemplate>
                        <table id="Table2" runat="server">
                            <tr id="Tr4" runat="server">
                                <td id="Td3" runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="0" cellpadding="0" cellspacing="0">
                                        <tr id="Tr5" runat="server" class="listview-head">
                                            <th id="Th8" runat="server">
                                                Grupo
                                            </th>
                                            <th id="Th9" runat="server">
                                                Descripción
                                            </th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr id="Tr6" runat="server">
                                <td id="Td4" runat="server" style="">
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <EditItemTemplate>
                        <tr class="edicion">
                            <td style="width: 30%">
                                <asp:TextBox ID="txtNombre" runat="server" Width="90%" Text='<%# Bind("Nombre") %>'
                                    ValidationGroup="updGrupo" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ValidationGroup="updGrupo"
                                    ErrorMessage="RequiredFieldValidator" ControlToValidate="txtNombre" Text="*"
                                    ToolTip="El campo nombre no puede estar vacío"></asp:RequiredFieldValidator>
                            </td>
                            <td style="width: 70%">
                                <asp:TextBox ID="txtDesc" runat="server" Width="97%" Text='<%# Bind("Descripcion") %>'
                                    ValidationGroup="updGrupo" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ValidationGroup="updGrupo"
                                    ErrorMessage="RequiredFieldValidator" ControlToValidate="txtDesc" Text="*" ToolTip="El campo descripció no puede estar vacío"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:ImageButton ID="cmdUpdate" runat="server" BorderWidth="1px" BorderStyle="Ridge"
                                    CommandName="Update" AlternateText="Actualizar" ImageUrl="~/Images/aceptada.gif"
                                    ValidationGroup="updGrupo" />
                                <asp:ImageButton ID="cmdCancel" runat="server" BorderWidth="1px" BorderStyle="Ridge"
                                    CommandName="Cancel" AlternateText="Cancelar" ImageUrl="~/Images/cancelar.gif" />
                            </td>
                        </tr>
                    </EditItemTemplate>
                    <SelectedItemTemplate>
                        <tr class="seleccion">
                            <td>
                                <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                            </td>
                            <td>
                                <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:ImageButton ID="cmdBorrar" runat="server" BorderWidth="1px" BorderStyle="Ridge"
                                    CommandName="Delete" AlternateText="Eliminar" ImageUrl="~/Images/eliminar.gif" />
                                <asp:ImageButton ID="cmdEditar" runat="server" BorderWidth="1px" BorderStyle="Ridge"
                                    CommandName="Edit" AlternateText="Editar" ImageUrl="~/Images/edit.gif" />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <div id="dcha">
        <div id="menu">
            <span style="text-decoration: underline;">Clasificación de Incidencias</span>
        </div>
        <asp:UpdatePanel ID="upd_lvIncidencias" runat="server">
            <ContentTemplate>
                <asp:ListView ID="lvIncidencias" runat="server" DataKeyNames="ID" DataSourceID="dsIncidencias"
                    InsertItemPosition="LastItem" OnItemInserting="lvIncidencias_ItemInserting">
                    <ItemTemplate>
                        <tr class="elemento">
                            <td>
                                <asp:ImageButton ID="cmdSelect" CommandName="Select" runat="server" AlternateText="Selección"
                                    ImageUrl="~/Images/marca.gif" />
                            </td>
                            <td>
                                <asp:Label ID="lblDef" runat="server" Text='<%# Eval("Definicion") %>' />
                            </td>
                            <td>
                                <asp:Label ID="lblCoste" runat="server" Text='<%# Eval("Coste") %>' />
                            </td>
                            <td>
                                <asp:Label ID="lblNivel" runat="server" Text='<%# Eval("defNivel") %>' />
                            </td>
                            <td>
                                <asp:Label ID="lblGrupo" runat="server" Text='<%# Eval("defGrupo") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <AlternatingItemTemplate>
                        <tr class="alterno">
                            <td>
                                <asp:ImageButton ID="cmdSelect" CommandName="Select" runat="server" AlternateText="Selección"
                                    ImageUrl="~/Images/marca.gif" />
                            </td>
                            <td>
                                <asp:Label ID="lblDef" runat="server" Text='<%# Eval("Definicion") %>' />
                            </td>
                            <td>
                                <asp:Label ID="lblCoste" runat="server" Text='<%# Eval("Coste") %>' />
                            </td>
                            <td>
                                <asp:Label ID="lblNivel" runat="server" Text='<%# Eval("defNivel") %>' />
                            </td>
                            <td>
                                <asp:Label ID="lblGrupo" runat="server" Text='<%# Eval("defGrupo") %>' />
                            </td>
                        </tr>
                    </AlternatingItemTemplate>
                    <EmptyDataTemplate>
                        <center>
                            <table id="Table3" runat="server" style="">
                                <tr>
                                    <td align="center">
                                        <img alt="Warning" src="../Images/warning-32.png" style="vertical-align: middle;" />
                                        <span class="aviso" style="vertical-align: middle;">No se han devuelto datos.</span>
                                    </td>
                                </tr>
                            </table>
                        </center>
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <tr>
                            <td colspan="2">
                                <span class="explicacion">Insertar un nuevo item</span>
                            </td>
                        </tr>
                        <tr class="nuevo">
                            <td>
                                <asp:ImageButton ID="cmdInsert" runat="server" BorderWidth="1px" BorderStyle="Ridge"
                                    CommandName="Insert" AlternateText="Insertar" ImageUrl="~/Images/add.gif" ValidationGroup="insIncidencia" />
                                <asp:ImageButton ID="cmdCancel" runat="server" BorderWidth="1px" BorderStyle="Ridge"
                                    CommandName="Cancel" AlternateText="Cancelar" ImageUrl="~/Images/cancelar.gif" />
                            </td>
                            <td>
                                <asp:TextBox ID="txtDefinicion" runat="server" Width="90%" Text='<%# Bind("Definicion") %>'
                                    ValidationGroup="insIncidencia" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ValidationGroup="insIncidencia"
                                    ErrorMessage="RequiredFieldValidator" Display="Dynamic" ControlToValidate="txtDefinicion"
                                    Text="*" ToolTip="El campo definición no puede estar vacío"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                                <asp:TextBox ID="txtCoste" runat="server" Width="50px" Text='<%# Bind("Coste") %>'
                                    ValidationGroup="insIncidencia" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="insIncidencia"
                                    ErrorMessage="RequiredFieldValidator" Display="Dynamic" ControlToValidate="txtCoste"
                                    Text="*" ToolTip="Debe especificar un tiempo de reparación"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="RangeValidator"
                                    ControlToValidate="txtCoste" Display="Dynamic" Type="Currency" ValidationGroup="insIncidencia"
                                    Text="*" ToolTip="El valor no es correcto, debe ser un número" MinimumValue="0"
                                    MaximumValue="9999999"></asp:RangeValidator>
                            </td>
                            <td>
                                <asp:DropDownList ID="cbNivel" runat="server" DataSourceID="dsNivelesIncidencia"
                                    DataValueField="ID" DataTextField="Descripcion" />
                            </td>
                            <td>
                                <asp:DropDownList ID="cbGrupo" runat="server" DataSourceID="dsGruposIncidencia" DataValueField="ID"
                                    DataTextField="Nombre" />
                            </td>
                        </tr>
                    </InsertItemTemplate>
                    <LayoutTemplate>
                        <table id="Table3" runat="server" width="100%">
                            <tr id="Tr1" runat="server">
                                <td id="Td1" runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="0" width="100%" cellpadding="0"
                                        cellspacing="0">
                                        <tr id="Tr2" runat="server" class="listview-head">
                                            <th id="Th2" runat="server" style="width: 10%">
                                            </th>
                                            <th id="Th3" runat="server" style="width: 40%">
                                                Definición
                                            </th>
                                            <th id="Th4" runat="server" style="width: 10%">
                                                Coste
                                            </th>
                                            <th id="Th5" runat="server" style="width: 10%">
                                                Nivel
                                            </th>
                                            <th style="width: 10%">
                                                Grupo
                                            </th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr id="Tr3" runat="server">
                                <td id="Td2" runat="server" style="">
                                    <asp:DataPager ID="DataPager1" runat="server" PageSize="30">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonType="Image" PreviousPageImageUrl="~/Images/anterior.gif"
                                                NextPageImageUrl="~/Images/siguiente.gif" />
                                        </Fields>
                                    </asp:DataPager>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <EditItemTemplate>
                        <tr class="edicion">
                            <td>
                                <asp:Label ID="lblIdIncidencia" runat="server" Visible="false" Text='<%# Bind("ID") %>' />
                                <asp:ImageButton ID="cmdSelect" CommandName="Select" runat="server" AlternateText="Selección"
                                    ImageUrl="~/Images/marca.gif" />
                            </td>
                            <td>
                                <asp:TextBox ID="txtDefinicion" Width="90%" runat="server" Text='<%# Bind("Definicion") %>'
                                    ValidationGroup="updIncidencia" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ValidationGroup="updIncidencia"
                                    ErrorMessage="RequiredFieldValidator" Display="Dynamic" ControlToValidate="txtDefinicion"
                                    Text="*" ToolTip="El campo definición no puede estar vacío"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                                <asp:TextBox ID="txtCoste" Width="50px" runat="server" Text='<%# Bind("Coste") %>'
                                    ValidationGroup="updIncidencia" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="updIncidencia"
                                    ErrorMessage="RequiredFieldValidator" Display="Dynamic" ControlToValidate="txtCoste"
                                    Text="*" ToolTip="Debe especificar un tiempo de reparación"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="RangeValidator"
                                    ControlToValidate="txtCoste" Display="Dynamic" Type="Currency" ValidationGroup="updIncidencia"
                                    Text="*" ToolTip="El valor no es correcto, debe ser un número" MinimumValue="0"
                                    MaximumValue="9999999"></asp:RangeValidator>
                            </td>
                            <td>
                                <asp:DropDownList ID="cbNivel" runat="server" DataSourceID="dsNivelesIncidencia"
                                    DataValueField="ID" SelectedValue='<%# Bind("idNivel") %>' DataTextField="Descripcion" />
                            </td>
                            <td>
                                <asp:DropDownList ID="cbGrupo" runat="server" DataSourceID="dsGruposIncidencia" DataValueField="ID"
                                    DataTextField="Nombre" SelectedValue='<%# Bind("idGrupo") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="5">
                                <asp:ImageButton ID="cmdUpdate" runat="server" BorderWidth="1px" BorderStyle="Ridge"
                                    CommandName="Update" AlternateText="Actualizar" ImageUrl="~/Images/aceptada.gif" />
                                <asp:ImageButton ID="cmdCancel" runat="server" BorderWidth="1px" BorderStyle="Ridge"
                                    CommandName="Cancel" AlternateText="Cancelar" ImageUrl="~/Images/cancelar.gif" />
                            </td>
                        </tr>
                    </EditItemTemplate>
                    <SelectedItemTemplate>
                        <tr class="seleccion">
                            <td>
                                <asp:Label ID="lblIdIncidencia" runat="server" Visible="false" Text='<%# Eval("ID") %>' />
                                <asp:ImageButton ID="cmdSelect" CommandName="Cancel" runat="server" AlternateText="Cerrar"
                                    ImageUrl="~/Images/desmarca.gif" />
                            </td>
                            <td>
                                <asp:Label ID="lblDef" runat="server" Text='<%# Eval("Definicion") %>' />
                            </td>
                            <td>
                                <asp:Label ID="lblCostes" runat="server" Text='<%# Eval("Coste") %>' />
                            </td>
                            <td>
                                <asp:Label ID="lblNivel" runat="server" Text='<%# Eval("defNivel") %>' />
                            </td>
                            <td>
                                <asp:Label ID="lblGrupo" runat="server" Text='<%# Eval("defGrupo") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="5">
                                <asp:ImageButton ID="cmdDelete" runat="server" BorderWidth="1px" BorderStyle="Ridge"
                                    CommandName="Delete" AlternateText="Borrar" ImageUrl="~/Images/eliminar.gif" />
                                <asp:ImageButton ID="cmdEditar" runat="server" BorderWidth="1px" BorderStyle="Ridge"
                                    CommandName="Edit" AlternateText="Editar" ImageUrl="~/Images/edit.gif" />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <asp:ObjectDataSource ID="dsIncidencias" runat="server" SelectMethod="getTiposIncidencias"
        TypeName="LOBIncidencias.IncidenciasManager" DeleteMethod="eliminarTiposIncidencias"
        InsertMethod="insertTiposIncidencias" UpdateMethod="actualizarTiposIncidencias">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Object" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="id" Type="Object" />
            <asp:Parameter Name="Definicion" Type="String" />
            <asp:Parameter Name="Coste" Type="Decimal" />
            <asp:Parameter Name="idNivel" Type="Int32" />
            <asp:Parameter Name="idGrupo" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="Definicion" Type="String" />
            <asp:Parameter Name="Coste" Type="Decimal" />
            <asp:Parameter Name="idNivel" Type="Int32" />
            <asp:Parameter Name="idGrupo" Type="Int32" />
        </InsertParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="dsGruposIncidencia" runat="server" SelectMethod="getGrupos"
        TypeName="LOBIncidencias.IncidenciasManager" DeleteMethod="eliminarGrupo" InsertMethod="insertGrupo"
        UpdateMethod="updateGrupo">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="Nombre" Type="String" />
            <asp:Parameter Name="Descripcion" Type="String" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="Nombre" Type="String" />
            <asp:Parameter Name="Descripcion" Type="String" />
        </InsertParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="dsNivelesIncidencia" runat="server" SelectMethod="getNiveles"
        TypeName="LOBIncidencias.IncidenciasManager" DeleteMethod="eliminarNivel" InsertMethod="insertNivel"
        UpdateMethod="updateNivel">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="Descripcion" Type="String" />
            <asp:Parameter Name="Treparacion" Type="Decimal" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="Descripcion" Type="String" />
            <asp:Parameter Name="Treparacion" Type="Decimal" />
        </InsertParameters>
    </asp:ObjectDataSource>
</asp:Content>
