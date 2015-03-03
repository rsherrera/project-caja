<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_ABMAportes.aspx.cs" Inherits="CIP.frm_ABMAportes" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
     <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/Diseñoformularios.css" rel="stylesheet" type="text/css" />
     <script language="javascript" type="text/javascript">
         
         
         function formatofecha(fechad) {
            // alert(fechad)
             nbreCampoTxt = '';
            document.getElementById('hdf_fecha') .value='';
            fecha = document.getElementById('txt_fecha');
            //alert(fecha)
            if (fecha != undefined && fecha.value != "") {
               // alert(fecha.value)

                if (!/^\d{2}\/\d{2}\/\d{4}$/.test(fecha.value)) {

                    alert("Formato de la fecha de vencimiento es incorrecto. Ingrese: (dd/mm/aaaa)");
                    document.getElementById('hdf_fecha').value = 'F';
                    return false;

                }

                var dia = parseInt(fecha.value.substring(0, 2), 10);
                var mes = parseInt(fecha.value.substring(3, 5), 10);
                var anio = parseInt(fecha.value.substring(6), 10);

              
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
                        alert("La fecha de vencimiento  introducida es incorrecta. Los meses no pueden superar a 12");
                        document.getElementById('hdf_fecha').value = 'F';
                        return false;
                }

                if (dia > numDias || dia == 0) {
                    alert("La fecha de vencimiento introducida es incorrecta.Por favor verifique los dias");
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
                                        
        .style29
        {
            height: 134px;
        }
        
        .style30
        {
            height: 29px;
        }
        
        .style31
        {
            width: 239px;
        }
        
        .style35
        {
        }
        
        .style36
        {
            width: 48px;
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
    <asp:Panel ID="pnlFondo" runat="server" CssClass="FondoForm" Width="816px"  
            Height="343px"> 
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
                                    <table style="border: thin groove #dadada; width: 598px;">
                                        <tr>
                                           
                                            <td class="style31" >
                                            
                                                <table style="border: thin groove #FFFFFF;">
                                                    <tr>
                                                       
                                                        <td style="border: thin solid #000000"  >
                                                             <asp:Label ID="Label2" runat="server" CssClass="TituloForm" Text="Aportes"></asp:Label>
                                                                
                                                        </td> 
                                                        </tr>
                                                        </td></tr> 
                                                         <tr>
                                                       
                                                        <td class="style29">
                                                          
                                                          
                                                            
                                                                <table style="width: 786px">
                                                                
                                                                    <tr>
                                                                        <td class="style35" colspan="2">
                                                                            <asp:Label ID="Label38" runat="server" CssClass="Titulolabel" Text="*Periodo:"></asp:Label>
                                                                        </td>
                                                                        <td colspan="8">
                                                                            
                                                                           
                                                                            <asp:DropDownList ID="ddlOPeriodo" runat="server"  Width="209px"  OnSelectedIndexChanged="ddlOPeriodo_SelectedIndexChanged" AutoPostBack="true" >
                                                                            </asp:DropDownList>
                                                                            
                                                                           
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style35" colspan="10">
                                                                             <hr /></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style35" colspan="2">
                                                                            <asp:Label ID="Label36" runat="server" CssClass="Titulolabel" 
                                                                                Text="Aporte1:"></asp:Label>
                                                                        </td>
                                                                        <td >
                                                                            <asp:TextBox ID="txt_Aporte1" runat="server"  Width="120px" Enabled=false></asp:TextBox>
                                                                        </td>
                                                                        <td style="text-align:right;">
                                                                            <asp:Label ID="Label40" runat="server" CssClass="Titulolabel" Text="*Año:"></asp:Label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:DropDownList ID="ddlOAnio1" runat="server" Width="109px"  >
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                        <td style="text-align:right;">
                                                                            <asp:Label ID="Label41" runat="server" CssClass="Titulolabel" Text="Venc.1:"></asp:Label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtOvence1" runat="server" MaxLength="10" Width="80px"></asp:TextBox>
                                                                            <asp:MaskedEditExtender ID="txtOvence1_MaskedEditExtender" runat="server" 
                                                                                Mask="99/99/9999" MaskType="Date" TargetControlID="txtOvence1">
                                                                            </asp:MaskedEditExtender>
                                                                        </td>
                                                                        <td style="text-align:right;">
                                                                            <asp:Label ID="Label42" runat="server" CssClass="Titulolabel" Text="Venc.2:"></asp:Label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtOvence2" runat="server" MaxLength="10" Width="80px"></asp:TextBox>
                                                                            <asp:MaskedEditExtender ID="txtOvence2_MaskedEditExtender" runat="server" 
                                                                                Mask="99/99/9999" MaskType="Date" TargetControlID="txtOvence2">
                                                                            </asp:MaskedEditExtender>
                                                                        </td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                     <tr>
                                                                        <td class="style35" colspan="2">
                                                                            <asp:Label ID="Label3" runat="server" CssClass="Titulolabel" 
                                                                                Text="Aporte2:"></asp:Label>
                                                                        </td>
                                                                        <td >
                                                                            <asp:TextBox ID="txt_Aporte2" runat="server"  Width="120px" Enabled="false"></asp:TextBox>
                                                                        </td>
                                                                        <td style="text-align:right;">
                                                                            <asp:Label ID="Label4" runat="server" CssClass="Titulolabel" Text="*Año:"></asp:Label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:DropDownList ID="ddlOAnio2" runat="server" Width="109px">
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                        <td style="text-align:right;">
                                                                            <asp:Label ID="Label5" runat="server" CssClass="Titulolabel" Text="Venc.1:"></asp:Label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtOVence21" runat="server" MaxLength="10" Width="80px"></asp:TextBox>
                                                                            <asp:MaskedEditExtender ID="txtOvence21_MaskedEditExtender" runat="server" 
                                                                                Mask="99/99/9999" MaskType="Date" TargetControlID="txtOVence21">
                                                                            </asp:MaskedEditExtender>
                                                                        </td>
                                                                        <td style="text-align:right;">
                                                                            <asp:Label ID="Label6" runat="server" CssClass="Titulolabel" Text="Venc.2:"></asp:Label>
                                                                        </td>
                                                                         <td>
                                                                             <asp:TextBox ID="txtOVence22" runat="server" MaxLength="10" Width="80px"></asp:TextBox>
                                                                             <asp:MaskedEditExtender ID="txtOvence22_MaskedEditExtender" runat="server" 
                                                                                 Mask="99/99/9999" MaskType="Date" TargetControlID="txtOVence22">
                                                                             </asp:MaskedEditExtender>
                                                                         </td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                     <tr>
                                                                        <td class="style35" colspan="2">
                                                                            <asp:Label ID="Label7" runat="server" CssClass="Titulolabel" 
                                                                                Text="Aporte3:"></asp:Label>
                                                                        </td>
                                                                        <td >
                                                                            <asp:TextBox ID="txt_Aporte3" runat="server"  Width="120px" Enabled=false></asp:TextBox>
                                                                        </td>
                                                                        <td style="text-align:right;">
                                                                            <asp:Label ID="Label8" runat="server" CssClass="Titulolabel" Text="*Año:"></asp:Label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:DropDownList ID="ddlOAnio3" runat="server" Width="109px">
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                        <td style="text-align:right;">
                                                                            <asp:Label ID="Label9" runat="server" CssClass="Titulolabel" Text="Venc.1:"></asp:Label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtOVence31" runat="server" MaxLength="10" Width="80px"></asp:TextBox>
                                                                            <asp:MaskedEditExtender ID="txtOvence31_MaskedEditExtender" runat="server" 
                                                                                Mask="99/99/9999" MaskType="Date" TargetControlID="txtOVence31">
                                                                            </asp:MaskedEditExtender>
                                                                        </td>
                                                                        <td style="text-align:right;">
                                                                            <asp:Label ID="Label10" runat="server" CssClass="Titulolabel" Text="Venc.2:"></asp:Label>
                                                                        </td>
                                                                         <td>
                                                                             <asp:TextBox ID="txtOVence32" runat="server" MaxLength="10" Width="80px"></asp:TextBox>
                                                                             <asp:MaskedEditExtender ID="txtOvence32_MaskedEditExtender" runat="server" 
                                                                                 Mask="99/99/9999" MaskType="Date" TargetControlID="txtOVence32">
                                                                             </asp:MaskedEditExtender>
                                                                         </td>
                                                                        <td>
                                                                           
                                                                        </td>
                                                                    </tr>
                                                                      <tr>
                                                                        <td class="style35" colspan="10">
                                                                             <hr /></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style35">
                                                                            <asp:Label ID="Label39" runat="server" CssClass="Titulolabel" 
                                                                                Text="Importes:"></asp:Label>
                                                                        </td>
                                                                        <td class="style35">
                                                                            <asp:Label ID="Label11" runat="server" CssClass="Titulolabel" 
                                                                                Text="I"></asp:Label></td>
                                                                        <td style="text-align: left">
                                                                            <asp:TextBox ID="txt_Imp1" runat="server" style="text-align: left" Width="80px"></asp:TextBox>
                                                                        </td>
                                                                        <td style="text-align: right">
                                                                            <asp:Label ID="Label43" runat="server" CssClass="Titulolabel" Text="II"></asp:Label>
                                                                        </td>
                                                                        <td style="text-align: left">
                                                                            <asp:TextBox ID="txt_Imp2" runat="server" Width="80px"></asp:TextBox>
                                                                        </td>
                                                                        <td style="text-align: right">
                                                                             <asp:Label ID="Label12" runat="server" CssClass="Titulolabel" Text="III"></asp:Label>
                                                                        </td></td>
                                                                        <td style="text-align: left">
                                                                              <asp:TextBox ID="TXT_IMP3" runat="server" Width="80px"></asp:TextBox>
                                                                   </td>
                                                                        <td style="text-align: right">
                                                                             <asp:Label ID="Label13" runat="server" CssClass="Titulolabel" Text="IV"></asp:Label>
                                                        </td></td>
                                                                        <td style="text-align: left">
                                                                            <asp:TextBox ID="TXT_IMP4" runat="server" Width="80px"></asp:TextBox>
                                            </td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                </table>
                                                            
                                                    <tr>
                                                        <td class="style30" style="text-align: center" >
                                                            <asp:Label ID="lblmsj" runat="server" CssClass="Msj"></asp:Label></td>
                                                    </tr>
                                                <tr>
                                                    <td class="style30" style="text-align: center">
                                                        <asp:Button ID="btn_aceptaabm" runat="server" OnClick="btnAceptar_Click" 
                                                            Text="Aceptar" />
                                                        <asp:Button ID="btn_cancelaabm" runat="server"  
                                                            Text="Cancelar" />
                                                    </td>
            </tr>
                                                </table>
                                           </td>
                                        </tr>
                                        <tr>
                                            <td class="style31" style="font-family:Arial; font-size:large; color:White; ">
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                    <table style="width:100%; height: 26px;">
                                        <tr>
                                            <td align="center" class="PieForm">
                                                <asp:Label ID="Label1" runat="server" >Copyright 2015 - All Rights reserved</asp:Label>
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                
                                  </asp:Panel> 
                                  <asp:modalpopupextender ID="mpeSeleccion" runat="server" TargetControlID="btnOpcionar"
            PopupControlID="pnlSeleccionarDatos" OkControlID="btn_aceptaabm" CancelControlID="btn_cancelaabm"
            OnOkScript="mpeSeleccionOnOk()" OnCancelScript="mpeSeleccionOnCancel()" DropShadow="True" 
            
            BackgroundCssClass="FondoAplicacion" />

    </form>
</body>
</html>
