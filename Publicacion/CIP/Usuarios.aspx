<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="CIP.Usuarios" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="Styles/Diseñoformularios.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style12
        {
            width: 67px;
        }
        .style13
        {
        }
        .style14
        {
            width: 661px;
        }
        .style18
        {
            width: 348px;
        }
        .style19
        {
            height: 36px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Panel ID="pnlFondo" runat="server" CssClass="FondoForm" Width="1352px"  
            Height="715px"> 
            <table style="width:100%;">
                <tr>
                    <td class="TituloForm">
                        <img alt=""  src="Imagenes/logoName.jpg" style="height: 105px; width: 296px"  />
                    </td>
                </tr>
            </table>
 <table style="width: 100%; height: 21px; margin-right: 25px;">
                        <tr>
                            <td style="background-color: #000000;" 
                                colspan="2" align="right">
                            
                           
                                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="MenuForm" 
                                    OnClick="btnsalir_Click">Salir</asp:LinkButton>
                                   
                                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                            
                        </tr>
                        <tr>
                            <td style="font-family:Arial; font-size:large; color:White; " class="style13">
                            
                           
                              
                            
                           
                                &nbsp;</td>
                            <td rowspan="2" class="style14" >
                                 &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" class="style13" 
                                style="font-family:Arial; font-size:large; color:White; ">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style13" style="font-family:Arial; font-size:large; color:White; " 
                                colspan="2" align="center">
                                <table style="border: thin groove #CCCCCC; width: 54%; height: 291px;">
                                    <tr>
                                        <td colspan="2"  align="left"
                                            
                                            style="font-family:Arial; font-size:large; color:White; background-color: #000000;" 
                                            class="style19">
                                            <asp:Label ID="Label4" runat="server" CssClass="Titulosec2" Text="Registrate"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style12" style="font-family:Arial; font-size:large; color:White; ">
                                            <asp:Label ID="Label5" runat="server" CssClass="Titulolabel" Text="Usuario:"></asp:Label>
                                        </td>
                                        <td class="style18" style="font-family:Arial; font-size:large; color:White; ">
                                            <asp:DropDownList ID="ddl_User" runat="server"  Width="350px">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style12" style="font-family:Arial; font-size:large; color:White; ">
                                            <asp:Label ID="Label6" runat="server" CssClass="Titulolabel" Text="Contraseña:"></asp:Label>
                                        </td>
                                        <td align="left" style="font-family:Arial; font-size:large; color:White; ">
                                            <asp:TextBox ID="txt_pass" runat="server" MaxLength="15" TextMode="Password" 
                                                Width="250px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style12" style="font-family:Arial; font-size:large; color:White; ">
                                        </td>
                                        <td class="style18" style="font-family:Arial; font-size:large; color:White; ">
                                            <asp:Label ID="lblError" runat="server" CssClass="Msj"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2" 
                                            style="font-family:Arial; font-size:large; color:White; text-align: center;">
                                            <asp:Button ID="Button1" runat="server" CssClass="Botones" 
                                                OnClick="btn_Aceptar" Text="Aceptar" 
                                                ToolTip="Acceso al Panel de administración" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        </table>
     
   </asp:Panel> 
    </form>
</body>
</html>
