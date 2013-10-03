<%@ Page Language="C#" Culture="auto" UICulture="auto" EnableEventValidation="false"
    MasterPageFile="~/IGM.Master" AutoEventWireup="true" CodeBehind="Seguimiento.aspx.cs"
    Inherits="WebAdmin.Seguimiento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script language="javascript" type="text/javascript">
    function openfrmIncidencia(){
        
            window.open('frmIncidencia.aspx',"Incidencias",'Location=NO, Directories=NO, Width=450,Height=320,Top=200,Resizable=NO,Menubar=NO,Titlebar=NO, Left=150,Toolbar=NO,Status=NO');

    }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <div id="titular">
        Seguimiento de Plantas</div>
    <div id="centro">
        <asp:UpdatePanel ID="updizda" runat="server">
            <ContentTemplate>
                <asp:ListView ID="lvPlantas" runat="server" DataSourceID="dsPlantas" OnSelectedIndexChanged="SeleccionPlanta"
                    OnSelectedIndexChanging="lvPlantas_SelectedIndexChanging">
                    <ItemTemplate>
                        <tr class="elemento">
                            <td>
                                <asp:LinkButton ID="cmdPlanta" CommandName="Select" runat="server" Text='<%# Eval("NSerie") %>' />
                            </td>
                            <td>
                                <asp:Label ID="lblDescripcion" runat="server" Text='<%# Eval("Descripcion") %>' />
                            </td>
                            <td>
                                <asp:Label ID="lblUltimaRevision" runat="server" Text='<%# Eval("Ultima_Revision") %>' />
                            </td>
                            <td>
                                <asp:Label ID="lblUltimaIncidencia" runat="server" Text='<%# Eval("Ultima_Incidencia") %>' />
                            </td>
                            <td>
                                <asp:Label ID="txtE_total" runat="server" Text='<%#Eval("E_total") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <AlternatingItemTemplate>
                        <tr class="alterno">
                            <td>
                                <asp:LinkButton ID="cmdPlanta" CommandName="Select" runat="server" Text='<%# Eval("NSerie") %>' />
                            </td>
                            <td>
                                <asp:Label ID="lblDescripcion" runat="server" Text='<%# Eval("Descripcion") %>' />
                            </td>
                            <td>
                                <asp:Label ID="lblUltimaRevision" runat="server" Text='<%# Eval("Ultima_Revision") %>' />
                            </td>
                            <td>
                                <asp:Label ID="lblUltimaIncidencia" runat="server" Text='<%# Eval("Ultima_Incidencia") %>' />
                            </td>
                            <td>
                                <asp:Label ID="txtE_total" runat="server" Text='<%#Eval("E_total") %>' />
                            </td>
                        </tr>
                    </AlternatingItemTemplate>
                    <EmptyDataTemplate>
                        <center>
                            <table id="Table1" runat="server" style="">
                                <tr>
                                    <td align="center">
                                        <img alt="Warning" src="Images/warning-64.png" style="vertical-align: middle;" />
                                        <span class="aviso" style="vertical-align: middle;">No se han devuelto datos.</span>
                                    </td>
                                </tr>
                            </table>
                        </center>
                    </EmptyDataTemplate>
                    <LayoutTemplate>
                        <table runat="server" width="100%" cellpadding="0" cellspacing="0">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="0" style="" width="100%"
                                        cellpadding="0" cellspacing="0">
                                        <tr runat="server" class="listview-head">
                                            <th runat="server">
                                                Número Serie
                                            </th>
                                            <th id="Th1" runat="server">
                                                Descripción
                                            </th>
                                            <th id="Th2" runat="server">
                                                Última Revisión
                                            </th>
                                            <th id="Th3" runat="server">
                                                Última Incidencia
                                            </th>
                                            <th id="Th4" runat="server">
                                                E-Total
                                            </th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="">
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
                    <SelectedItemTemplate>
                        <tr class="seleccion">
                            <td>
                                <asp:Label ID="hfPlanta" runat="server" Text='<%# Eval("NSerie") %>' />
                            </td>
                            <td>
                                <asp:Label ID="lblDescripcion" runat="server" Text='<%# Eval("Descripcion") %>' />
                            </td>
                            <td>
                                <asp:Label ID="lblUltimaRevision" runat="server" Text='<%# Eval("Ultima_Revision") %>' />
                            </td>
                            <td>
                                <asp:Label ID="lblUltimaIncidencia" runat="server" Text='<%# Eval("Ultima_Incidencia") %>' />
                            </td>
                            <td>
                                <asp:Label ID="txtE_total" runat="server" Text='<%#Eval("E_total") %>' />
                            </td>
                        </tr>
                        <tr class="seleccion">
                            <td colspan="5" style="vertical-align: middle;">
                                <asp:ImageButton ID="cmdActualizar" ImageUrl="~/Images/aceptada.gif" BorderStyle="Ridge"
                                    BorderWidth="1px" AlternateText="Guardar Información" runat="server" OnClick="ActualizarPlanta"
                                    Style="vertical-align: middle;" />
                                <img id="cmdOpenIncidencia" alt="Crear Incidencia" src="Images/atencion.gif" style="border: 1px;
                                    border-style: ridge; cursor: hand;" onclick="openfrmIncidencia()" style="vertical-align: middle;" />
                                <asp:ImageButton ID="cmdVerHistorial" BorderStyle="Ridge" BorderWidth="1px" runat="server"
                                    ImageUrl="~/Images/find.png" AlternateText="Historial de Seguimiento" OnClick="irAHistorial"
                                    Style="vertical-align: middle;" />
                                <span style="vertical-align: middle;">Potencia:</span>
                                <asp:TextBox ID="txtPac" Width="70px" runat="server" Style="vertical-align: middle;" />
                                <span style="vertical-align: middle;">E-Hoy: </span>
                                <asp:TextBox ID="txtE_hoy" Width="70px" runat="server" Style="vertical-align: middle;" />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>
                <center>
                    <asp:Label ID="lblError" runat="server" CssClass="error" /></center>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <asp:ObjectDataSource ID="dsPlantas" runat="server" SelectMethod="getComponentes"
        TypeName="LOBIncidencias.Planta"></asp:ObjectDataSource>
</asp:Content>
