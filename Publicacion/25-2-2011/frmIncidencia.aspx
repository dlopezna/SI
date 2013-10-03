<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/IGM.Master" CodeBehind="frmIncidencia.aspx.cs"
    EnableEventValidation="false" Inherits="WebAdmin.frmIncidencia" %>

<asp:Content ID="contentTitle" runat="server" ContentPlaceHolderID="title">
    Alta Incidencia
</asp:Content>
<asp:Content ID="content1" runat="server" ContentPlaceHolderID="head">

    <script type="text/javascript">
        $(document).ready(function() {

            $('.cmdSave').click(function() {
                alert('');
                var f = $('#frmAddNewIncidencia');
                var serializedForm = f.serialize();
                var isValid = $('#frmAddNewIncidencia').valid();
                alert(isValid);
                if (!isValid) {
                    return false;
                }
            });

            $("#frmAddNewIncidencia").validate({
                rules: {
                    txtFecha: "required",
                    idLocalidad: "required",
                    idCanal: "required",
                    idTipo: "required",
                    idSeccion: "required",
                    MayorEdad: "required",
                    texto: "required",
                    Precio: "number",
                    email: "email",
                    TelefonoFijo: {
                        required: function(element) {
                            return $('#TelefonoMovil').val() == '';
                        },
                        number: true
                    },
                    TelefonoMovil: {
                        required: function(element) {
                            return $('#TelefonoFijo').val() == '';
                        },
                        number: true
                    },
                    EmailControl: {
                        required: true,
                        email: true
                    }
                },
                messages: {
                    txtFecha: "Es necesario especificar una fecha",
                    idLocalidad: "Es necesario especificar la localidad",
                    idCanal: "Es necesario especificar una categor�a",
                    idTipo: "Es necesario especificar un tipo",
                    idSeccion: "Es necesario especificar una secci�n",
                    MayorEdad: "Es necesario ser mayor de edad para insertar un anuncio de Relaciones",
                    texto: "Es necesario especificar una descripci�n del anuncio",
                    precio: "Escriba s�lo valores num�ricos",
                    email: "El formato de tu e-mail no es correcto",
                    TelefonoFijo: {
                        required: "Es necesario especificar un tel�fono (fijo o m�vil)",
                        number: "Escriba s�lo valores num�ricos"
                    },
                    TelefonoMovil: {
                        required: "Es necesario especificar un tel�fono (fijo o m�vil)",
                        number: "Escriba s�lo valores num�ricos"
                    },
                    EmailControl: {
                        required: "Es necesario especificar un e-mail de control",
                        email: "El formato de tu e-mail no es correcto"
                    }
                }
            });

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
        <asp:Button ID="cmdSave" runat="server" Text="Guardar" class="cmdSave" OnClick="cmdSave_Click" />
        <asp:Button ID="cmdCancel" runat="server" Text="Cancelar" />
    </div>
    <div id="divIncidencia" style="display: block">
        <form id="frmAddNewIncidencia" method="post" action="" style="text-align: left;">
        <table style="width: 100%;">
            <tr>
                <td style="width: 50%; vertical-align: top;">
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
                </td>
                <td style="width: 50%; vertical-align: top;">
                    <span class="txtLabel">PLANTA</span><br />
                    <asp:DropDownList ID="cbPlantas" runat="server" DataSourceID="sqlPLANTAS" DataTextField="IDPLANTA"
                        Width="150px" DataValueField="IDINVERSOR" AutoPostBack="True" />
                    <br />
                    <span class="txtLabel">STRING</span><br />
                    <asp:DropDownList ID="cbStrings" runat="server" DataSourceID="sqlSTRINGS" DataTextField="Nserie"
                        Width="150px" DataValueField="Nserie" AutoPostBack="True" />
                        <br />
                        <span class="txtLabel">SEGUIDOR</span><br />
                        <asp:DropDownList ID="cbSeguidores" runat="server" 
                        DataSourceID="sqlSEGUIDORES" DataTextField="NSerie"
                        Width="150px" DataValueField="NSerie" AutoPostBack="True" />
                    
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    Observaciones:</span><br />
                    <asp:TextBox runat="server" ID="txtComentarios" TextMode="MultiLine" Width="100%"
                        Height="100px" />
                </td>
            </tr>
        </table>
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
    <asp:SqlDataSource ID="sqlPLANTAS" runat="server" ConnectionString="<%$ ConnectionStrings:IGMIncidenciasConnectionString %>"
        SelectCommand="SELECT P.Nserie as IDPLANTA, I.Nserie as IDINVERSOR FROM [Plantas] P inner join INVERSORES I on I.ID_PLANTA = P.NSERIE">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlSTRINGS" runat="server" ConnectionString="<%$ ConnectionStrings:IGMIncidenciasConnectionString %>"
        SelectCommand="SELECT [Nserie], [Descripcion] FROM [Strings] WHERE ([ID_INVERSOR] = @ID_INVERSOR)">
        <SelectParameters>
            <asp:ControlParameter ControlID="cbPlantas" Name="ID_INVERSOR" PropertyName="SelectedValue"
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlSEGUIDORES" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:IGMIncidenciasConnectionString %>" 
                        SelectCommand="SELECT [NSerie], [Descripcion] FROM [Seguidores] WHERE ([ID_STRING] = @ID_STRING)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="cbStrings" Name="ID_STRING" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
</asp:Content>
