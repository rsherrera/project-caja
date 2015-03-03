<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_Aportes.aspx.cs" Inherits="CIP.frm_Aportes" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
     <script language="javascript" type="text/javascript" src="../JSEstilos/Eventos_Gridview.js"></script>
    <link href="../Styles/DiseñoGrilla.css" rel="stylesheet" type="text/css" />
     <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/Diseñoformularios.css" rel="stylesheet" type="text/css" />
     <script language="javascript" type="text/javascript">

         function editaFila(idx) {
             document.getElementById('hdf_idxReg').value = idx;
            
        }
        function mpeSeleccionOnCancel() {

        }

        function mpemodiOnCancel() {

        }
        function eliminafila() {
           // alert(document.getElementById('hdf_idxReg').value)
            if (document.getElementById('hdf_idxReg').value != "" && document.getElementById('hdf_idxReg').value!="-1") {
                if (confirm("¿Esta seguro que desea eliminar los Aporte del trimestre?")) {
                    document.getElementById("hdf_elimina").value = "ok"
                    return true;
                }
                else {
                    document.getElementById("hdf_elimina").value = "cancela"

                }
            }
        }

        function validaN() {
             
               if (document.getElementById('txtOvence1').value != '') 
                {
                    if (validafecha('txtOvence1') == false) {
                     document.getElementById('hdf_fecha').value = "F";
                     return false;
                    }
                    else document.getElementById('hdf_fecha').value = "T";
                }
                else document.getElementById('hdf_fecha').value = "T";

                if (document.getElementById('txtOvence2').value != '') {
                    if (validafecha('txtOvence2') == false) {
                       document.getElementById('hdf_fecha').value = "F";
                        return false;
                    }
                    else document.getElementById('hdf_fecha').value = "T";
                }
                else document.getElementById('hdf_fecha').value = "T";
          
            if (document.getElementById('txtOVence21').value != '') {
                if (validafecha('txtOVence21') == false) {
                    document.getElementById('hdf_fecha').value = "F";
                    return false;
                }
                else document.getElementById('hdf_fecha').value = "T";
            }
            else document.getElementById('hdf_fecha').value = "T";
            if (document.getElementById('txtOVence22').value != '') {
                if (validafecha('txtOVence22') == false) {
                    document.getElementById('hdf_fecha').value = "F";
                    return false;
                }
                else document.getElementById('hdf_fecha').value = "T";
            } 
            else document.getElementById('hdf_fecha').value = "T";
            if (document.getElementById('txtOVence31').value != '') {
                if (validafecha('txtOVence31') == false) {
                    document.getElementById('hdf_fecha').value = "F";
                    return false;
                }
                else document.getElementById('hdf_fecha').value = "T";
            }
            else document.getElementById('hdf_fecha').value = "T";
            if (document.getElementById('txtOVence32').value != '') {
                if (validafecha('txtOVence32') == false) {
                    document.getElementById('hdf_fecha').value = "F";
                    return false;
                }
                else document.getElementById('hdf_fecha').value = "T";
            }
            else document.getElementById('hdf_fecha').value = "T";
            return true;
         }


         function validaM() {

             if (document.getElementById('txtOvence1m').value != '') {
                 if (validafecha('txtOvence1m') == false) {
                     document.getElementById('hdf_fecha').value = "F";
                     return false;
                 }
                 else document.getElementById('hdf_fecha').value = "T";
             }
             else document.getElementById('hdf_fecha').value = "T";

             if (document.getElementById('txtOvence2m').value != '') {
                 if (validafecha('txtOvence2m') == false) {
                     document.getElementById('hdf_fecha').value = "F";
                     return false;
                 }
                 else document.getElementById('hdf_fecha').value = "T";
             }
             else document.getElementById('hdf_fecha').value = "T";

             if (document.getElementById('txtOVence21m').value != '') {
                 if (validafecha('txtOVence21m') == false) {
                     document.getElementById('hdf_fecha').value = "F";
                     return false;
                 }
                 else document.getElementById('hdf_fecha').value = "T";
             }
             else document.getElementById('hdf_fecha').value = "T";
             if (document.getElementById('txtOVence22m').value != '') {
                 if (validafecha('txtOVence22m') == false) {
                     document.getElementById('hdf_fecha').value = "F";
                     return false;
                 }
                 else document.getElementById('hdf_fecha').value = "T";
             }
             else document.getElementById('hdf_fecha').value = "T";
             if (document.getElementById('txtOVence31m').value != '') {
                 if (validafecha('txtOVence31m') == false) {
                     document.getElementById('hdf_fecha').value = "F";
                     return false;
                 }
                 else document.getElementById('hdf_fecha').value = "T";
             }
             else document.getElementById('hdf_fecha').value = "T";
             if (document.getElementById('txtOVence32m').value != '') {
                 if (validafecha('txtOVence32m') == false) {
                     document.getElementById('hdf_fecha').value = "F";
                     return false;
                 }
                 else document.getElementById('hdf_fecha').value = "T";
             }
             else document.getElementById('hdf_fecha').value = "T";
             return true;
         }


        function validafecha(campof) {
          fecha = document.getElementById(campof);
          if (fecha != undefined && fecha.value != "") {
               // alert('***'+fecha.value+'***');

                if (!/^\d{2}\/\d{2}\/\d{4}$/.test(fecha.value)) {

                    alert("formato de fecha no válido (dd/mm/aaaa)");
                    fecha.focus();
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
                        alert("Fecha introducida errónea. Los meses no pueden superar a 12");
                        fecha.focus();
                        return false;
                }

                if (dia > numDias || dia == 0) {
                    alert("Fecha introducida errónea. Los dias no son correctos");
                    fecha.focus();
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
   .CajaDialogo
        {
            background-color: #dadada;
            border-width: 1px;
            border-style: none;
            border-color: #000000;
            padding: 0px;
            width: 580px;
            font-weight: bold;
            font-style: italic;
        }
        .CajaDialogo div
        {
            margin: 0px;
            text-align: center;
        }
        /* .... */.FondoAplicacion
        {
            background-color: Gray;
            filter: alpha(opacity=70);
            opacity: 0.7;
        }     
        </style>
</head>
<body>
   
    <form id="form2" runat="server"> 
     <asp:HiddenField ID="hdf_idxReg" runat="server" Value="-1" />
                                  <asp:HiddenField ID="hdf_anio" Value="" 
          runat="server" />
           <asp:HiddenField ID="hdf_mes" Value="" 
          runat="server" />
                                  <asp:HiddenField ID="hdf_fecha" Value="" 
          runat="server" />
                                  <asp:HiddenField ID="hdf_elimina" Value="" 
          runat="server" />
     
    
     <asp:ScriptManager ID="ScriptManager1" runat="server"
        EnableScriptGlobalization="True" EnableScriptLocalization="True" />
    <asp:Panel ID="pnlFondo" runat="server" CssClass="FondoForm" Width="920px"  
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
                        <asp:MenuItem NavigateUrl="~/Afiliados/frm_ABMAfiliadosU.aspx" Text="Afiliado"/>
                        <asp:MenuItem NavigateUrl="~/Afiliados/frm_Aportes.aspx" Text="Aportes" />
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
                                    <table style="height: 140px; width: 850px; margin-right: 0px;">
                                       
          <tr>                                     
                                            <td >                                            
                                                <table style=" height: 183px; width: 420px; margin-top:-50px">
                                                    <tr>
                                                        <td >
                                                         <fieldset class="login" style="  height: 80px;">
                    <legend>Buscar Aporte</legend>
                                                            <table style="width: 878px; height: 420px;">
                                                                <tr>
                                                                    <td colspan="3" align="center">
                                                                        
                                                                       
                                                                        <asp:Label ID="Resultados" runat="server" CssClass="Titulolabel2" 
                                                                            style="font-weight:bold"></asp:Label>
                                                                        
                                                                       
                                                                        &nbsp;
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="text-align: right">
                                                                        <asp:Label ID="Label11" runat="server" CssClass="Titulolabel" 
                                                                            Text="Aporte:"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:DropDownList ID="ddl_aporte" runat="server" Width="190px">
                                                                        </asp:DropDownList>
                                                                        <asp:Button ID="Button2" runat="server" OnClick="btnBuscar_Click" 
                                                                            Text="Buscar" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:ImageButton ID="btnnvo" runat="server" OnClick="btnnvoOpen_Click" 
                                                                            src="../Imagenes/nuevo.gif"  ToolTip=" - Nuevo Aporte - "/>
                                                                        <asp:ImageButton ID="img_ElimiSeleccinados" runat="server" border="0" 
                                                                            ImageUrl="../Imagenes/eliminar.gif" onclick="img_ElimiSeleccinados_Click" 
                                                                            ToolTip=" - Elimina Aporte - " />
                                                                        <asp:ImageButton ID="btnmodi" runat="server" OnClick="btnmodiOpen_Click" 
                                                                            src="../Imagenes/Modificar.gif"  ToolTip=" - Modifica Aporte - " />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="text-align: right">
                                                                        &nbsp;</td>
                                                                    <td>
                                                                         &nbsp;</td>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="style29" colspan="3">
                                                                    <asp:Panel ID="pnlAlto" runat="server" Height="350px" ScrollBars="Auto" 
                        Width="100%">
                                                                        <asp:GridView ID="gv_aportevence" runat="server" AutoGenerateColumns="False" 
                                                                            BackColor="#FFFF99" Width="807px" OnRowDataBound="gv_aportevence_RowDataBound">
                                                                            <Columns>
                                                                         <asp:BoundField DataField="id" Visible="False">
                                                                        <ItemStyle HorizontalAlign="Right" Width="80px" />
                                                                        </asp:BoundField>
                                                                        <asp:BoundField DataField="mes" Visible="False">
                                                                        <ItemStyle HorizontalAlign="Right" Width="80px" />
                                                                        </asp:BoundField>
                                                                        <asp:BoundField DataField="anio" Visible="False">
                                                                        <ItemStyle HorizontalAlign="Right" Width="80px" />
                                                                        </asp:BoundField>
                                                                        <asp:BoundField DataField="trimestre" Visible="False">
                                                                        <ItemStyle HorizontalAlign="Right" Width="80px" />
                                                                        </asp:BoundField>
                                                                                 <asp:BoundField DataField="periodo" HeaderStyle-HorizontalAlign="Left" 
                                                                                    HeaderText="Periodo Aporte">
                                                                                <ItemStyle HorizontalAlign="Left" Width="390px" />
                                                                                </asp:BoundField>
                                                                                <asp:BoundField DataField="Aporte" HeaderStyle-HorizontalAlign="Left" 
                                                                                    HeaderText="Aporte">
                                                                                <ItemStyle HorizontalAlign="Left" Width="390px" />
                                                                                </asp:BoundField>
                                                                                 <asp:BoundField DataField="vencim1" HeaderStyle-HorizontalAlign="Left" 
                                                                                    HeaderText="Vencimiento1">
                                                                                <ItemStyle HorizontalAlign="Left" Width="390px" />
                                                                                </asp:BoundField> <asp:BoundField DataField="vencim2" HeaderStyle-HorizontalAlign="Left" 
                                                                                    HeaderText="Vencimiento2">
                                                                                <ItemStyle HorizontalAlign="Left" Width="390px" />
                                                                                </asp:BoundField> <asp:BoundField DataField="ImporteV1N1" HeaderStyle-HorizontalAlign="Left" 
                                                                                    HeaderText="Valor Nivel1">
                                                                                <ItemStyle HorizontalAlign="Left" Width="390px" />
                                                                                </asp:BoundField> <asp:BoundField DataField="ImporteV1N2" HeaderStyle-HorizontalAlign="Left" 
                                                                                    HeaderText="Valor Nivel2">
                                                                                <ItemStyle HorizontalAlign="Left" Width="390px" />
                                                                                </asp:BoundField>
                                                                                <asp:BoundField DataField="ImporteV1N3" HeaderStyle-HorizontalAlign="Left" 
                                                                                    HeaderText="Valor Nivel3">
                                                                                <ItemStyle HorizontalAlign="Left" Width="390px" />
                                                                                </asp:BoundField>

                                                                               
                                                                                <asp:BoundField DataField="ImporteV1N4" HeaderStyle-HorizontalAlign="Left" 
                                                                                    HeaderText="Valor Nivel4">
                                                                                <ItemStyle HorizontalAlign="Left" Width="390px" />
                                                                                </asp:BoundField>


                                                                                </Columns>
                                                                            <HeaderStyle CssClass="textoGrilla" />
                                                                            <RowStyle CssClass="textoGrilla2"  />
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
                                          <asp:Panel ID="pnlnvoDatos"  runat="server" CssClass="CajaDialogo" 
                                      Style="display:none ;" Height="241px" Width="593px">
                                        
                                        
                                       
          
            <div>
                                                           
                                               
                                                           
                                                           <table style="border: thin solid #000000; width: 590px; background-color: #999999; height: 239px;">
                                       
                                                 
                                                          
                                                            
                                                              
                                                                
                                                                   
                                                                        <tr>
                                                                    
                                                                    <td style="padding: 3px; background-color: #0033CC; color: #FFFFFF;" colspan="10">
                                                                 <asp:Label ID="Label14" runat="server" Text="Nuevo Aporte" />
                                                             
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style35" colspan="2">
                                                                            &nbsp;</td>
                                                                        <td colspan="8" style="text-align:left">
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                        <tr>
                                                                            <td class="style35" colspan="2">
                                                                                <asp:Label ID="Label38" runat="server" CssClass="Titulolabel" Text="*Periodo:"></asp:Label>
                                                                            </td>
                                                                            <td colspan="8" style="text-align:left">
                                                                                <asp:DropDownList ID="ddlOPeriodo" runat="server" AutoPostBack="true" 
                                                                                    OnSelectedIndexChanged="ddlOPeriodo_SelectedIndexChanged" Width="209px">
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
                                                                            <asp:TextBox ID="txt_Aporte1" runat="server"  Width="120px" Enabled="false"></asp:TextBox>
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
                                                                            <asp:TextBox ID="txt_Aporte3" runat="server"  Width="120px" Enabled="false"></asp:TextBox>
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
                                                                                Text="Importes 1° Vencim.:"></asp:Label>
                                                                        </td>
                                                                        <td class="style35">
                                                                            <asp:Label ID="Label2" runat="server" CssClass="Titulolabel" 
                                                                                Text="I"></asp:Label></td>
                                                                        <td style="text-align: left">
                                                                            <asp:TextBox ID="txt_Imp1" runat="server" style="text-align: left" Width="80px" onkeypress="javascript:return solonumeros(event)"></asp:TextBox>
                                                                        </td>
                                                                        <td style="text-align: right">
                                                                            <asp:Label ID="Label43" runat="server" CssClass="Titulolabel" Text="II"></asp:Label>
                                                                        </td>
                                                                        <td style="text-align: left">
                                                                            <asp:TextBox ID="txt_Imp2" runat="server" Width="80px" onkeypress="javascript:return solonumeros(event)"></asp:TextBox>
                                                                        </td>
                                                                        <td style="text-align: right">
                                                                             <asp:Label ID="Label12" runat="server" CssClass="Titulolabel" Text="III"></asp:Label>
                                                                        </td>
                                                                        <td style="text-align: left">
                                                                              <asp:TextBox ID="TXT_IMP3" runat="server" Width="80px" onkeypress="javascript:return solonumeros(event)"></asp:TextBox>
                                                                   </td>
                                                                        <td style="text-align: right">
                                                                             <asp:Label ID="Label13" runat="server" CssClass="Titulolabel" Text="IV"></asp:Label>
                                                        </td>
                                                                        <td style="text-align: left">
                                                                            <asp:TextBox ID="TXT_IMP4" runat="server" Width="80px" onkeypress="javascript:return solonumeros(event)"></asp:TextBox>
                                            </td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                
                                                              <tr>
                                                                        <td class="style35">
                                                                            <asp:Label ID="Label47" runat="server" CssClass="Titulolabel" 
                                                                                Text="2°Vencim.:"></asp:Label>
                                                                        </td>
                                                                        <td class="style35">
                                                                            <asp:Label ID="Label48" runat="server" CssClass="Titulolabel" 
                                                                                Text="I"></asp:Label></td>
                                                                        <td style="text-align: left">
                                                                            <asp:TextBox ID="txt_Imp12" runat="server" style="text-align: left" Width="80px" Enabled="false"></asp:TextBox>
                                                                        </td>
                                                                        <td style="text-align: right">
                                                                            <asp:Label ID="Label49" runat="server" CssClass="Titulolabel" Text="II"></asp:Label>
                                                                        </td>
                                                                        <td style="text-align: left">
                                                                            <asp:TextBox ID="txt_Imp22" runat="server" Width="80px" Enabled="false"></asp:TextBox>
                                                                        </td>
                                                                        <td style="text-align: right">
                                                                             <asp:Label ID="Label50" runat="server" CssClass="Titulolabel" Text="III"></asp:Label>
                                                                        </td>
                                                                        <td style="text-align: left">
                                                                              <asp:TextBox ID="TXT_IMP32" runat="server" Width="80px" Enabled="false"></asp:TextBox>
                                                                   </td>
                                                                        <td style="text-align: right">
                                                                             <asp:Label ID="Label51" runat="server" CssClass="Titulolabel" Text="IV"></asp:Label>
                                                        </td>
                                                                        <td style="text-align: left">
                                                                            <asp:TextBox ID="TXT_IMP42" runat="server" Width="80px" Enabled="false"></asp:TextBox>
                                            </td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                <tr>
                                                        <td class="style30" style="text-align: center" colspan="10" >
                                                            <asp:Label ID="lblmsj" runat="server" CssClass="Msj"></asp:Label></td>
                                                    </tr>
                                                     <tr>
                                                        <td class="style30" style="text-align: center" colspan="10" >
                                                            </td>
                                                    </tr>
                                                <tr>
                                                    <td class="style30" style="text-align: center" colspan="10">
                                                        <asp:Button ID="btn_aceptaabm" runat="server" OnClick="btnAceptarNVO_Click" 
                                                            Text="Aceptar" />
                                                        <asp:Button ID="btn_cancelaabm" runat="server"  
                                                            Text="Cancelar" />
                                                    </td>
            </tr></table>
                                                            
            </div>


       </asp:Panel>  
       <asp:Panel ID="pnlmodiDatos"  runat="server" CssClass="CajaDialogo" Style="display:none ;" Height="241px" Width="593px">
        <div> <table style="border: thin solid #000000; width: 590px; background-color: #999999; height: 239px;">
                  <tr>
                            <td style="padding: 3px; background-color: #0033CC; color: #FFFFFF;" colspan="10">
                                                                 <asp:Label ID="Label15" runat="server" Text="Modificar Aporte" />
                                                             
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style35" colspan="2">
                                                                            &nbsp;</td>
                                                                        <td colspan="8" style="text-align:left">
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                        <tr>
                                                                            <td class="style35" colspan="2">
                                                                                <asp:Label ID="Label16" runat="server" CssClass="Titulolabel" Text="*Periodo:"></asp:Label>
                                                                            </td>
                                                                            <td colspan="8" style="text-align:left">
                                                                                <asp:DropDownList ID="ddlOPeriodoM" runat="server" AutoPostBack="true" 
                                                                                    OnSelectedIndexChanged="ddlOPeriodoM_SelectedIndexChanged" Width="209px">
                                                                                </asp:DropDownList>
                                                                            </td>
                                                                        </tr>
                                                                    <tr>
                                                                        <td class="style35" colspan="10">
                                                                             <hr /></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style35" colspan="2">
                                                                            <asp:Label ID="Label17" runat="server" CssClass="Titulolabel" 
                                                                                Text="Aporte1:"></asp:Label>
                                                                        </td>
                                                                        <td >
                                                                            <asp:TextBox ID="txt_Aporte1m" runat="server"  Width="120px" Enabled="false"></asp:TextBox>
                                                                            <asp:HiddenField ID="hdf_Aporte1" Value=""  runat="server" />
     
                                                                        </td>
                                                                        <td style="text-align:right;">
                                                                            <asp:Label ID="Label18" runat="server" CssClass="Titulolabel" Text="*Año:"></asp:Label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:DropDownList ID="ddlOAnio1m" runat="server" Width="109px"  >
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                        <td style="text-align:right;">
                                                                            <asp:Label ID="Label19" runat="server" CssClass="Titulolabel" Text="Venc.1:"></asp:Label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtOvence1m" runat="server" MaxLength="10" Width="80px"></asp:TextBox>
                                                                            <asp:MaskedEditExtender ID="txtOvence1m_MaskedEditExtender" runat="server" 
                                                                                Mask="99/99/9999" MaskType="Date" TargetControlID="txtOvence1m">
                                                                            </asp:MaskedEditExtender>
                                                                        </td>
                                                                        <td style="text-align:right;">
                                                                            <asp:Label ID="Label20" runat="server" CssClass="Titulolabel" Text="Venc.2:"></asp:Label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtOvence2m" runat="server" MaxLength="10" Width="80px"></asp:TextBox>
                                                                            <asp:MaskedEditExtender ID="txtOvence2m_MaskedEditExtender" runat="server" 
                                                                                Mask="99/99/9999" MaskType="Date" TargetControlID="txtOvence2m">
                                                                            </asp:MaskedEditExtender>
                                                                        </td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                     <tr>
                                                                        <td class="style35" colspan="2">
                                                                            <asp:Label ID="Label21" runat="server" CssClass="Titulolabel" 
                                                                                Text="Aporte2:"></asp:Label>
                                                                        </td>
                                                                        <td >
                                                                            <asp:TextBox ID="txt_Aporte2m" runat="server"  Width="120px" Enabled="false"></asp:TextBox>
                                                                            <asp:HiddenField ID="hdf_Aporte2" Value=""  runat="server" />
     
                                                                        </td>
                                                                        <td style="text-align:right;">
                                                                            <asp:Label ID="Label22" runat="server" CssClass="Titulolabel" Text="*Año:"></asp:Label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:DropDownList ID="ddlOAnio2m" runat="server" Width="109px">
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                        <td style="text-align:right;">
                                                                            <asp:Label ID="Label23" runat="server" CssClass="Titulolabel" Text="Venc.1:"></asp:Label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtOVence21m" runat="server" MaxLength="10" Width="80px"></asp:TextBox>
                                                                            <asp:MaskedEditExtender ID="txtOvence21m_MaskedEditExtender" runat="server" 
                                                                                Mask="99/99/9999" MaskType="Date" TargetControlID="txtOVence21m">
                                                                            </asp:MaskedEditExtender>
                                                                        </td>
                                                                        <td style="text-align:right;">
                                                                            <asp:Label ID="Label24" runat="server" CssClass="Titulolabel" Text="Venc.2:"></asp:Label>
                                                                        </td>
                                                                         <td>
                                                                             <asp:TextBox ID="txtOVence22m" runat="server" MaxLength="10" Width="80px"></asp:TextBox>
                                                                             <asp:MaskedEditExtender ID="txtOvence22m_MaskedEditExtender" runat="server" 
                                                                                 Mask="99/99/9999" MaskType="Date" TargetControlID="txtOVence22m">
                                                                             </asp:MaskedEditExtender>
                                                                         </td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                     <tr>
                                                                        <td class="style35" colspan="2">
                                                                            <asp:Label ID="Label25" runat="server" CssClass="Titulolabel" 
                                                                                Text="Aporte3:"></asp:Label>
                                                                        </td>
                                                                        <td >
                                                                            <asp:TextBox ID="txt_Aporte3m" runat="server"  Width="120px" Enabled="false"></asp:TextBox>
                                                                               <asp:HiddenField ID="hdf_Aporte3" Value=""  runat="server" />
     
                                                                        </td>
                                                                        <td style="text-align:right;">
                                                                            <asp:Label ID="Label26" runat="server" CssClass="Titulolabel" Text="*Año:"></asp:Label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:DropDownList ID="ddlOAnio3m" runat="server" Width="109px">

                                                                            </asp:DropDownList>
                                                                        </td>
                                                                        <td style="text-align:right;">
                                                                            <asp:Label ID="Label27" runat="server" CssClass="Titulolabel" Text="Venc.1:"></asp:Label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtOVence31m" runat="server" MaxLength="10" Width="80px"></asp:TextBox>
                                                                            <asp:MaskedEditExtender ID="txtOvence31m_MaskedEditExtender" runat="server" 
                                                                                Mask="99/99/9999" MaskType="Date" TargetControlID="txtOVence31m">
                                                                            </asp:MaskedEditExtender>
                                                                        </td>
                                                                        <td style="text-align:right;">
                                                                            <asp:Label ID="Label28" runat="server" CssClass="Titulolabel" Text="Venc.2:"></asp:Label>
                                                                        </td>
                                                                         <td>
                                                                             <asp:TextBox ID="txtOVence32m" runat="server" MaxLength="10" Width="80px"></asp:TextBox>
                                                                             <asp:MaskedEditExtender ID="txtOvence32m_MaskedEditExtender" runat="server" 
                                                                                 Mask="99/99/9999" MaskType="Date" TargetControlID="txtOVence32m">
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
                                                                            <asp:Label ID="Label29" runat="server" CssClass="Titulolabel" 
                                                                                Text="Importes 1°Vencim.:"></asp:Label>
                                                                        </td>
                                                                        <td class="style35">
                                                                            <asp:Label ID="Label30" runat="server" CssClass="Titulolabel" 
                                                                                Text="I"></asp:Label></td>
                                                                        <td style="text-align: left">
                                                                            <asp:TextBox ID="txt_Imp1m" runat="server" style="text-align: left" Width="80px" onkeypress="javascript:return solonumeros(event)"></asp:TextBox>
                                                                        </td>
                                                                        <td style="text-align: right">
                                                                            <asp:Label ID="Label31" runat="server" CssClass="Titulolabel" Text="II"></asp:Label>
                                                                        </td>
                                                                        <td style="text-align: left">
                                                                            <asp:TextBox ID="txt_Imp2m" runat="server" Width="80px" onkeypress="javascript:return solonumeros(event)"></asp:TextBox>
                                                                        </td>
                                                                        <td style="text-align: right">
                                                                             <asp:Label ID="Label32" runat="server" CssClass="Titulolabel" Text="III"></asp:Label>
                                                                        </td>
                                                                        <td style="text-align: left">
                                                                              <asp:TextBox ID="TXT_IMP3m" runat="server" Width="80px" onkeypress="javascript:return solonumeros(event)"></asp:TextBox>
                                                                   </td>
                                                                        <td style="text-align: right">
                                                                             <asp:Label ID="Label33" runat="server" CssClass="Titulolabel" Text="IV"></asp:Label>
                                                        </td>
                                                                        <td style="text-align: left">
                                                                            <asp:TextBox ID="TXT_IMP4m" runat="server" Width="80px" onkeypress="javascript:return solonumeros(event)"></asp:TextBox>
                                            </td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                
                                                               <tr>
                                                                        <td class="style35">
                                                                            <asp:Label ID="Label34" runat="server" CssClass="Titulolabel" 
                                                                                Text="2°Vencim.:"></asp:Label>
                                                                        </td>
                                                                        <td class="style35">
                                                                            <asp:Label ID="Label35" runat="server" CssClass="Titulolabel" 
                                                                                Text="I"></asp:Label></td>
                                                                        <td style="text-align: left">
                                                                            <asp:TextBox ID="txt_Imp12m" runat="server" style="text-align: left" Width="80px" Enabled="false"></asp:TextBox>
                                                                        </td>
                                                                        <td style="text-align: right">
                                                                            <asp:Label ID="Label37" runat="server" CssClass="Titulolabel" Text="II"></asp:Label>
                                                                        </td>
                                                                        <td style="text-align: left">
                                                                            <asp:TextBox ID="txt_Imp22m" runat="server" Width="80px" Enabled="false"></asp:TextBox>
                                                                        </td>
                                                                        <td style="text-align: right">
                                                                             <asp:Label ID="Label44" runat="server" CssClass="Titulolabel" Text="III"></asp:Label>
                                                                        </td>
                                                                        <td style="text-align: left">
                                                                              <asp:TextBox ID="TXT_IMP32m" runat="server" Width="80px" Enabled="false"></asp:TextBox>
                                                                   </td>
                                                                        <td style="text-align: right">
                                                                             <asp:Label ID="Label45" runat="server" CssClass="Titulolabel" Text="IV"></asp:Label>
                                                        </td>
                                                                        <td style="text-align: left">
                                                                            <asp:TextBox ID="TXT_IMP42m" runat="server" Width="80px" Enabled="false"></asp:TextBox>
                                            </td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                <tr>
                                                        <td class="style30" style="text-align: center" colspan="10" >
                                                            <asp:Label ID="msjmodi" runat="server" CssClass="Msj"></asp:Label></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style30" style="text-align: center" colspan="10" >
                                                            </td>
                                                    </tr>
                                                <tr>
                                                    <td class="style30" style="text-align: center" colspan="10">
                                                        <asp:Button ID="btn_aceptamodi" runat="server" OnClick="btnAceptarModi_Click" 
                                                            Text="Aceptar" />
                                                        <asp:Button ID="btn_cancelamodi" runat="server"  
                                                            Text="Cancelar" />
                                                    </td>
            </tr></table>
                                                            
            </div>


       </asp:Panel>    
                                    
                                
                                  </asp:Panel>
                                   <asp:HiddenField id="hideen" runat="server" />
                                    <asp:modalpopupextender ID="mpenuevo" runat="server"  TargetControlID="hideen"
            PopupControlID="pnlnvoDatos"  CancelControlID="btn_cancelaabm"
             OnCancelScript="mpeSeleccionOnCancel()" DropShadow="True"            
            BackgroundCssClass="FondoAplicacion" />
            <asp:modalpopupextender ID="mpemodi" runat="server"  TargetControlID="hideen"
            PopupControlID="pnlmodiDatos"  CancelControlID="btn_cancelamodi"
             OnCancelScript="mpemodiOnCancel()" DropShadow="True"            
            BackgroundCssClass="FondoAplicacion" />
    </form>
</body>
</html>
