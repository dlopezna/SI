<%@ Page Language="C#" MasterPageFile="~/IGM.Master" AutoEventWireup="true" CodeBehind="Incidencias.aspx.cs" Inherits="WebAdmin.Incidencias" Title="Página sin título" %>
<asp:Content ID="cabecera" ContentPlaceHolderID=head runat="server">
    <title>Administración de Incidencias</title>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="cphMain" runat="server">
    <div id="marco">
<center><span class="titulos"> Administración de Incidencias</span></center>
    <div id="niveles">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:IGMIncidenciasConnectionString %>" 
        SelectCommand="SELECT * FROM [NivelesIncidencia]" 
            ConflictDetection="CompareAllValues" 
            DeleteCommand="DELETE FROM [NivelesIncidencia] WHERE [ID] = @original_ID AND [Descripcion] = @original_Descripcion AND [Treparacion] = @original_Treparacion" 
            InsertCommand="INSERT INTO [NivelesIncidencia] ([Descripcion], [Treparacion]) VALUES (@Descripcion, @Treparacion)" 
            OldValuesParameterFormatString="original_{0}" 
            UpdateCommand="UPDATE [NivelesIncidencia] SET [Descripcion] = @Descripcion, [Treparacion] = @Treparacion WHERE [ID] = @original_ID AND [Descripcion] = @original_Descripcion AND [Treparacion] = @original_Treparacion">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Decimal" />
            <asp:Parameter Name="original_Descripcion" Type="String" />
            <asp:Parameter Name="original_Treparacion" Type="Decimal" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Descripcion" Type="String" />
            <asp:Parameter Name="Treparacion" Type="Decimal" />
            <asp:Parameter Name="original_ID" Type="Decimal" />
            <asp:Parameter Name="original_Descripcion" Type="String" />
            <asp:Parameter Name="original_Treparacion" Type="Decimal" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="Descripcion" Type="String" />
            <asp:Parameter Name="Treparacion" Type="Decimal" />
        </InsertParameters>
        </asp:SqlDataSource>

    <asp:ListView ID="lvNiveles" runat="server" DataKeyNames="ID" 
        DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                        Text="Eliminar" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                </td>
           
                <td>
                    <asp:Label ID="DescripcionLabel" runat="server" 
                        Text='<%# Eval("Descripcion") %>' />
                </td>
                <td>
                    <asp:Label ID="TreparacionLabel" runat="server" 
                        Text='<%# Eval("Treparacion") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <AlternatingItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                        Text="Eliminar" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                </td>
       
                <td>
                    <asp:Label ID="DescripcionLabel" runat="server" 
                        Text='<%# Eval("Descripcion") %>' />
                </td>
                <td>
                    <asp:Label ID="TreparacionLabel" runat="server" 
                        Text='<%# Eval("Treparacion") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>
                        No hay Datos que mostrar</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                        Text="Insertar" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Borrar" />
                </td>
                <td>
                    <asp:TextBox ID="DescripcionTextBox" runat="server" 
                        Text='<%# Bind("Descripcion") %>' />
                </td>
                <td>
                    <asp:TextBox ID="TreparacionTextBox" runat="server" 
                        Text='<%# Bind("Treparacion") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table ID="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr runat="server" style="">
                                <th runat="server">
                                    </th>
                                <th runat="server">
                                    Descripcion</th>
                                <th runat="server">
                                    Treparacion</th>
                            </tr>
                            <tr ID="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                    ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <EditItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                        Text="Actualizar" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Cancelar" />
                </td>
                <td>
                    <asp:TextBox ID="DescripcionTextBox" runat="server" 
                        Text='<%# Bind("Descripcion") %>' />
                </td>
                <td>
                    <asp:TextBox ID="TreparacionTextBox" runat="server" 
                        Text='<%# Bind("Treparacion") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <SelectedItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                        Text="Eliminar" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                </td>
                <td>
                    <asp:Label ID="DescripcionLabel" runat="server" 
                        Text='<%# Eval("Descripcion") %>' />
                </td>
                <td>
                    <asp:Label ID="TreparacionLabel" runat="server" 
                        Text='<%# Eval("Treparacion") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>

        

