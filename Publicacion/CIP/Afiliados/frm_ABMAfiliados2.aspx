<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_ABMAfiliados2.aspx.cs" Inherits="CIP.frm_ABMAfiliados2" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
   
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
         function mpeSeleccionOnOk() {
//             var ddlCiudades = document.getElementById("ddlCiudades");
//             var ddlMeses = document.getElementById("ddlMeses");
//             var ddlAnualidades = document.getElementById("ddlAnualidades");
//             var txtSituacion = document.getElementById("txtSituacion");

//             txtSituacion.value = ddlCiudades.options[ddlCiudades.selectedIndex].value + ", " +
//            ddlMeses.options[ddlMeses.selectedIndex].value + " de " +
             //            ddlAnualidades.options[ddlAnualidades.selectedIndex].value;
            
             var ddlONivel = document.getElementById("ddlONivel");
             ddlONivel.value = ddlONivel.options[ddlONivel.selectedIndex].value + ", "
             alert('pasooo' + document.getElementById("ddlONivel")); 
             if (ddlONivel.value == "I")
             { alert('pasooo22222'); }
             else alert('pasooo??');
         }
         function mpeSeleccionOnCancel() {
             var txt_Afiliado = document.getElementById("ddlONivel");
             txt_Afiliado.value = "";
             txt_Afiliado.style.backgroundColor = "#FFFF99";
         }


         function mpeDDOnOk() {
             alert('pasooo??' + document.getElementById('hdf_tipo').value)
             if (document.getElementById('hdf_tipo').value = 'DDAA') {
                 document.getElementById('hdf_BCOAA').value = document.getElementById('txtObanco').value;
              
               alert(document.getElementById('hdf_BCOAA').value);
           }

           else if (document.getElementById('hdf_tipo').value = 'DDAV') {
               document.getElementById("hdf_BCOAV").value = document.getElementById("txtObanco").value;
               alert('ELSE'+document.getElementById('hdf_BCOAV').value);
           }

         }
         function mpeDDOnCancel() {
             alert('pasooo??');
         }

         

        </script>
    <style type="text/css">
        
      
        .CajaDialogo
        {
            background-color: #dadada;
            border-width: 1px;
            border-style: none;
            border-color: #000000;
            padding: 0px;
            width: 400px;
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
    
        .style1
        {
            width: 210px;
        }
                                
        .style22
        {
        }
        
        .style30
        {
            width: 22px;
            height: 22px;
        }
        
        .style32
        {
            width: 47px;
        }
        
        .style33
        {
        }
        
    </style>
</head>
<body>
   
    <form id="form2" runat="server"> 
     
                                    <asp:HiddenField ID="hdf_tipo" Value="" 
          runat="server" />
                                  <asp:HiddenField ID="hdf_CBU" Value="" 
          runat="server" />
                                  <asp:HiddenField ID="hdf_BCOAA" Value="" 
          runat="server" />
     <asp:HiddenField ID="hdf_BCOAV" Value="" 
          runat="server" />
 
     <asp:ScriptManager ID="ScriptManager1" runat="server"
        EnableScriptGlobalization="True" EnableScriptLocalization="True" />
    <asp:Panel ID="pnlFondo" runat="server" CssClass="FondoForm" Width="1334px"  
            Height="569px"> 
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
                                    
                                    <table style="border: thin groove #FF0000; height: 140px; width: 1200px;">
                                        <tr>
                                           
                                            <td >
                                            <fieldset class="login" style="  height: 210px;">
                    <legend>Nuevo Afiliado</legend>
                                                <table style="  height: 167px; ">
                                                      <tr  >
                                                       
                                                        <td  align="right" style="border-right-style: solid; border-right-width: medium; border-right-color: #dadada">
                                                          
                                                          
                      <table >
                                                                <tr>
                                                                    <td class="style22" style="text-align:left">
                                                                        <asp:Label ID="Label20" runat="server" CssClass="Titulolabel" 
                                                                            Text="N°Afiliado:"></asp:Label>
                                                                        <asp:TextBox ID="txt_Afiliado" runat="server" MaxLength="80" Width="80px"></asp:TextBox>
                                                                    </td>
                                                                    <td class="style22"style="text-align:left">
                                                                        <asp:Label ID="Label21" runat="server" CssClass="Titulolabel" 
                                                                            Text="*N°Matricula:"></asp:Label>
                                                                        <asp:TextBox ID="txt_matricula" runat="server" MaxLength="8" Width="100px"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="style22"style="text-align:left">
                                                                        <asp:Label ID="Label15" runat="server" CssClass="Titulolabel" Text="*Apellido:"></asp:Label>
                                                                        <asp:TextBox ID="txt_Apellido" runat="server"  MaxLength="80" 
                                                                            onkeypress="javascript:this.value=this.value.toUpperCase();" Width="155px" 
                                                                            ></asp:TextBox>
                                                                    </td>
                                                                    <td class="style22"style="text-align:left" >
                                                                        <asp:Label ID="Label14" runat="server" CssClass="Titulolabel" Text="*Nombre:"></asp:Label>
                                                                        <asp:TextBox ID="txt_Nom" runat="server" MaxLength="80" 
                                                                            onkeypress="javascript:this.value=this.value.toUpperCase();" Width="155px" 
                                                                            style="text-align: left"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="style22" style="text-align:left">
                                                                        <asp:Label ID="Label5" runat="server" CssClass="Titulolabel" 
                                                                            Text="*Fecha de  Nacimiento:"></asp:Label>
                                                                        <asp:TextBox ID="txt_fecha" runat="server" MaxLength="10" Width="70px"></asp:TextBox>
                                                                        <asp:MaskedEditExtender ID="txt_fecha_MaskedEditExtender" runat="server" 
                                                                            Mask="99/99/9999" MaskType="Date" TargetControlID="txt_fecha">
                                                                        </asp:MaskedEditExtender>
                                                                    </td>
                                                                    <td class="style22">
                                                                        <asp:Label ID="Label22" runat="server" CssClass="Titulolabel" Text="Sexo:"></asp:Label>
                                                                        <asp:DropDownList ID="ddl_sexo" runat="server" Width="130px">
                                                                        </asp:DropDownList>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="style22" style="text-align:left">
                                                                        <asp:Label ID="Label24" runat="server" CssClass="Titulolabel" Text="*Tipo Doc:"></asp:Label>
                                                                        <asp:DropDownList ID="ddlODocu" runat="server" Width="140px">
                                                                        </asp:DropDownList>
                                                                    </td>
                                                                    <td class="style22" >
                                                                        <asp:Label ID="Label16" runat="server" CssClass="Titulolabel" 
                                                                            Text="*Documento:"></asp:Label>
                                                                        <asp:TextBox ID="txt_dni" runat="server" MaxLength="8" 
                                                                            onkeypress="javascript:return solonumeros(event)" Width="130px"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="style22" colspan="2" style="text-align:left" >
                                                                        <asp:Label ID="Label19" runat="server" CssClass="Titulolabel" 
                                                                            Text="*Profesión:"></asp:Label>
                                                                        <asp:DropDownList ID="ddlOProfesion" runat="server" Width="264px">
                                                                        </asp:DropDownList>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                       </td>
                                                               
                                                                    <td align="center"  style="border-right-style: solid; border-right-width: medium; border-right-color: #dadada;">
                                                            <table style="width: 200px">
                                                                <tr>
                                                                    <td style="text-align:left">
                                                                        <asp:Label ID="Label25" runat="server" CssClass="Titulolabel" Text="Teléfono:"></asp:Label>
                                                                        <asp:TextBox ID="txt_telefono" runat="server" MaxLength="8" Width="80px"></asp:TextBox>
                                                                    </td>
                                                                    <td style="text-align:left">
                                                                        <asp:Label ID="Label29" runat="server" CssClass="Titulolabel" Text="Email:"></asp:Label>
                                                                        <asp:TextBox ID="txt_email" runat="server" MaxLength="8" Width="150px"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="2" style="text-align: left">
                                                                        <asp:Label ID="Label26" runat="server" CssClass="Titulolabel" Text="Domicilio:"></asp:Label>
                                                                        <asp:TextBox ID="txt_domicilio" runat="server" MaxLength="8" Width="350px"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="text-align:left">
                                                                        <asp:Label ID="Label27" runat="server" CssClass="Titulolabel" Text="Localidad:"></asp:Label>
                                                                        <asp:TextBox ID="txt_Localidad" runat="server"  Width="150px"></asp:TextBox>
                                                                    </td>
                                                                    <td style="text-align:left">
                                                                        <asp:Label ID="Label31" runat="server" CssClass="Titulolabel" Text="Provincia:"></asp:Label>
                                                                        <asp:DropDownList ID="ddl_Provincia" runat="server"  Width="150px">
                                                                        </asp:DropDownList>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="text-align:left">
                                                                        <asp:Label ID="Label28" runat="server" CssClass="Titulolabel" Text="Nacionalidad:"></asp:Label>
                                                                    <asp:TextBox ID="txt_Nacionalidad" runat="server"  Width="150px"></asp:TextBox>
                                                                    </td>
                                                                    <td style="text-align:left">
                                                                        <asp:Label ID="Label32" runat="server" CssClass="Titulolabel" Text="CP:"></asp:Label>
                                                                        <asp:TextBox ID="txt_cp" runat="server" MaxLength="8" Width="100px"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                        <td >
                                                            <table style="width: 380px"  >
                                                                <tr>
                                                                    <td >
                                                                        <asp:Label ID="Label33" runat="server" CssClass="Titulolabel" 
                                                                            Text="*Fecha Matricula:"></asp:Label>
                                                                        <asp:TextBox ID="txtOfechamatricula" runat="server" MaxLength="10" 
                                                                            Width="80px"></asp:TextBox>
                                                                        <asp:MaskedEditExtender ID="txtOfechamatricula_MaskedEditExtender" 
                                                                            runat="server" Mask="99/99/9999" MaskType="Date" 
                                                                            TargetControlID="txtOfechamatricula">
                                                                        </asp:MaskedEditExtender>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="Label34" runat="server" CssClass="Titulolabel" 
                                                                            Text="*Fecha Alta:"></asp:Label>
                                                                        <asp:TextBox ID="txtOfechaalta" runat="server" MaxLength="10" Width="80px"></asp:TextBox>
                                                                        <asp:MaskedEditExtender ID="txtOfechaalta_MaskedEditExtender" runat="server" 
                                                                            Mask="99/99/9999" MaskType="Date" TargetControlID="txtOfechaalta">
                                                                        </asp:MaskedEditExtender>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="Label35" runat="server" CssClass="Titulolabel" Text="Banco:"></asp:Label>
                                                                        <asp:DropDownList ID="ddl_banco" runat="server" Width="150px">
                                                                            <asp:ListItem Selected="True">Superville</asp:ListItem>
                                                                            <asp:ListItem>San Juan</asp:ListItem>
                                                                        </asp:DropDownList>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="Label39" runat="server" CssClass="Titulolabel" Text="CUIT:"></asp:Label>
                                                                        <asp:TextBox ID="TXT_CUIT" runat="server" MaxLength="8" Width="100px"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label ID="Label36" runat="server" CssClass="Titulolabel" 
                                                                            Text="*Fecha Solicitud:"></asp:Label>
                                                                        <asp:TextBox ID="txtOSolicitud" runat="server" MaxLength="10" Width="80px"></asp:TextBox>
                                                                        <asp:MaskedEditExtender ID="txtOSolicitud_MaskedEditExtender" runat="server" 
                                                                            Mask="99/99/9999" MaskType="Date" TargetControlID="txtOSolicitud">
                                                                        </asp:MaskedEditExtender>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="Label37" runat="server" CssClass="Titulolabel" 
                                                                            Text="*Fecha Dictamen:"></asp:Label>
                                                                        <asp:TextBox ID="txtOfechadictamen" runat="server" MaxLength="10" Width="80px"></asp:TextBox>
                                                                        <asp:MaskedEditExtender ID="txtOfechadictamen_MaskedEditExtender" 
                                                                            runat="server" Mask="99/99/9999" MaskType="Date" 
                                                                            TargetControlID="txtOfechadictamen">
                                                                        </asp:MaskedEditExtender>
                                                                    </td>
                                                                    <td colspan="2">
                                                                        <asp:Label ID="Label38" runat="server" CssClass="Titulolabel" Text="*Sello:"></asp:Label>
                                                                        <asp:TextBox ID="txtOsello" runat="server" MaxLength="8" Width="100px"></asp:TextBox>
                                                                        <asp:TextBox ID="txtOsello1" runat="server" MaxLength="8" Width="50px"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td >
                                                                        <asp:Label ID="Label40" runat="server" CssClass="Titulolabel" 
                                                                            Text="*Fecha Titulo:"></asp:Label>
                                                                        <asp:TextBox ID="txtOfechatitulo" runat="server" MaxLength="10" Width="80px"></asp:TextBox>
                                                                        <asp:MaskedEditExtender ID="txtOfechatitulo_MaskedEditExtender" runat="server" 
                                                                            Mask="99/99/9999" MaskType="Date" TargetControlID="txtOfechatitulo">
                                                                        </asp:MaskedEditExtender>
                                                                    </td>
                                                                    <td colspan="2">
                                                                        <asp:Label ID="Label41" runat="server" CssClass="Titulolabel" 
                                                                            Text="*Nivel:"></asp:Label>
                                                                        <asp:RadioButtonList ID="rbl_nivel" runat="server" Font-Bold="True" 
                                                                            Font-Size="Smaller" ForeColor="Black" Height="36px" 
                                                                            RepeatDirection="Horizontal" Width="153px">
                                                                            <asp:ListItem>Cat1</asp:ListItem>
                                                                            <asp:ListItem>Cat2</asp:ListItem>
                                                                            <asp:ListItem>Cat3</asp:ListItem>
                                                                            <asp:ListItem>Cat4</asp:ListItem>
                                                                        </asp:RadioButtonList>
                                                                    </td>
                                                                    <td>
                                                                    
                                                                    
                                                                        <asp:Button ID="btnOpcionar" runat="server" 
                                                                            Text="Opcionar"  />
                                                                              
                                        
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
</table>
</fieldset></td></tr>
          <tr>                                     
                                            <td >                                            
                                                <table style=" height: 183px; width: 1389px;">
                                                    <tr>
                                                        <td >
                                                         <fieldset class="login" style="  height: 180px;">
                    <legend>Débito</legend>
                                                            <table style="width: 878px; height: 118px;">
                                                                <tr>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                    <td>
                                                                        <asp:Label ID="Label44" runat="server" CssClass="Titulolabel" Text="TC Comafi"></asp:Label>
                                                                        &nbsp;&nbsp;
                                                                        <asp:Label ID="Label2" runat="server" CssClass="Titulolabel" Text="Directo"></asp:Label>
                                                                        &nbsp;&nbsp;
                                                                        <asp:Label ID="Label3" runat="server" CssClass="Titulolabel" Text="Automático"></asp:Label>
                                                                        &nbsp;&nbsp;
                                                                        <asp:Label ID="Label23" runat="server" CssClass="Titulolabel" Text="Ninguno"></asp:Label>
                                                                    </td>
                                                                    <td class="style32">
                                                                        &nbsp;</td>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label ID="Label11" runat="server" CssClass="Titulolabel" 
                                                                            Text="Aporte Actual:"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:RadioButtonList ID="rdl_AA" runat="server" 
                                                                            RepeatDirection="Horizontal" Width="250px" 
                                                                            OnSelectedIndexChanged="rdl_AA_SelectedIndexChanged" AutoPostBack="true" 
                                                                            ForeColor="#666666"> 
                                                                           <asp:ListItem Value="C" Text=""></asp:ListItem>
                                                                            <asp:ListItem Value="DD" Text=""></asp:ListItem>
                                                                            <asp:ListItem Value="DA" Text=""></asp:ListItem>
                                                                             <asp:ListItem Value="N" Text=""></asp:ListItem>
                                                                        </asp:RadioButtonList>
                                                                    </td>
                                                                    <td class="style32">
                                                                        <asp:ImageButton ID="btnDDA" runat="server" src="../Imagenes/edit_add.png" Visible="false" OnClick="btnDDAA_Click"/>
                                                                         <asp:ImageButton ID="btnDAA" runat="server" src="../Imagenes/edit_add.png" Visible="false"/>
                                                                         <asp:ImageButton ID="btnTCA" runat="server" src="../Imagenes/edit_add.png" Visible="false"/>

                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="Label45" runat="server" CssClass="Titulolabel" 
                                                                            Text="A partir de:"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:DropDownList ID="ddl_Apartir" runat="server"  Width="158px">
                                                                        </asp:DropDownList>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="Label46" runat="server" CssClass="Titulolabel" 
                                                                            Text="Vigente Desde:"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_fechavigente" runat="server" MaxLength="10" Width="120px"></asp:TextBox>
                                                                        <asp:MaskedEditExtender ID="txt_fechavigente_MaskedEditExtender" runat="server" 
                                                                            Mask="99/99/9999" MaskType="Date" TargetControlID="txt_fechavigente">
                                                                        </asp:MaskedEditExtender>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label ID="Label17" runat="server" CssClass="Titulolabel" 
                                                                            Text="Aporte Antiguo:"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:RadioButtonList ID="rdl_AAN" runat="server" 
                                                                            RepeatDirection="Horizontal" Width="250px"
                                                                           OnSelectedIndexChanged="rdl_AAN_SelectedIndexChanged" AutoPostBack="true" 
                                                                            ForeColor="#666666"> 
                                                                           <asp:ListItem Value="C" Text=""></asp:ListItem>
                                                                            <asp:ListItem Value="DD" Text=""></asp:ListItem>
                                                                            <asp:ListItem Value="DA" Text=""></asp:ListItem>
                                                                             <asp:ListItem Value="N" Text=""></asp:ListItem>
                                                                        </asp:RadioButtonList>
                                                                    </td>
                                                                    <td class="style32">
                                                                       <asp:ImageButton ID="btnDDV" runat="server" src="../Imagenes/edit_add.png" Visible="false" OnClick="btnDDAV_Click"/>
                                                                         <asp:ImageButton ID="btnDAV" runat="server" src="../Imagenes/edit_add.png" Visible="false" />
                                                                         <asp:ImageButton ID="btnTCV" runat="server" src="../Imagenes/edit_add.png" Visible="false"/>
   
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label ID="Label43" runat="server" CssClass="Titulolabel" Text="Prestamo:"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:RadioButtonList ID="rdl_Prestamo" runat="server" 
                                                                            RepeatDirection="Horizontal" Width="250px" OnSelectedIndexChanged="rdl_Prestamo_SelectedIndexChanged" AutoPostBack="true" 
                                                                            ForeColor="#666666"> 
                                                                           <asp:ListItem Value="C" Text=""></asp:ListItem>
                                                                            <asp:ListItem Value="DD" Text=""></asp:ListItem>
                                                                            <asp:ListItem Value="DA" Text=""></asp:ListItem>
                                                                             <asp:ListItem Value="N" Text=""></asp:ListItem>
                                                                        </asp:RadioButtonList>
                                                                    </td>
                                                                    <td class="style32">
                                                                          <asp:ImageButton ID="BTNDDP" runat="server" src="../Imagenes/edit_add.png" Visible="false" OnClick="btnDDP_Click"/>
                                                                         <asp:ImageButton ID="btnDAP" runat="server" src="../Imagenes/edit_add.png" Visible="false"/>
                                                                         <asp:ImageButton ID="btnTCP" runat="server" src="../Imagenes/edit_add.png" Visible="false"/>
   
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label ID="Label42" runat="server" CssClass="Titulolabel" Text="Judicial:"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:RadioButtonList ID="rdl_Judicial" runat="server" 
                                                                            RepeatDirection="Horizontal" Width="250px" OnSelectedIndexChanged="rdl_Judicial_SelectedIndexChanged" AutoPostBack="true" 
                                                                            ForeColor="#666666"> 
                                                                            <asp:ListItem Value="C" Text=""></asp:ListItem>
                                                                            <asp:ListItem Value="DD" Text=""></asp:ListItem>
                                                                            <asp:ListItem Value="DA" Text=""></asp:ListItem>
                                                                             <asp:ListItem Value="N" Text=""></asp:ListItem>
                                                                        </asp:RadioButtonList>
                                                                    </td>
                                                                    <td class="style32">
                                                                          <asp:ImageButton ID="btnDDJ" runat="server" src="../Imagenes/edit_add.png"  Visible="false" OnClick="btnDDJ_Click"/>
                                                                         <asp:ImageButton ID="btnDAJ" runat="server" src="../Imagenes/edit_add.png" Visible="false"/>
                                                                         <asp:ImageButton ID="btnTCJ" runat="server" src="../Imagenes/edit_add.png" Visible="false"/>
   
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                </tr>
                                                            </table>
                                                      
                                                      
                                                      </fieldset>  </td>
                                                    </tr>
                                                    </table>
                                                  
                                                   </td></tr>
                                                    <tr>
                                                        <td >
                                                            <asp:Label ID="Label53" runat="server" CssClass="Titulolabel2" Text="*Campos Obligatorios:"></asp:Label>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2" style="text-align: center">
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2" style="text-align: center">
                                                            <asp:Button ID="Button1" runat="server" 
                                                                OnClick="btnAceptar_Click" Text="Aceptar" />
                                                            <asp:Button ID="btn_modifica" runat="server" 
                                                                OnClick="btnactualiza_Click" Text="Cancelar" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style1" colspan="2" 
                                                            style="font-family:Arial; font-size:large; color:White; text-align: center;">
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


                                   <asp:Panel ID="pnlSeleccionarDatos" runat="server" CssClass="CajaDialogo" 
                                      Style="display:none ;" Height="241px" Width="542px">
                                        
                                        
                                       
          
            <div>
                                                           
                                               
                                                           
                                                            
                                                                <table style="border: thin solid #000000; width: 539px; background-color: #999999; height: 239px;">
                                                                    <tr>
                                                                    
                                                                    <td style="padding: 3px; background-color: #0033CC; color: #FFFFFF;" colspan="6">
                                                                 <asp:Label ID="Label10" runat="server" Text="Opcionar" />
                                                             
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                    
                                                                    <td  colspan="6">
                                                                 <asp:Label ID="Label6" runat="server"  />
                                                             
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            <asp:Label ID="Label4" runat="server" CssClass="Titulolabel" Text="*Nivel:"></asp:Label>
                                                                            <asp:DropDownList ID="ddlONivel" runat="server"  Width="50px" 
                                                                                OnSelectedIndexChanged="ddlONivel_SelectedIndexChanged" AutoPostBack="true" 
                                                                                style="text-align: left"   >
                                                                                <asp:ListItem Selected="True">I</asp:ListItem>
                                                                                <asp:ListItem>II</asp:ListItem>
                                                                                <asp:ListItem>III</asp:ListItem>
                                                                                <asp:ListItem>IV</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td>
                                                                               <asp:Label ID="Label12" runat="server" CssClass="Titulolabel" Text="*Sello:"></asp:Label>
                                                                               <asp:TextBox ID="TextBox1" runat="server" MaxLength="8" Width="100px"></asp:TextBox>
                                                                            <asp:TextBox ID="TextBox2" runat="server" MaxLength="8" Width="50px"></asp:TextBox>
                                                                    </td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td class="style25">
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            <asp:Label ID="Label7" runat="server" CssClass="Titulolabel" 
                                                                                Text="*Fecha Solicitud:"></asp:Label>
                                                                            <asp:TextBox ID="txtOSolicitudop" runat="server" MaxLength="10" Width="80px" 
                                                                                style="text-align: left"></asp:TextBox>
                                                                            <asp:MaskedEditExtender ID="txtOSolicitudop_MaskedEditExtender" runat="server" 
                                                                                Mask="99/99/9999" MaskType="Date" TargetControlID="txtOSolicitudop">
                                                                            </asp:MaskedEditExtender>
                                                                           </td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            <asp:Label ID="Label8" runat="server" CssClass="Titulolabel" 
                                                                                Text="*Fecha Dictamen:"></asp:Label>
                                                                            <asp:TextBox ID="txtOfechadictamenop" runat="server" MaxLength="10" 
                                                                                Width="80px" ></asp:TextBox>
                                                                            <asp:MaskedEditExtender ID="txtOfechadictamenop_MaskedEditExtender" 
                                                                                runat="server" Mask="99/99/9999" MaskType="Date" 
                                                                                TargetControlID="txtOfechadictamenop">
                                                                            </asp:MaskedEditExtender>
                                                                        </td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td class="style25">
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            <asp:Label ID="Label54" runat="server" CssClass="Titulolabel" 
                                                                                Text="A partir de Aporte:"></asp:Label>
                                                                            <asp:DropDownList ID="ddl_Apartirop" runat="server" Width="158px"  OnSelectedIndexChanged="ddl_Apartirop_SelectedIndexChanged" AutoPostBack="true">
                                                                                <asp:ListItem Value="12-2014">Diciembre2014</asp:ListItem>
                                                                                <asp:ListItem Value="3-2015">Marzo2015</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td colspan="2">
                                                                            <asp:Label ID="Label9" runat="server" CssClass="Titulolabel" 
                                                                                Text="Vigente Hasta:"></asp:Label>
                                                                            <asp:DropDownList ID="ddl_vigente" runat="server"  Width="200px" OnSelectedIndexChanged="ddl_vigente_SelectedIndexChanged" AutoPostBack="true">
                                                                                <asp:ListItem Value="2-2015">febrero2015</asp:ListItem>
                                                                                <asp:ListItem Value="5-2015">mayo2015</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                        <td class="style25">
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td colspan="2">
                                                                            &nbsp;</td>
                                                                        <td class="style25">
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33" colspan="5">
                                                                            <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" />
                                                                            <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" />
                                                                        </td>
                                                                        <td class="style25">
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td colspan="2">
                                                                            &nbsp;</td>
                                                                        <td class="style25">
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                </table>
                                                            
            </div>


       </asp:Panel>


        <asp:Panel ID="pnlSeleccionarbco" runat="server" CssClass="CajaDialogo" 
                                      Style="display: none;" Height="241px" Width="542px">
                                        
                                        
                                       
          
            <div>
                                                           
                                               
                                                           
                                                            
                                                                <table style="border: thin solid #000000; width: 540px; background-color: #999999; height: 239px;">
                                                                    <tr>
                                                                    
                                                                    <td style="padding: 3px; background-color: #0033CC; color: #FFFFFF;" colspan="3">
                                                                 <asp:Label ID="Label13" runat="server" Text="Banco para Débito Directo" />
                                                             
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                    
                                                                    <td  colspan="3">
                                                                 <asp:Label ID="Label18" runat="server"  />
                                                             
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            <asp:Label ID="Label55" runat="server" CssClass="Titulolabel" Text="*Banco:"></asp:Label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtObanco" runat="server" Width="150px" ></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            
                                                                            <asp:Label ID="Label56" runat="server" CssClass="Titulolabel" Text="*CBU:" align="left"></asp:Label>
                                                                           </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtOCBU" runat="server" Width="150px"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33" colspan="3">
                                                                            <asp:Button ID="btnaceptardd" runat="server" Text="Aceptar" />
                                                                            <asp:Button ID="btncancelardd" runat="server" Text="Cancelar" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                </table>
                                                            
            </div>


       </asp:Panel>
       <asp:HiddenField id="hideen" runat="server" />
        <asp:modalpopupextender ID="mpeSeleccion" runat="server" TargetControlID="hideen"
            PopupControlID="pnlSeleccionarDatos" OkControlID="btnAceptar" CancelControlID="btnCancelar"
            OnOkScript="mpeSeleccionOnOk()" OnCancelScript="mpeSeleccionOnCancel()" DropShadow="True" 
            BackgroundCssClass="FondoAplicacion" />

              <asp:modalpopupextender ID="mpeDD" runat="server" TargetControlID="btnDDV"
            PopupControlID="pnlSeleccionarbco" OkControlID="btnaceptardd" CancelControlID="btncancelardd"
            OnOkScript="mpeDDOnOk()" OnCancelScript="mpeDDOnCancel()" DropShadow="True" 
             BackgroundCssClass="FondoAplicacion" />

          
            
    </form>
</body>
</html>
