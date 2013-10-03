<%@ Page Language="C#" MasterPageFile="~/IGM.Master" AutoEventWireup="true" CodeBehind="Ordenes.aspx.cs"
    Inherits="WebAdmin.Ordenes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script language="javascript" type="text/javascript">
    function openfrmOrden(){
        
            window.open('frmOrden.aspx',"Orden",'Location=NO, Directories=NO, Width=550,Height=400,Top=200,Resizable=NO,Menubar=NO,Titlebar=NO, Left=150,Toolbar=NO,Status=NO');

    }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <div id="titular">
        Ordenes de Trabajo Activas
    </div>
    <div id="centro">
        <asp:UpdatePanel ID="upd_lvOrdenesA" runat="server">
            <ContentTemplate>
                <asp:ListView ID="lvOrdenesA" runat="server" DataSourceID="dsOrdenes" OnSelectedIndexChanged="CargarOrden">
                    <ItemTemplate>
                        <tr class="elemento">
                            <td>
                                <asp:LinkButton ID="lnkIdOrden" runat="server" Text='<%# Eval("IdOrden") %>' CommandName="Select" />
                            </td>
                            <td>
                                <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                            </td>
                            <td>
                                <asp:Label ID="FechaInicioLabel" runat="server" Text='<%# Eval("FechaInicio","{0:d}") %>' />
                            </td>
                            <td>
                                <asp:Label ID="FechaFinalEstimadaLabel" runat="server" Text='<%# Eval("FechaFinalEstimada","{0:d}") %>' />
                            </td>
                            <td>
                                <asp:Label ID="ObservacionesLabel" runat="server" Text='<%# Eval("Observaciones") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <AlternatingItemTemplate>
                        <tr class="alterno">
                            <td>
                                <asp:LinkButton ID="lnkIdOrden" runat="server" Text='<%# Eval("IdOrden") %>' CommandName="Select" />
                            </td>
                            <td>
                                <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                            </td>
                            <td>
                                <asp:Label ID="FechaInicioLabel" runat="server" Text='<%# Eval("FechaInicio","{0:d}") %>' />
                            </td>
                            <td>
                                <asp:Label ID="FechaFinalEstimadaLabel" runat="server" Text='<%# Eval("FechaFinalEstimada","{0:d}") %>' />
                            </td>
                            <td>
                                <asp:Label ID="ObservacionesLabel" runat="server" Text='<%# Eval("Observaciones") %>' />
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
                        <table runat="server" width="100%">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="0" width="100%" cellpadding="0"
                                        cellspacing="0">
                                        <tr runat="server" class="listview-head">
                                            <th runat="server">
                                                Orden
                                            </th>
                                            <th runat="server">
                                                Descripcion
                                            </th>
                                            <th runat="server">
                                                Fecha Inicio
                                            </th>
                                            <th runat="server">
                                                Fecha Estimada
                                            </th>
                                            <th runat="server">
                                                Observaciones
                                            </th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="">
                                    <asp:DataPager ID="DataPager1" runat="server" PageSize="20">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonType="Image" NextPageImageUrl="~/Images/siguiente.gif"
                                                PreviousPageImageUrl="~/Images/anterior.gif" />
                                        </Fields>
                                    </asp:DataPager>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <tr class="seleccion">
                            <td>
                                <img alt="ver" src="Images/Find.png" onclick="openfrmOrden()" style="vertical-align: middle;" />
                                <asp:Label ID="lblIdOrden" runat="server" Text='<%# Eval("IdOrden") %>' />
                            </td>
                            <td>
                                <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                            </td>
                            <td>
                                <asp:Label ID="FechaInicioLabel" runat="server" Text='<%# Eval("FechaInicio","{0:d}") %>' />
                            </td>
                            <td>
                                <asp:Label ID="FechaFinalEstimadaLabel" runat="server" Text='<%# Eval("FechaFinalEstimada","{0:d}") %>' />
                            </td>
                            <td>
                                <asp:Label ID="ObservacionesLabel" runat="server" Text='<%# Eval("Observaciones") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>
            </ContentTemplate>
        </asp:UpdatePanel>
        <div id="titular">
            Ordenes de Trabajo Cerradas
        </div>
        <asp:UpdatePanel ID="upd_lvOrdenesC" runat="server">
            <ContentTemplate>
                <asp:ListView ID="lvOrdenesC" runat="server" DataSourceID="dsOrdenesCerradas" OnSelectedIndexChanged="CargarOrden">
                    <ItemTemplate>
                        <tr class="elemento">
                            <td>
                                <asp:LinkButton ID="lnkIdOrden" runat="server" Text='<%# Eval("IdOrden") %>' CommandName="Select" />
                            </td>
                            <td>
                                <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                            </td>
                            <td>
                                <asp:Label ID="FechaInicioLabel" runat="server" Text='<%# Eval("FechaInicio","{0:d}") %>' />
                            </td>
                            <td>
                                <asp:Label ID="FechaFinalEstimadaLabel" runat="server" Text='<%# Eval("FechaFinalEstimada","{0:d}") %>' />
                            </td>
                            <td>
                                <asp:Label ID="FechaFin" runat="server" Text='<%# Eval("FechaFinal","{0:d}") %>' />
                            </td>
                            <td>
                                <asp:Label ID="ObservacionesLabel" runat="server" Text='<%# Eval("Observaciones") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <AlternatingItemTemplate>
                        <tr class="alterno">
                            <td>
                                <asp:LinkButton ID="lnkIdOrden" runat="server" Text='<%# Eval("IdOrden") %>' CommandName="Select" />
                            </td>
                            <td>
                                <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion","{0:d}") %>' />
                            </td>
                            <td>
                                <asp:Label ID="FechaInicioLabel" runat="server" Text='<%# Eval("FechaInicio","{0:d}") %>' />
                            </td>
                            <td>
                                <asp:Label ID="FechaFinalEstimadaLabel" runat="server" Text='<%# Eval("FechaFinalEstimada") %>' />
                            </td>
                            <td>
                                <asp:Label ID="FechaFin" runat="server" Text='<%# Eval("FechaFinal","{0:d}") %>' />
                            </td>
                            <td>
                                <asp:Label ID="ObservacionesLabel" runat="server" Text='<%# Eval("Observaciones") %>' />
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
                        <table id="Table2" runat="server" width="100%">
                            <tr id="Tr1" runat="server">
                                <td id="Td1" runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="0" width="100%" cellpadding="0"
                                        cellspacing="0">
                                        <tr id="Tr2" runat="server" class="listview-head">
                                            <th id="Th1" runat="server">
                                                Orden
                                            </th>
                                            <th id="Th2" runat="server">
                                                Descripcion
                                            </th>
                                            <th id="Th3" runat="server">
                                                Fecha Inicio
                                            </th>
                                            <th id="Th4" runat="server">
                                                Fecha Estimada
                                            </th>
                                            <th id="Th6" runat="server">
                                                Fecha Fin
                                            </th>
                                            <th id="Th5" runat="server">
                                                Observaciones
                                            </th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr id="Tr3" runat="server">
                                <td id="Td2" runat="server" style="">
                                    <asp:DataPager ID="DataPager1" runat="server" PageSize="20">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonType="Image" NextPageImageUrl="~/Images/siguiente.gif"
                                                PreviousPageImageUrl="~/Images/anterior.gif" />
                                        </Fields>
                                    </asp:DataPager>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <tr class="seleccion">
                            <td>
                                <img alt="ver" src="Images/Find.png" onclick="openfrmOrden()" style="vertical-align: middle;" />
                                <asp:Label ID="lblIdOrden" runat="server" Text='<%# Eval("IdOrden") %>' />
                            </td>
                            <td>
                                <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                            </td>
                            <td>
                                <asp:Label ID="FechaInicioLabel" runat="server" Text='<%# Eval("FechaInicio","{0:d}") %>' />
                            </td>
                            <td>
                                <asp:Label ID="FechaFinalEstimadaLabel" runat="server" Text='<%# Eval("FechaFinalEstimada","{0:d}") %>' />
                            </td>
                            <td>
                                <asp:Label ID="lblFechaFinal" runat="server" Text='<%# Eval("FechaFinal","{0:d}") %>' />
                            </td>
                            <td>
                                <asp:Label ID="ObservacionesLabel" runat="server" Text='<%# Eval("Observaciones") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <asp:ObjectDataSource ID="dsOrdenes" runat="server" SelectMethod="getOrdenesTrabajo"
        TypeName="LOBIncidencias.OrdenTrabajoManager" />
    <asp:ObjectDataSource ID="dsOrdenesCerradas" runat="server" SelectMethod="getOrdenesTrabajoCerradas"
        TypeName="LOBIncidencias.OrdenTrabajoManager" />
</asp:Content>