</div>

    <div id="contenido">

        <asp:ListView ID="lvIncidencias" runat="server" DataKeyNames="ID" 
        DataSourceID="SqlDataSource2" InsertItemPosition="LastItem">
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                        Text="Eliminar" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                </td>
                <td>
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                </td>
                <td>
                    <asp:Label ID="DefinicionLabel" runat="server" 
                        Text='<%# Eval("Definicion") %>' />
                </td>
                <td>
                    <asp:Label ID="CosteLabel" runat="server" Text='<%# Eval("Coste") %>' />
                </td>
                <td>
        
                    <asp:Label ID="NivelLabel" runat="server" Text='<%# Eval("Nivel") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <AlternatingItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                        Text="Eliminar" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                </td>
                <td>
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                </td>
                <td>
                    <asp:Label ID="DefinicionLabel" runat="server" 
                        Text='<%# Eval("Definicion") %>' />
                </td>
                <td>
                    <asp:Label ID="CosteLabel" runat="server" Text='<%# Eval("Coste") %>' />
                </td>
                <td>
                    <asp:Label ID="NivelLabel" runat="server" Text='<%# Eval("Nivel") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>
                        No se han devuelto datos.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                        Text="Insertar" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Borrar" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="DefinicionTextBox" runat="server" 
                        Text='<%# Bind("Definicion") %>' />
                </td>
                <td>
                    <asp:TextBox ID="CosteTextBox" runat="server" Text='<%# Bind("Coste") %>' />
                </td>
                <td>
                                   
                    <asp:TextBox ID="NivelText" runat="server" Text='<%# Bind("Nivel") %>' />
       
                    
                </td>
            </tr>
        </InsertItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table ID="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr runat="server" style="">
                                <th runat="server">
                                </th>
                                <th runat="server">
                                    ID</th>
                                <th runat="server">
                                    Definicion</th>
                                <th runat="server">
                                    Coste</th>
                                <th runat="server">
                                    Nivel</th>
                            </tr>
                            <tr ID="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                    ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <EditItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                        Text="Actualizar" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Cancelar" />
                </td>
                <td>
                    <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="DefinicionTextBox" runat="server" 
                        Text='<%# Bind("Definicion") %>' />
                </td>
                <td>
                    <asp:TextBox ID="CosteTextBox" runat="server" Text='<%# Bind("Coste") %>' />
                </td>
                <td>
                      <asp:DropDownList ID="cbNivel" runat="server"  
                    DataSourceID="SqlDataSource1" DataTextField="Descripcion" DataValueField="ID" 
                    SelectedValue='<%# Bind("Nivel") %>'/>
                </td>
            </tr>
        </EditItemTemplate>
        <SelectedItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                        Text="Eliminar" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                </td>
                <td>
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                </td>
                <td>
                    <asp:Label ID="DefinicionLabel" runat="server" 
                        Text='<%# Eval("Definicion") %>' />
                </td>
                <td>
                    <asp:Label ID="CosteLabel" runat="server" Text='<%# Eval("Coste") %>' />
                </td>
                <td>
                    <asp:Label ID="NivelLabel" runat="server" Text='<%# Eval("Nivel") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:IGMIncidenciasConnectionString %>" 
        DeleteCommand="DELETE FROM [ClasificacionIncidencias] WHERE [ID] = @original_ID AND [Definicion] = @original_Definicion AND [Coste] = @original_Coste AND [Nivel] = @original_Nivel" 
        InsertCommand="INSERT INTO [ClasificacionIncidencias] ([Definicion], [Coste], [Nivel]) VALUES (@Definicion, @Coste, @Nivel)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [ClasificacionIncidencias]" 
        UpdateCommand="UPDATE [ClasificacionIncidencias] SET [Definicion] = @Definicion, [Coste] = @Coste, [Nivel] = @Nivel WHERE [ID] = @original_ID AND [Definicion] = @original_Definicion AND [Coste] = @original_Coste AND [Nivel] = @original_Nivel">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Decimal" />
            <asp:Parameter Name="original_Definicion" Type="String" />
            <asp:Parameter Name="original_Coste" Type="Decimal" />
            <asp:Parameter Name="original_Nivel" Type="Decimal" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Definicion" Type="String" />
            <asp:Parameter Name="Coste" Type="Decimal" />
            <asp:Parameter Name="Nivel" Type="Decimal" />
            <asp:Parameter Name="original_ID" Type="Decimal" />
            <asp:Parameter Name="original_Definicion" Type="String" />
            <asp:Parameter Name="original_Coste" Type="Decimal" />
            <asp:Parameter Name="original_Nivel" Type="Decimal" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="Definicion" Type="String" />
            <asp:Parameter Name="Coste" Type="Decimal" />
            <asp:Parameter Name="Nivel" Type="Decimal" />
        </InsertParameters>
    </asp:SqlDataSource>

    </div>
    
</div>
</asp:Content>
