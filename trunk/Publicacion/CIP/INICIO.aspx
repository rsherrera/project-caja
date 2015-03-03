<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="INICIO.aspx.cs" Inherits="CIP.INICIO" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="Styles/Diseñoformularios.css" rel="stylesheet" type="text/css" />
     <script language="javascript" type="text/javascript">
         function formatofecha(fechad) {
             // alert(fechad)
             nbreCampoTxt = '';
             document.getElementById('hdf_fecha').value = '';
             fecha = document.getElementById('txt_fechanac');
             //alert(fecha)
             if (fecha != undefined && fecha.value != "") {
                 // alert(fecha.value)

                 if (!/^\d{2}\/\d{2}\/\d{4}$/.test(fecha.value)) {

                     alert("Formato de la fecha de nacimiento es incorrecto. Ingrese: (dd/mm/aaaa)");
                     document.getElementById('hdf_fecha').value = 'F';
                     return false;

                 }

                 var dia = parseInt(fecha.value.substring(0, 2), 10);
                 var mes = parseInt(fecha.value.substring(3, 5), 10);
                 var anio = parseInt(fecha.value.substring(6), 10);

                 if (fecha.value) {
                     var fechaActual = new Date();
                     diaAct = fechaActual.getDate();
                     mesAct = fechaActual.getMonth() + 1;
                     annoAct = fechaActual.getFullYear();
                     if (anio > annoAct) {
                         document.getElementById('hdf_fecha').value = 'F';
                         alert("El año de la fecha de nacimiento NO puede ser superior al dia de hoy.");
                         return false;
                     }
                     else {
                         if (anio < '1900') {
                             document.getElementById('hdf_fecha').value = 'F';
                             alert("El año de la fecha de nacimiento NO puede ser inferior a 1900.");
                             return false;
                         }

                         else {
                             if ((mes > mesAct) && (anio == annoAct)) {
                                 document.getElementById('hdf_fecha').value = 'F';
                                 alert("El Mes de la fecha de nacimiento  NO puede ser superior al dia de hoy.");

                                 return false;
                             }
                             else {
                                 if (anio == annoAct) {
                                     if ((dia > diaAct) && (mes == mesAct)) {
                                         alert("El Día de la fecha de nacimiento  NO puede ser superior al dia de hoy.");
                                         document.getElementById('hdf_fecha').value = 'F';
                                         return false;
                                     }
                                 }
                             }
                         }
                     }
                 }
                 switch (mes) {
                     case 1:
                     case 3:
                     case 5:
                     case 7:
                     case 8:
                     case 10:
                     case 12:
                         numDias = 31;
                         break;
                     case 4: case 6: case 9: case 11:
                         numDias = 30;
                         break;
                     case 2:
                         if ((anio % 4) == 0) { numDias = 29 } else { numDias = 28 };
                         break;
                     default:
                         alert("La fecha de nacimiento  introducida es incorrecta. Los meses no pueden superar a 12");
                         document.getElementById('hdf_fecha').value = 'F';
                         return false;
                 }

                 if (dia > numDias || dia == 0) {
                     alert("La fecha de nacimiento introducida es incorrecta.Por favor verifique los dias");
                     document.getElementById('hdf_fecha').value = 'F';
                     return false;
                 }

                 return true;
             }

         }
         function solonumeros(e) {

             var key;

             if (window.event) // IE
             {
                 key = e.keyCode;
             }
             else if (e.which) // Netscape/Firefox/Opera
             {
                 key = e.which;
             }
             // alert(key)
             if (key != 8 && key != 46) {
                 if (key < 48 || key > 57) {
                     return false;
                 }
             }

             return true;
         }

        </script>
    <style type="text/css">
        .style1
        {
        }
        .style3
        {
        }
        .style11
        {
        }
        .style15
        {
        }
        .style16
        {
            width: 39px;
        }
        .style19
        {
            background-color: #00CCFF;
            width: 214px;
            height: 20px;
            font-family: Calibri;
            font-size: 48px;
            color: #000000;
            text-align: left;
        }
        .style20
        {
            height: 31px;
        }
        </style>
