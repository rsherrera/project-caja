﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_Afiliados.aspx.cs" Inherits="CIP.frm_Afiliados" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="../Styles/DiseñoGrilla.css" rel="stylesheet" type="text/css" />
     <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/Diseñoformularios.css" rel="stylesheet" type="text/css" />
     <script language="javascript" type="text/javascript">
         function formatofecha(fechad) {
             // alert(fechad)
             nbreCampoTxt = '';
             document.getElementById('hdf_fecha').value = '';
             fecha = document.getElementById('txt_fecha');
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
            width: 210px;
        }
                                
        .style24
        {
            width: 83px;
        }
        
        .style29
        {
            text-align: right;
        }
                
        .textoGrilla_2
{
    background-color:#777777;
    color:#777777;
    border-style: none;
    border-color: inherit;
    border-width: medium;
    font-family: Arial;
    font-size: 12px;
    font-style: normal;
    font-weight: normal;
   
    margin-bottom: 0px;
}
        
        </style>
</head>
<body>
   
    <form id="form2" runat="server"> 
     
                                  <asp:HiddenField ID="hdf_tipo" Value="" 
          runat="server" />
                                  <asp:HiddenField ID="hdf_fecha" Value="" 
          runat="server" />
                                  <asp:HiddenField ID="hdf_mail" Value="" 
          runat="server" />
     
    
     <asp:ScriptManager ID="ScriptManager1" runat="server"
        EnableScriptGlobalization="True" EnableScriptLocalization="True" />
    <asp:Panel ID="pnlFondo" runat="server" CssClass="FondoForm" Width="1334px"  
            Height="586px"> 
            <table style="width:100%; ">
                <tr>
                    <td class="TituloForm">
                        &nbsp;</td>
                </tr>
           
           <tr><td>
                
                                <div class="clear hideSkiplink">
                <asp:Menu ID="NavigationMenu" runat="server" CssClass="menu" EnableViewState="false" IncludeStyleBlock="false" Orientation="Horizontal">
                    <Items>
                        <asp:MenuItem NavigateUrl="~/Default.aspx" Text="Afiliado"/>
                        <asp:MenuItem NavigateUrl="~/About.aspx" Text="Aportes"/>
                          <asp:MenuItem NavigateUrl="~/About.aspx" Text="Cuotas"/>
                          <asp:MenuItem NavigateUrl="~/About.aspx" Text="Deudas"/>
                           <asp:MenuItem NavigateUrl="~/About.aspx" Text="Administración"/>
                            <asp:MenuItem NavigateUrl="~/About.aspx" Text="Seguridad"/>
                         <asp:MenuItem NavigateUrl="~/About.aspx" Text="Salir"/>
                    </Items>
                </asp:Menu>
            </div>
                                    
                              
                                    
                               
                  </td></tr>             
                                
                               
                                     </table>
                                    <table style="height: 140px; width: 1200px;">
                                       
          <tr>                                     
                                            <td >                                            
                                                <table style=" height: 183px; width: 389px;">
                                                    <tr>
                                                        <td >
                                                         <fieldset class="login" style="  height: 180px;">
                    <legend>Buscar Afiliado</legend>
                                                            <table style="width: 878px; height: 118px;">
                                                                <tr>
                                                                    <td colspan="5" align="right">
                                                                        &nbsp;&nbsp; &nbsp;&nbsp;
                                                                        <img  src="../Imagenes/Nuevo.gif" />
                                                                        <img  src="../Imagenes/eliminar.gif" />
                                                                        <img  src="../Imagenes/Modificar.gif" />
                                                                        &nbsp; &nbsp;
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label ID="Label11" runat="server" CssClass="Titulolabel" 
                                                                            Text="Dato:"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:DropDownList ID="ddl_dato" runat="server" Width="130px">
                                                                            <asp:ListItem>N° Afiliado</asp:ListItem>
                                                                            <asp:ListItem Selected="True">N° Matricula</asp:ListItem>
                                                                            <asp:ListItem>D.U</asp:ListItem>
                                                                            <asp:ListItem>Apellido y Nombre</asp:ListItem>
                                                                        </asp:DropDownList>
                                                                    </td>
                                                                    <td class="style24">
                                                                        <asp:Label ID="Label45" runat="server" CssClass="Titulolabel" 
                                                                            Text="Descrición:"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_descripcion" runat="server" MaxLength="10" Width="120px"></asp:TextBox>
                                                                        
                                                                    </td>
                                                                    <td>
                                                                        <asp:Button ID="Button2" runat="server" OnClick="btnAceptar_Click" 
                                                                            Text="Buscar" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="style29" colspan="5">
                                                                    <asp:Panel ID="pnlAlto" runat="server" Height="150px" ScrollBars="Auto" 
                        Width="100%">
                                                                        <asp:GridView ID="gv_afiliado" runat="server" AutoGenerateColumns="False" 
                                                                            BackColor="GhostWhite" Width="807px">
                                                                            <Columns>
                                                                                 <asp:BoundField DataField="nroafi" HeaderStyle-HorizontalAlign="Left" 
                                                                                    HeaderText="N° Afiliado">
                                                                                <ItemStyle HorizontalAlign="Left" Width="390px" />
                                                                                </asp:BoundField>
                                                                                <asp:BoundField DataField="matricula" HeaderStyle-HorizontalAlign="Left" 
                                                                                    HeaderText="N° Matricula">
                                                                                <ItemStyle HorizontalAlign="Left" Width="390px" />
                                                                                </asp:BoundField>
                                                                                 <asp:BoundField DataField="nombre" HeaderStyle-HorizontalAlign="Left" 
                                                                                    HeaderText="Apellido y Nombre">
                                                                                <ItemStyle HorizontalAlign="Left" Width="390px" />
                                                                                </asp:BoundField> <asp:BoundField DataField="DU" HeaderStyle-HorizontalAlign="Left" 
                                                                                    HeaderText="D.U">
                                                                                <ItemStyle HorizontalAlign="Left" Width="390px" />
                                                                                </asp:BoundField> <asp:BoundField DataField="profesion" HeaderStyle-HorizontalAlign="Left" 
                                                                                    HeaderText="Frofesión">
                                                                                <ItemStyle HorizontalAlign="Left" Width="390px" />
                                                                                </asp:BoundField> <asp:BoundField DataField="FechaA" HeaderStyle-HorizontalAlign="Left" 
                                                                                    HeaderText="Fecha Ult. Alta">
                                                                                <ItemStyle HorizontalAlign="Left" Width="390px" />
                                                                                </asp:BoundField>
                                                                                <asp:BoundField DataField="Fecham" HeaderStyle-HorizontalAlign="Left" 
                                                                                    HeaderText="Fecha Ult. Modif.">
                                                                                <ItemStyle HorizontalAlign="Left" Width="390px" />
                                                                                </asp:BoundField>



                                                                                <asp:TemplateField HeaderText="Calificación">
                                                                                    <ItemTemplate>
                                                                                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                                                                                            RepeatDirection="Horizontal" TextAlign="Left" Width="850px">
                                                                                        </asp:RadioButtonList>
                                                                                    </ItemTemplate>
                                                                                    <ItemStyle HorizontalAlign="center" />
                                                                                </asp:TemplateField>
                                                                            </Columns>
                                                                            <HeaderStyle CssClass="textoGrilla" />
                                                                            <RowStyle CssClass="textoGrilla_2" />
                                                                        </asp:GridView>
                                                                   </asp:Panel> </td>
                                                                </tr>
                                                            </table>
                                                      
                                                      
                                                      </fieldset>  </td>
                                                    </tr>
                                                    </table>
                                                  
                                                   </td></tr>
                                                    <tr>
                                                        <td style="text-align: center" >
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="text-align: center; font-family: Arial; font-size: large; color: White;" 
                                                            class="style1">
                                                            &nbsp;</td>
                                                    </tr>
                                                </table>
                                           
                                    <table style="width:100%; height: 26px;">
                                        <tr>
                                            <td align="center" class="PieForm">
                                                <asp:Label ID="Label1" runat="server" Activo="True">Copyright 2015 - All Rights reserved</asp:Label>
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                
                                  </asp:Panel> 
    </form>
</body>
</html>
