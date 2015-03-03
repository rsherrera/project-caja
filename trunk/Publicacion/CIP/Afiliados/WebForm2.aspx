<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication1.Afiliados.WebForm2" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<%--<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .CajaDialogo
        {
            background-color: #99ffcc;
            border-width: 4px;
            border-style: outset;
            border-color: Yellow;
            padding: 0px;
            width: 200px;
            font-weight: bold;
            font-style: italic;
        }
        .CajaDialogo div
        {
            margin: 5px;
            text-align: center;
        }
        /* .... */.FondoAplicacion
        {
            background-color: Gray;
            filter: alpha(opacity=70);
            opacity: 0.7;
        }
    </style>

    <script language="javascript" type="text/javascript">
        function mpeSeleccionOnOk() {
            var ddlCiudades = document.getElementById("ddlCiudades");
            var ddlMeses = document.getElementById("ddlMeses");
            var ddlAnualidades = document.getElementById("ddlAnualidades");
            var txtSituacion = document.getElementById("txtSituacion");

            txtSituacion.value = ddlCiudades.options[ddlCiudades.selectedIndex].value + ", " +
            ddlMeses.options[ddlMeses.selectedIndex].value + " de " +
            ddlAnualidades.options[ddlAnualidades.selectedIndex].value;
        }
        function mpeSeleccionOnCancel() {
            var txtSituacion = document.getElementById("txtSituacion");
            txtSituacion.value = "";
            txtSituacion.style.backgroundColor = "#FFFF99";
        }    
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" />
    <div>
        <table border="2">
            <tr>
                <td colspan="2" align="center">
                    <asp:Label ID="Label1" runat="server" Text="Datos de solicitud" Font-Bold="True"
                        Font-Underline="True" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Nombre:" />
                </td>
                <td>
                    <asp:TextBox ID="txtNombre" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="e-mail:" />
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Situación:" />
                </td>
                <td>
                    <asp:TextBox ID="txtSituacion" runat="server" Width="300" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnAsistente" runat="server" Text="Asistente de selección" Width="150" />
                </td>
                <td>
                    <asp:Button ID="btnGrabar" runat="server" Text="Grabar datos" Width="125" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <asp:Panel ID="pnlSeleccionarDatos" runat="server" CssClass="CajaDialogo" Style="display: none;">
            <div style="padding: 10px; background-color: #0033CC; color: #FFFFFF;">
                <asp:Label ID="Label4" runat="server" Text="Seleccionar datos" />
            </div>
            <div>
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="Ciudad:" />
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlCiudades" runat="server">
                                <asp:ListItem>Zamora</asp:ListItem>
                                <asp:ListItem>Teruel</asp:ListItem>
                                <asp:ListItem>Salamanca</asp:ListItem>
                                <asp:ListItem>Sevilla</asp:ListItem>
                                <asp:ListItem>Lugo</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="Mes:" />
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlMeses" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label8" runat="server" Text="Año:" />
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlAnualidades" runat="server" />
                        </td>
                    </tr>
                </table>
            </div>
            <div>
                <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" />
                &nbsp;&nbsp;
                <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" />
            </div>
        </asp:Panel>
        <asp:modalpopupextender ID="mpeSeleccion" runat="server" TargetControlID="btnAsistente"
            PopupControlID="pnlSeleccionarDatos" OkControlID="btnAceptar" CancelControlID="btnCancelar"
            OnOkScript="mpeSeleccionOnOk()" OnCancelScript="mpeSeleccionOnCancel()" DropShadow="True"
            BackgroundCssClass="FondoAplicacion" />
    </div>
    </form>
</body>
</html>