</head>
<body>

    <form id="form1" runat="server"><asp:ScriptManager ID="ScriptManager1" runat="server"
        EnableScriptGlobalization="True" EnableScriptLocalization="True" />
      <table style="background-color: #00CCFF;width:104%; height: 52px;">
                <tr>
                    <td class="style19" align="left" rowspan="2">
                        <img alt=""  src="Imagenes/logoName.jpg" style="height: 105px; width: 226px"  />
                    </td>
                    <td align="left" class="TituloForm">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="center" >
                        <table style=" width: 749px; height: 82px;">
                            <tr>
                                <td colspan="4">
                                    <asp:Label ID="lblmsj" runat="server" CssClass="Msj"></asp:Label>
                                </td>
                            </tr>
                            
                            <tr >
                                <td align="center" class="style11">
                                    <asp:Label ID="Label12" runat="server" CssClass="Titulolabel" 
                                        Text="(Ya sos parte del Staff)"></asp:Label>
                                         <asp:Label ID="Label13" runat="server" CssClass="Titulolabel" 
                                        Text="&nbsp;  "></asp:Label>
                                    <asp:Label ID="Label1" runat="server" CssClass="Titulolabel" Text="D.N.I"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_dnibusca" runat="server" MaxLength="8" 
                                        onkeypress="javascript:return solonumeros(event)" style="text-align: left" 
                                        Width="245px" ></asp:TextBox>
                                </td>
                                <td align="center">
                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="MenuFormI" 
                                        Font-Bold="True" OnClick="Encuesta_Click">INGRESAR</asp:LinkButton>
                                </td>
                                <td>
                                    <asp:LinkButton ID="LinkButtonM" runat="server" CssClass="MenuFormI" 
                                        Font-Bold="True" OnClick="Administacion_Click" 
                                        ToolTip="Acceso al Panel de administración">ADMINISTACIÓN</asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4" class="style11" align="left">
                                    &nbsp;</td>
                            </tr>
                            </table>
                    </td>
                </tr>
            </table>
    
      <asp:Panel ID="pnlFondo" runat="server" CssClass="FondoForm" Width="1252px"  
            Height="635px"> 
          
    <table style="width: 99%; height: 21px;">
                        <tr>
                            <td style="font-family:Arial; font-size:large; color:White; " class="style15">
                            
                           
                                &nbsp;</td>
                            <td colspan="2" align="center" >
                                <asp:HiddenField ID="hdf_fecha" runat="server" Value="" />
                            </td><td  style="text-align: right;" >
                                       

                                                 &nbsp;</td>

                        </tr>
                        <tr>
                            <td style="font-family:Arial; font-size:large; color:White; " class="style16" 
                                colspan="2">
                            
                           
                                  &nbsp;</td>
                            <td  style="font-family:Arial; font-size:large; color:White; background-color: #00CCFF; " align="center" >
                                <asp:Label ID="Label2" runat="server" CssClass="Tituloppal" 
                                    Text="Se Parte De Nuestro Staff Exclusivo De Clientes"></asp:Label>
                            </td>
                            <td style="text-align: right">
                                &nbsp;</td>
                            
                        </tr>
                        <tr>
                            <td class="style15" colspan="4" align="center">
                                &nbsp;<table style="border: thin groove #FFFFFF; width: 56%; height: 371px;">
                                    <tr>
                                        <td align="left" colspan="2" 
                                            
                                            style="font-family:Arial; font-size:large; color:White; background-color: #000000;" 
                                            class="style20">
                                            <asp:Label ID="Label4" runat="server" CssClass="Titulosec2" Text="Registrate"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="font-family:Arial; font-size:large; color:White; ">
                                            <asp:Label ID="Label5" runat="server" CssClass="Titulolabel" Text="Apellido:"></asp:Label>
                                        </td>
                                        <td align="left" style="font-family:Arial; font-size:large; color:White; ">
                                            <asp:TextBox ID="txt_apellido" runat="server" MaxLength="80" 
                                                onkeypress="javascript:this.value=this.value.toUpperCase();" Width="350px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="font-family:Arial; font-size:large; color:White; ">
                                            <asp:Label ID="Label6" runat="server" CssClass="Titulolabel" Text="Nombre:"></asp:Label>
                                        </td>
                                        <td align="left"style="font-family:Arial; font-size:large; color:White; ">
                                            <asp:TextBox ID="txt_nombre" runat="server" MaxLength="80" 
                                                onkeypress="javascript:this.value=this.value.toUpperCase();" Width="350px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left"style="font-family:Arial; font-size:large; color:White; ">
                                            <asp:Label ID="Label7" runat="server" CssClass="Titulolabel" Text="D.N.I:"></asp:Label>
                                        </td>
                                        <td align="left"style="font-family:Arial; font-size:large; color:White; ">
                                            <asp:TextBox ID="txt_dni" runat="server" MaxLength="8" 
                                                onkeypress="javascript:return solonumeros(event)" Width="250px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="font-family:Arial; font-size:large; color:White; ">
                                            <asp:Label ID="Label8" runat="server" CssClass="Titulolabel" Text="Email:"></asp:Label>
                                        </td>
                                        <td align="left"style="font-family:Arial; font-size:large; color:White; ">
                                            <asp:TextBox ID="txt_email" runat="server" MaxLength="200" Width="350px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="font-family:Arial; font-size:large; color:White; ">
                                            <asp:Label ID="Label9" runat="server" CssClass="Titulolabel" 
                                                Text="Fecha Nacimento:"></asp:Label>
                                        </td>
                                        <td align="left" style="font-family:Arial; font-size:large; color:White; ">
                                            <asp:TextBox ID="txt_fechanac" runat="server" MaxLength="10" Width="200px"></asp:TextBox>
                                            <asp:MaskedEditExtender ID="txt_fechanac_MaskedEditExtender" runat="server" 
                                                Mask="99/99/9999" MaskType="Date" TargetControlID="txt_fechanac">
                                            </asp:MaskedEditExtender>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left"style="font-family:Arial; font-size:large; color:White; ">
                                            <asp:Label ID="Label10" runat="server" CssClass="Titulolabel" Text="Celular:"></asp:Label>
                                        </td>
                                        <td align="left"style="font-family:Arial; font-size:large; color:White; ">
                                            <asp:TextBox ID="txt_celu" runat="server" MaxLength="20" 
                                                onkeypress="javascript:return solonumeros(event)" Width="200px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="font-family:Arial; font-size:large; color:White; ">
                                            <asp:Label ID="Label11" runat="server" CssClass="Titulolabel" 
                                                Text="Posse Cuenta corriente?"></asp:Label>
                                        </td>
                                        <td align="left"style="font-family:Arial; font-size:large; color:White; ">
                                            <asp:CheckBox ID="cbx_cta" runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style3" colspan="2" 
                                            style="font-family:Arial; font-size:large; color:White; ">
                                            <asp:Label ID="lblmsj0" runat="server" CssClass="Msj"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style1" colspan="2" 
                                            style="font-family:Arial; font-size:large; color:White; text-align: center;">
                                            <asp:Button ID="Button1" runat="server" CssClass="Botones" 
                                                OnClick="btnAceptar_Click" Text="Aceptar" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>

                          <tr>
                            <td style="font-family:Arial; font-size:large; color:White; " class="style16" 
                                colspan="2">
                            
                           
                                  &nbsp;</td>
                            <td  style="font-family:Arial; font-size:large; color:White;  " align="center" >
                                &nbsp;</td>
                            <td style="text-align: right">
                                &nbsp;</td>
                            
                        </tr>
                        <tr>
                            <td class="style16" colspan="2" 
                                style="font-family:Arial; font-size:large; color:White; ">
                                &nbsp;</td>
                            <td align="center" 
                                style="font-family:Arial; font-size:large; color:White; background-color: #00CCFF; ">
                                <asp:Label ID="Label3" runat="server" CssClass="Tituloppal" 
                                    
                                    Text="Registra tus datos Personales y recibe toda la información sobre ALGAR"></asp:Label>
                            </td>
                            <td style="text-align: right">
                                &nbsp;</td>
                        </tr>
                        </table>
   
   </asp:Panel> 
    </form>
</body>
</html>
