<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_Opcionar.aspx.cs" Inherits="CIP.frm_ABMAfiliados" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
   
     <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/Diseñoformularios.css" rel="stylesheet" type="text/css" />
     <script language="javascript" type="text/javascript">
         function validaOpcionar() {

             alert(document.getElementById('txtOSolicitudop').value);
              if (document.getElementById('txtOSolicitudop').value != '') {
                 if (validafecha('txtOSolicitudop') == false) {
                     document.getElementById('hdf_fecha').value = "F";
                     return false;
                 }
                 else document.getElementById('hdf_fecha').value = "T";
             }
             else document.getElementById('hdf_fecha').value = "T";


             if (document.getElementById('txtOfechadictamenop').value != '') {
                 if (validafecha('txtOfechadictamenop') == false) {
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
         function mpeSeleccionOnOk() {
//             var ddlCiudades = document.getElementById("ddlCiudades");
//             var ddlMeses = document.getElementById("ddlMeses");
//             var ddlAnualidades = document.getElementById("ddlAnualidades");
//             var txtSituacion = document.getElementById("txtSituacion");

//             txtSituacion.value = ddlCiudades.options[ddlCiudades.selectedIndex].value + ", " +
//            ddlMeses.options[ddlMeses.selectedIndex].value + " de " +
             //            ddlAnualidades.options[ddlAnualidades.selectedIndex].value;
            
            
         }
         function mpeSeleccionOnCancel() {
            
         }


         
         function mpeDDOnCancel() {
             
         }

        
         function mpeDD1OnCancel() {
             
         }


        
         function mpeDD2OnCancel() {
             
         }
         
         function mpeDD3OnCancel() {

         }
         function mpeDD4OnCancel() {

         }
         function mpeDAOnCancel() {

         }
         function mpeDAVOnCancel() {

         }
         function mpeDAPOnCancel() {

         }

         function mpeDAJOnCancel() {

         }
         function mpeDAGOnCancel() {

         }
         function mpeDCAOnCancel() {

         }
         function mpeDCVOnCancel() {

         }
         function mpeDCPOnCancel() {

         }

         function mpeDCJOnCancel() {

         }
         function mpeDCGOnCancel() {

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
                                  <asp:HiddenField ID="hdf_fecha" Value="" 
          runat="server" />
                                  <asp:HiddenField ID="hdf_mail" Value="" 
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
                                                      <tr><td>
                                                      
                                                        <asp:Label ID="msjgral" runat="server" CssClass="Msj" Text=""></asp:Label>
                                                        
                                                      </td></tr>
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
                                                                        <asp:TextBox ID="txt_fechanac" runat="server" MaxLength="10" Width="70px"></asp:TextBox>
                                                                        <asp:MaskedEditExtender ID="txt_fechanac_MaskedEditExtender" runat="server" 
                                                                            Mask="99/99/9999" MaskType="Date" TargetControlID="txt_fechanac">
                                                                        </asp:MaskedEditExtender>
                                                                    </td>
                                                                    <td class="style22">
                                                                        <asp:Label ID="Label22" runat="server" CssClass="Titulolabel" Text="Sexo:"></asp:Label>
                                                                        <asp:DropDownList ID="ddl_sexo" runat="server" Width="130px">
                                                                            <asp:ListItem Value="F">Femenino</asp:ListItem>
                                                                            <asp:ListItem Value="M">Masculino</asp:ListItem>
                                                                        </asp:DropDownList>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="style22" style="text-align:left">
                                                                        <asp:Label ID="Label24" runat="server" CssClass="Titulolabel" Text="*Tipo Doc:"></asp:Label>
                                                                        <asp:DropDownList ID="ddlODocu" runat="server" Width="140px">
                                                                         <asp:ListItem Value="CE">CE</asp:ListItem>
                                                                            <asp:ListItem Value="DNI" Selected="True">DNI</asp:ListItem>
                                                                             <asp:ListItem Value="LC">Lc</asp:ListItem>
                                                                            <asp:ListItem Value="LE">Le</asp:ListItem>
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
                                                                        <asp:TextBox ID="txtOfechatitulo" runat="server" MaxLength="10" Width="80px" OnTextChanged= "fechachange" AutoPostBack="true"></asp:TextBox>
                                                                        <asp:MaskedEditExtender ID="txtOfechatitulo_MaskedEditExtender" runat="server" 
                                                                            Mask="99/99/9999" MaskType="Date" TargetControlID="txtOfechatitulo" >
                                                                        </asp:MaskedEditExtender>
                                                                    </td>
                                                                    <td colspan="2">
                                                                        <asp:Label ID="Label41" runat="server" CssClass="Titulolabel" 
                                                                            Text="*Nivel:"></asp:Label>
                                                                        <asp:RadioButtonList ID="rbl_nivel" runat="server" Font-Bold="True" 
                                                                            Font-Size="Smaller" ForeColor="Black" Height="36px" 
                                                                            RepeatDirection="Horizontal" Width="153px" Enabled="false">
                                                                            <asp:ListItem Value="I">Cat1</asp:ListItem>
                                                                            <asp:ListItem Value="II">Cat2</asp:ListItem>
                                                                            <asp:ListItem Value="III">Cat3</asp:ListItem>
                                                                            <asp:ListItem Value="IV">Cat4</asp:ListItem>
                                                                        </asp:RadioButtonList>
                                                                    </td>
                                                                    <td>
                                                                    
                                                                    
                                                                        <asp:Button ID="btnOpcionar" runat="server" 
                                                                            Text="Opcionar" OnClick="btnopcionarOpen_Click"  />
                                                                              
                                        
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
</table>
</fieldset></td></tr>
          <tr>                                     
                                            <td >                                            
                                                <table style=" height: 317px; width: 1389px;">
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
                                                                        <asp:ImageButton ID="btnDDA" runat="server" src="../Imagenes/edit_add.png" Visible="false" OnClick="btnDDAAOpen_Click"/>
                                                                         <asp:ImageButton ID="btnDAA" runat="server" src="../Imagenes/edit_add.png" Visible="false" OnClick="btnDAAOpen_Click"/>
                                                                         <asp:ImageButton ID="btnTCA" runat="server" src="../Imagenes/edit_add.png" Visible="false" OnClick="btnDCAOpen_Click"/>

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
                                                                            Text="Atrasado:"></asp:Label>
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
                                                                       <asp:ImageButton ID="btnDDV" runat="server" src="../Imagenes/edit_add.png" Visible="false" OnClick="btnDDAVOpen_Click"/>
                                                                         <asp:ImageButton ID="btnDAV" runat="server" src="../Imagenes/edit_add.png" Visible="false" OnClick="btnDAVOpen_Click" />
                                                                         <asp:ImageButton ID="btnTCV" runat="server" src="../Imagenes/edit_add.png" Visible="false" OnClick="btnDCVOpen_Click"/>
   
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
                                                                        <asp:Label ID="Label43" runat="server" CssClass="Titulolabel" Text="Préstamo:"></asp:Label>
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
                                                                          <asp:ImageButton ID="BTNDDP" runat="server" src="../Imagenes/edit_add.png" Visible="false" OnClick="btnDDPOpen_Click"/>
                                                                         <asp:ImageButton ID="btnDAP" runat="server" src="../Imagenes/edit_add.png" Visible="false" OnClick="btnDAPOpen_Click"/>
                                                                         <asp:ImageButton ID="btnTCP" runat="server" src="../Imagenes/edit_add.png" Visible="false" OnClick="btnDCPOpen_Click"/>
   
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
                                                                          <asp:ImageButton ID="btnDDJ" runat="server" src="../Imagenes/edit_add.png"  Visible="false" OnClick="btnDDGOpen_Click"/>
                                                                         <asp:ImageButton ID="btnDAJ" runat="server" src="../Imagenes/edit_add.png" Visible="false" OnClick="btnDAGOpen_Click"/>
                                                                         <asp:ImageButton ID="btnTCJ" runat="server" src="../Imagenes/edit_add.png" Visible="false" OnClick="btnDCGOpen_Click"/>
   
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
                                                                           <asp:Label ID="Label104" runat="server" CssClass="Titulolabel" Text="Gastos:"></asp:Label>
                                                               </td>
                                                                    <td>
                                                                        <asp:RadioButtonList ID="rdl_Gastos" runat="server" AutoPostBack="true" 
                                                                            ForeColor="#666666" OnSelectedIndexChanged="rdl_Gastos_SelectedIndexChanged" 
                                                                            RepeatDirection="Horizontal" Width="250px">
                                                                            <asp:ListItem Text="" Value="C"></asp:ListItem>
                                                                            <asp:ListItem Text="" Value="DD"></asp:ListItem>
                                                                            <asp:ListItem Text="" Value="DA"></asp:ListItem>
                                                                            <asp:ListItem Text="" Value="N"></asp:ListItem>
                                                                        </asp:RadioButtonList>
                                                                    </td>
                                                                    <td class="style32">
                                                                       <asp:ImageButton ID="btnDDG" runat="server" src="../Imagenes/edit_add.png"  Visible="false" OnClick="btnDDGOpen_Click"/>
                                                                         <asp:ImageButton ID="btnDAG" runat="server" src="../Imagenes/edit_add.png" Visible="false" OnClick="btnDAGOpen_Click"/>
                                                                         <asp:ImageButton ID="btnTCG" runat="server" src="../Imagenes/edit_add.png" Visible="false" OnClick="btnDCGOpen_Click"/>
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
                                                            <asp:Button ID="btn_acepyar" runat="server" 
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
                                                                 <asp:Label ID="msjopcionar" runat="server" CssClass="Msj"  />
                                                             
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
                                                                                <asp:ListItem Selected="True" Value="I">I</asp:ListItem>
                                                                                <asp:ListItem Value="II">II</asp:ListItem>
                                                                                <asp:ListItem Value="III">III</asp:ListItem>
                                                                                <asp:ListItem Value="IV">IV</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td>
                                                                               <asp:Label ID="Label12" runat="server" CssClass="Titulolabel" Text="*Sello:"></asp:Label>
                                                                               <asp:TextBox ID="txt_sello" runat="server" MaxLength="8" Width="100px"></asp:TextBox>
                                                                            <asp:TextBox ID="txt_Sello1" runat="server" MaxLength="8" Width="50px"></asp:TextBox>
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
                                                                                
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td colspan="2">
                                                                            <asp:Label ID="Label9" runat="server" CssClass="Titulolabel" 
                                                                                Text="Vigente Hasta:"></asp:Label>
                                                                            <asp:DropDownList ID="ddl_vigente" runat="server"  Width="200px" OnSelectedIndexChanged="ddl_vigente_SelectedIndexChanged" AutoPostBack="true">
                                                                                
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
                                                                            <asp:Button ID="btnAceptarO" runat="server" Text="Aceptar" OnClick="btnopcionar_Click"/>
                                                                            <asp:Button ID="btnCancelarO" runat="server" Text="Cancelar" />
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


       <asp:Panel ID="pnlDDAA" runat="server" CssClass="CajaDialogo" Style="display:none ;" Height="241px" Width="542px">
                     
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
                                                                              <asp:Label ID="Label55" runat="server" CssClass="Titulolabel" Text="*Banco:"></asp:Label></td>
                                                                        <td style="text-align: left">
                                                                            <asp:TextBox ID="txtOBCODDAA" runat="server" Width="250px"></asp:TextBox>
                                                                            <asp:Label ID="lblmsj" runat="server" CssClass="Msj"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            
                                                                            <asp:Label ID="Label56" runat="server" CssClass="Titulolabel" Text="*CBU:" align="left"></asp:Label>
                                                                           </td>
                                                                        <td style="text-align: left">
                                                                            <asp:TextBox ID="txtOCBUDDAA" runat="server" Width="150px"></asp:TextBox>
                                                                            <asp:Label ID="lblmsj0" runat="server" CssClass="Msj"></asp:Label>
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
                                                                            <asp:Button ID="btnaceptarddAA" runat="server" Text="Aceptar" OnClick="btnDDAA_Click"/>
                                                                            <asp:Button ID="btncancelarddAA" runat="server" Text="Cancelar" />
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
       <asp:Panel ID="pnlDDAV" runat="server" CssClass="CajaDialogo"   Style="display: none;" Height="241px" Width="542px">
                  <div>
                   <table style="border: thin solid #000000; width: 540px; background-color: #999999; height: 239px;">
                                                                    <tr>
                                                                    
                                                                    <td style="padding: 3px; background-color: #0033CC; color: #FFFFFF;" colspan="3">
                                                                 <asp:Label ID="Label30" runat="server" Text="VBanco para Débito Directo" />
                                                             
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                    
                                                                    <td  colspan="3">
                                                                 <asp:Label ID="Label47" runat="server"  />
                                                              
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                              <asp:Label ID="Label48" runat="server" CssClass="Titulolabel" Text="*Banco:"></asp:Label></td>
                                                                        <td style="text-align: left">
                                                                            <asp:TextBox ID="txtOBCODDAV" runat="server" Width="250px"></asp:TextBox>
                                                                            <asp:Label ID="lblmsj1" runat="server" CssClass="Msj"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            
                                                                            <asp:Label ID="Label62" runat="server" CssClass="Titulolabel" Text="*CBU:" align="left"></asp:Label>
                                                                           </td>
                                                                        <td style="text-align: left">
                                                                            <asp:TextBox ID="txtOCBUDDAV" runat="server" Width="150px"></asp:TextBox>
                                                                            <asp:Label ID="lblmsj2" runat="server" CssClass="Msj"></asp:Label>
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
                                                                            <asp:Button ID="btnaceptarddAV" runat="server" Text="Aceptar" OnClick="btnDDAV_Click"/>
                                                                            <asp:Button ID="btncancelarddAV" runat="server" Text="Cancelar" />
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
       <asp:Panel ID="pnlDDP" runat="server" CssClass="CajaDialogo"     Style="display: none;" Height="241px" Width="542px">
         
            <div>
                                                           
                      <table style="border: thin solid #000000; width: 540px; background-color: #999999; height: 239px;">
                                                                    <tr>
                                                                    
                                                                    <td style="padding: 3px; background-color: #0033CC; color: #FFFFFF;" colspan="3">
                                                                 <asp:Label ID="Label49" runat="server" Text="PBanco para Débito Directo" />
                                                             
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                    
                                                                    <td  colspan="3">
                                                                 <asp:Label ID="Label50" runat="server"  />
                                                              
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                              <asp:Label ID="Label51" runat="server" CssClass="Titulolabel" Text="*Banco:"></asp:Label></td>
                                                                        <td style="text-align: left">
                                                                            <asp:TextBox ID="txtOBCODDP" runat="server" Width="250px"></asp:TextBox>
                                                                            <asp:Label ID="lblmsj3" runat="server" CssClass="Msj"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            
                                                                            <asp:Label ID="Label57" runat="server" CssClass="Titulolabel" Text="*CBU:" align="left"></asp:Label>
                                                                           </td>
                                                                        <td style="text-align: left">
                                                                            <asp:TextBox ID="txtOCBUDDP" runat="server" Width="150px"></asp:TextBox>
                                                                            <asp:Label ID="lblmsj4" runat="server" CssClass="Msj"></asp:Label>
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
                                                                            <asp:Button ID="btnaceptarddP" runat="server" Text="Aceptar" OnClick="btnDDP_Click"/>
                                                                            <asp:Button ID="btncancelarddP" runat="server" Text="Cancelar" />
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
       <asp:Panel ID="pnlDDJ" runat="server" CssClass="CajaDialogo" Style="display: none;" Height="241px" Width="542px">
         <div>
              <table style="border: thin solid #000000; width: 540px; background-color: #999999; height: 239px;">
                                                                    <tr>
                                                                    
                                                                    <td style="padding: 3px; background-color: #0033CC; color: #FFFFFF;" colspan="3">
                                                                 <asp:Label ID="Label52" runat="server" Text="JBanco para Débito Directo" />
                                                             
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                    
                                                                    <td  colspan="3">
                                                                 <asp:Label ID="Label58" runat="server"  />
                                                              
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                              <asp:Label ID="Label59" runat="server" CssClass="Titulolabel" Text="*Banco:"></asp:Label></td>
                                                                        <td style="text-align: left">
                                                                            <asp:TextBox ID="txtOBCODDJ"  runat="server" Width="250px"></asp:TextBox>
                                                                            <asp:Label ID="lblmsj5" runat="server" CssClass="Msj"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            
                                                                            <asp:Label ID="Label61" runat="server" CssClass="Titulolabel" Text="*CBU:" align="left"></asp:Label>
                                                                           </td>
                                                                        <td style="text-align: left">
                                                                            <asp:TextBox ID="txtOCBUDDJ"  runat="server" Width="150px"></asp:TextBox>
                                                                            <asp:Label ID="lblmsj6" runat="server" CssClass="Msj"></asp:Label>
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
                                                                            <asp:Button ID="btnaceptarddJ" runat="server" Text="Aceptar" OnClick="btnDDJ_Click"/>
                                                                            <asp:Button ID="btncancelarddJ" runat="server" Text="Cancelar" />
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
       <asp:Panel ID="pnlDDG" runat="server" CssClass="CajaDialogo" Style="display: none;" Height="241px" Width="542px">
         <div>
              <table style="border: thin solid #000000; width: 540px; background-color: #999999; height: 239px;">
                                                                    <tr>
                                                                    
                                                                    <td style="padding: 3px; background-color: #0033CC; color: #FFFFFF;" colspan="3">
                                                                 <asp:Label ID="Label107" runat="server" Text="Banco para Débito Directo" />
                                                             
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                    
                                                                    <td  colspan="3">
                                                                 <asp:Label ID="Label108" runat="server"  />
                                                              
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                              <asp:Label ID="Label109" runat="server" CssClass="Titulolabel" Text="*Banco:"></asp:Label></td>
                                                                        <td style="text-align: left">
                                                                            <asp:TextBox ID="txtOBCODDG"  runat="server" Width="250px"></asp:TextBox>
                                                                            <asp:Label ID="GMSJ" runat="server" CssClass="Msj"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            
                                                                            <asp:Label ID="Label111" runat="server" CssClass="Titulolabel" Text="*CBU:" align="left"></asp:Label>
                                                                           </td>
                                                                        <td style="text-align: left">
                                                                            <asp:TextBox ID="txtOCBUDDG"  runat="server" Width="150px"></asp:TextBox>
                                                                            <asp:Label ID="GMSJ1" runat="server" CssClass="Msj"></asp:Label>
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
                                                                            <asp:Button ID="btnaceptarddG" runat="server" Text="Aceptar" OnClick="btnDDG_Click"/>
                                                                            <asp:Button ID="btncancelarddG" runat="server" Text="Cancelar" />
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
   

       <asp:Panel ID="pnlDAA" runat="server" CssClass="CajaDialogo" Style="display:none ;" Height="241px" Width="542px">
                     
            <div>
                      <table style="border: thin solid #000000; width: 540px; background-color: #999999; height: 239px;">
                                                                    <tr>
                                                                    
                                                                    <td style="padding: 3px; background-color: #0033CC; color: #FFFFFF;" colspan="5">
                                                                 <asp:Label ID="Label60" runat="server" Text="Banco para Débito Automático" />
                                                             
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                    
                                                                    <td  colspan="5">
                                                                 <asp:Label ID="Label63" runat="server"  />
                                                              
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                              <asp:Label ID="Label64" runat="server" CssClass="Titulolabel" Text="*Banco:"></asp:Label></td>
                                                                        <td style="text-align: left" colspan="3">
                                                                            <asp:TextBox ID="txtOBcoDAA" runat="server" Width="250px"></asp:TextBox>
                                                                            <asp:Label ID="msj" runat="server" CssClass="Msj"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            
                                                                            <asp:Label ID="Label65" runat="server" CssClass="Titulolabel" 
                                                                                Text="*N° de Cuenta:"></asp:Label>
                                                                           </td>
                                                                        <td style="text-align: left" colspan="3">
                                                                            <asp:TextBox ID="txtOctaDAA" runat="server" Width="150px"></asp:TextBox>
                                                                            <asp:Label ID="msj1" runat="server" CssClass="Msj"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            <asp:Label ID="Label66" runat="server" CssClass="Titulolabel" 
                                                                                Text="*N° Sucursal:"></asp:Label>
                                                                        </td>
                                                                        <td style="text-align: left" >
                                                                       
                                                                            <asp:TextBox ID="txtOsucursalDAA" runat="server" Width="150px"></asp:TextBox>
                                                                        </td>
                                                                        <td>
                                                                            <asp:Label ID="Label67" runat="server" CssClass="Titulolabel" Text="*Tipo:"></asp:Label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:RadioButtonList ID="RDB_TIPODAA" runat="server" Font-Bold="False" 
                                                                                ForeColor="Black" RepeatDirection="Horizontal" style="width: 42px">
                                                                                <asp:ListItem>CC</asp:ListItem>
                                                                                <asp:ListItem>CA</asp:ListItem>
                                                                            </asp:RadioButtonList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td style="text-align: left">
                                                                            <asp:Label ID="msj2" runat="server" CssClass="Msj"></asp:Label>
                                                                        </td>
                                                                        <td colspan="2">
                                                                            <asp:Label ID="msj3" runat="server" CssClass="Msj"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td style="text-align: left">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33" colspan="5">
                                                                            <asp:Button ID="btnaceptardAA"  runat="server" Text="Aceptar" OnClick="btnDAA_Click"/>
                                                                            <asp:Button ID="btncancelardAA" runat="server" Text="Cancelar" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td colspan="3">
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                </table>
                                                            
            </div>


       </asp:Panel>
       <asp:Panel ID="pnl_DAV" runat="server" CssClass="CajaDialogo" Style="display:none ;" Height="241px" Width="542px">
                     
            <div>
                      <table style="border: thin solid #000000; width: 540px; background-color: #999999; height: 239px;">
                                                                    <tr>
                                                                    
                                                                    <td style="padding: 3px; background-color: #0033CC; color: #FFFFFF;" colspan="5">
                                                                 <asp:Label ID="Label68" runat="server" Text="Banco para Débito Automático" />
                                                             
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                    
                                                                    <td  colspan="5">
                                                                 <asp:Label ID="Label69" runat="server"  />
                                                              
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                              <asp:Label ID="Label70" runat="server" CssClass="Titulolabel" Text="*Banco:"></asp:Label></td>
                                                                        <td style="text-align: left" colspan="3">
                                                                            <asp:TextBox ID="txtOBcoDAV" runat="server" Width="250px"></asp:TextBox>
                                                                            <asp:Label ID="msj4" runat="server" CssClass="Msj"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            
                                                                            <asp:Label ID="Label72" runat="server" CssClass="Titulolabel" 
                                                                                Text="*N° de Cuenta:"></asp:Label>
                                                                           </td>
                                                                        <td style="text-align: left" colspan="3">
                                                                            <asp:TextBox ID="txtOctaDAV" runat="server" Width="150px"></asp:TextBox>
                                                                            <asp:Label ID="msj5" runat="server" CssClass="Msj"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            <asp:Label ID="Label74" runat="server" CssClass="Titulolabel" 
                                                                                Text="*N° Sucursal:"></asp:Label>
                                                                        </td>
                                                                        <td style="text-align: left" >
                                                                       
                                                                            <asp:TextBox ID="txtOsucursalDAV" runat="server" Width="150px"></asp:TextBox>
                                                                        </td>
                                                                        <td>
                                                                            <asp:Label ID="Label75" runat="server" CssClass="Titulolabel" Text="*Tipo:"></asp:Label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:RadioButtonList ID="RDB_TIPODAV" runat="server" Font-Bold="False" 
                                                                                ForeColor="Black" RepeatDirection="Horizontal" style="width: 42px">
                                                                                <asp:ListItem>CC</asp:ListItem>
                                                                                <asp:ListItem>CA</asp:ListItem>
                                                                            </asp:RadioButtonList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td style="text-align: left">
                                                                            <asp:Label ID="msj6" runat="server" CssClass="Msj"></asp:Label>
                                                                        </td>
                                                                        <td colspan="2">
                                                                            <asp:Label ID="msj7" runat="server" CssClass="Msj"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td style="text-align: left">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33" colspan="5">
                                                                              <asp:Button ID="btnaceptardAv"  runat="server" Text="Aceptar" OnClick="btnDAV_Click"/>
                                                                            <asp:Button ID="btncancelardAv" runat="server" Text="Cancelar" />
                                                                  
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td colspan="3">
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                </table>
                                                            
            </div>


       </asp:Panel>
       <asp:Panel ID="pnl_DAP" runat="server" CssClass="CajaDialogo" Style="display:none ;" Height="241px" Width="542px">
                     
            <div>
                      <table style="border: thin solid #000000; width: 540px; background-color: #999999; height: 239px;">
                                                                    <tr>
                                                                    
                                                                    <td style="padding: 3px; background-color: #0033CC; color: #FFFFFF;" colspan="5">
                                                                 <asp:Label ID="Label71" runat="server" Text="Banco para Débito Automático" />
                                                             
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                    
                                                                    <td  colspan="5">
                                                                 <asp:Label ID="Label73" runat="server"  />
                                                              
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                              <asp:Label ID="Label76" runat="server" CssClass="Titulolabel" Text="*Banco:"></asp:Label></td>
                                                                        <td style="text-align: left" colspan="3">
                                                                            <asp:TextBox ID="txtOBcoDAP" runat="server" Width="250px"></asp:TextBox>
                                                                            <asp:Label ID="msj8" runat="server" CssClass="Msj"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            
                                                                            <asp:Label ID="Label78" runat="server" CssClass="Titulolabel" 
                                                                                Text="*N° de Cuenta:"></asp:Label>
                                                                           </td>
                                                                        <td style="text-align: left" colspan="3">
                                                                            <asp:TextBox ID="txtOctaDAP" runat="server" Width="150px"></asp:TextBox>
                                                                            <asp:Label ID="msj9" runat="server" CssClass="Msj"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            <asp:Label ID="Label80" runat="server" CssClass="Titulolabel" 
                                                                                Text="*N° Sucursal:"></asp:Label>
                                                                        </td>
                                                                        <td style="text-align: left" >
                                                                       
                                                                            <asp:TextBox ID="txtOsucursalDAP" runat="server" Width="150px"></asp:TextBox>
                                                                        </td>
                                                                        <td>
                                                                            <asp:Label ID="Label81" runat="server" CssClass="Titulolabel" Text="*Tipo:"></asp:Label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:RadioButtonList ID="RDB_TIPODAP" runat="server" Font-Bold="False" 
                                                                                ForeColor="Black" RepeatDirection="Horizontal" style="width: 42px">
                                                                                <asp:ListItem>CC</asp:ListItem>
                                                                                <asp:ListItem>CA</asp:ListItem>
                                                                            </asp:RadioButtonList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td style="text-align: left">
                                                                            <asp:Label ID="msj10" runat="server" CssClass="Msj"></asp:Label>
                                                                        </td>
                                                                        <td colspan="2">
                                                                            <asp:Label ID="msj11" runat="server" CssClass="Msj"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td style="text-align: left">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33" colspan="5">
                                                                              <asp:Button ID="btnaceptardAP"  runat="server" Text="Aceptar" OnClick="btnDAP_Click"/>
                                                                            <asp:Button ID="btncancelardAP" runat="server" Text="Cancelar" />
                                                                  
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td colspan="3">
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                </table>
                                                            
            </div>


       </asp:Panel>
       <asp:Panel ID="pnl_DAJ" runat="server" CssClass="CajaDialogo" Style="display:none ;" Height="241px" Width="542px">
                     
            <div>
                      <table style="border: thin solid #000000; width: 540px; background-color: #999999; height: 239px;">
                                                                    <tr>
                                                                    
                                                                    <td style="padding: 3px; background-color: #0033CC; color: #FFFFFF;" colspan="5">
                                                                 <asp:Label ID="Label77" runat="server" Text="Banco para Débito Automático" />
                                                             
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                    
                                                                    <td  colspan="5">
                                                                 <asp:Label ID="Label79" runat="server"  />
                                                              
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                              <asp:Label ID="Label82" runat="server" CssClass="Titulolabel" Text="*Banco:"></asp:Label></td>
                                                                        <td style="text-align: left" colspan="3">
                                                                            <asp:TextBox ID="txtOBcoDAJ" runat="server" Width="250px"></asp:TextBox>
                                                                            <asp:Label ID="msj12" runat="server" CssClass="Msj"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            
                                                                            <asp:Label ID="Label84" runat="server" CssClass="Titulolabel" 
                                                                                Text="*N° de Cuenta:"></asp:Label>
                                                                           </td>
                                                                        <td style="text-align: left" colspan="3">
                                                                            <asp:TextBox ID="txtOctaDAJ" runat="server" Width="150px"></asp:TextBox>
                                                                            <asp:Label ID="msj13" runat="server" CssClass="Msj"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            <asp:Label ID="Label86" runat="server" CssClass="Titulolabel" 
                                                                                Text="*N° Sucursal:"></asp:Label>
                                                                        </td>
                                                                        <td style="text-align: left" >
                                                                       
                                                                            <asp:TextBox ID="txtOsucursalDAJ" runat="server" Width="150px"></asp:TextBox>
                                                                        </td>
                                                                        <td>
                                                                            <asp:Label ID="Label87" runat="server" CssClass="Titulolabel" Text="*Tipo:"></asp:Label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:RadioButtonList ID="RDB_TIPODAJ" runat="server" Font-Bold="False" 
                                                                                ForeColor="Black" RepeatDirection="Horizontal" style="width: 42px">
                                                                                <asp:ListItem>CC</asp:ListItem>
                                                                                <asp:ListItem>CA</asp:ListItem>
                                                                            </asp:RadioButtonList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td style="text-align: left">
                                                                            <asp:Label ID="msj14" runat="server" CssClass="Msj"></asp:Label>
                                                                        </td>
                                                                        <td colspan="2">
                                                                            <asp:Label ID="msj15" runat="server" CssClass="Msj"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td style="text-align: left">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33" colspan="5">
                                                                              <asp:Button ID="btnaceptardAJ"  runat="server" Text="Aceptar" OnClick="btnDAJ_Click"/>
                                                                            <asp:Button ID="btncancelardAJ" runat="server" Text="Cancelar" />
                                                                  
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td colspan="3">
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                </table>
                                                            
            </div>


       </asp:Panel>
       <asp:Panel ID="pnl_DAG" runat="server" CssClass="CajaDialogo" Style="display:none ;" Height="241px" Width="542px">
                     
            <div>
                      <table style="border: thin solid #000000; width: 540px; background-color: #999999; height: 239px;">
                                                                    <tr>
                                                                    
                                                                    <td style="padding: 3px; background-color: #0033CC; color: #FFFFFF;" colspan="5">
                                                                 <asp:Label ID="Label110" runat="server" Text="Banco para Débito Automático" />
                                                             
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                    
                                                                    <td  colspan="5">
                                                                 <asp:Label ID="Label112" runat="server"  />
                                                              
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                              <asp:Label ID="Label113" runat="server" CssClass="Titulolabel" Text="*Banco:"></asp:Label></td>
                                                                        <td style="text-align: left" colspan="3">
                                                                            <asp:TextBox ID="txtOBcoDAG" runat="server" Width="250px"></asp:TextBox>
                                                                            <asp:Label ID="Gmsj2" runat="server" CssClass="Msj"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            
                                                                            <asp:Label ID="Label114" runat="server" CssClass="Titulolabel" 
                                                                                Text="*N° de Cuenta:"></asp:Label>
                                                                           </td>
                                                                        <td style="text-align: left" colspan="3">
                                                                            <asp:TextBox ID="txtOctaDAG" runat="server" Width="150px"></asp:TextBox>
                                                                            <asp:Label ID="Gmsj3" runat="server" CssClass="Msj"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            <asp:Label ID="Label115" runat="server" CssClass="Titulolabel" 
                                                                                Text="*N° Sucursal:"></asp:Label>
                                                                        </td>
                                                                        <td style="text-align: left" >
                                                                       
                                                                            <asp:TextBox ID="txtOsucursalDAG" runat="server" Width="150px"></asp:TextBox>
                                                                        </td>
                                                                        <td>
                                                                            <asp:Label ID="Label116" runat="server" CssClass="Titulolabel" Text="*Tipo:"></asp:Label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:RadioButtonList ID="RDB_TIPODAG" runat="server" Font-Bold="False" 
                                                                                ForeColor="Black" RepeatDirection="Horizontal" style="width: 42px">
                                                                                <asp:ListItem>CC</asp:ListItem>
                                                                                <asp:ListItem>CA</asp:ListItem>
                                                                            </asp:RadioButtonList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td style="text-align: left">
                                                                            <asp:Label ID="Gmsj4" runat="server" CssClass="Msj"></asp:Label>
                                                                        </td>
                                                                        <td colspan="2">
                                                                            <asp:Label ID="Gmsj5" runat="server" CssClass="Msj"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td style="text-align: left">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33" colspan="5">
                                                                              <asp:Button ID="btnaceptardAG"  runat="server" Text="Aceptar" OnClick="btnDAG_Click"/>
                                                                            <asp:Button ID="btncancelardAG" runat="server" Text="Cancelar" />
                                                                  
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td colspan="3">
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                </table>
                                                            
            </div>


       </asp:Panel>

      
       <asp:Panel ID="pnl_CA" runat="server" CssClass="CajaDialogo" Style="display:none ;" Height="241px" Width="542px">
                     
            <div>
                      <table style="border: thin solid #000000; width: 540px; background-color: #999999; height: 239px;">
                                                                    <tr>
                                                                    
                                                                    <td style="padding: 3px; background-color: #0033CC; color: #FFFFFF;" colspan="5">
                                                                 <asp:Label ID="Label83" runat="server" Text="Banco para Débito Banco Comafi" />
                                                             
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                    
                                                                    <td  colspan="5">
                                                                 <asp:Label ID="Label85" runat="server"  />
                                                              
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                              <asp:Label ID="Label96" runat="server" CssClass="Titulolabel" 
                                                                                  Text="*Nro Tarjeta:"></asp:Label></td>
                                                                        <td style="text-align: left">
                                                                            <asp:TextBox ID="txtOnrotarjetaA" runat="server" Width="180px"></asp:TextBox>
                                                                            <asp:Label ID="MSJ16" runat="server" CssClass="Msj"></asp:Label>
                                                                        </td>
                                                                        <td style="text-align: left">
                                                                            <asp:Label ID="Label98" runat="server" CssClass="Titulolabel" Text="*Visa:"></asp:Label>
                                                                        </td>
                                                                        <td style="text-align: left">
                                                                            <asp:DropDownList ID="ddlOVisaA" runat="server" Width="158px">
                                                                                <asp:ListItem Selected="True">Visa1</asp:ListItem>
                                                                                <asp:ListItem>Visa2</asp:ListItem>
                                                                                <asp:ListItem>Firs Data</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            
                                                                            <asp:Label ID="Label97" runat="server" CssClass="Titulolabel" 
                                                                                Text="*Vigente Hasta:"></asp:Label>
                                                                           </td>
                                                                        <td style="text-align: left" colspan="3">
                                                                            <asp:TextBox ID="txtOhastaA" runat="server" Width="80px" MaxLength="10"></asp:TextBox>
                                                                            <asp:MaskedEditExtender ID="txtOhastaA_MaskedEditExtender" runat="server" 
                                                                                Mask="99/99/9999" MaskType="Date" TargetControlID="txtOhastaA">
                                                                            </asp:MaskedEditExtender>
                                                                            <asp:Label ID="MSJ17" runat="server" CssClass="Msj"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td style="text-align: left" >
                                                                       
                                                                            &nbsp;</td>
                                                                        <td colspan="2">
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td style="text-align: left">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33" colspan="5">
                                                                              <asp:Button ID="btnaceptardCA"  runat="server" Text="Aceptar" OnClick="btnDCA_Click"/>
                                                                            <asp:Button ID="btncancelardca" runat="server" Text="Cancelar" />
                                                                  
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td colspan="3">
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                </table>
                                                            
            </div>


       </asp:Panel>
       <asp:Panel ID="pnl_CV" runat="server" CssClass="CajaDialogo" Style="display:none ;" Height="241px" Width="542px">
                     
            <div>
                      <table style="border: thin solid #000000; width: 540px; background-color: #999999; height: 239px;">
                                                                    <tr>
                                                                    
                                                                    <td style="padding: 3px; background-color: #0033CC; color: #FFFFFF;" colspan="5">
                                                                 <asp:Label ID="Label88" runat="server" Text="Banco para Débito Banco Comafi" />
                                                             
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                    
                                                                    <td  colspan="5">
                                                                 <asp:Label ID="Label89" runat="server"  />
                                                              
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                              <asp:Label ID="Label90" runat="server" CssClass="Titulolabel" 
                                                                                  Text="*Nro Tarjeta:"></asp:Label></td>
                                                                        <td style="text-align: left">
                                                                            <asp:TextBox ID="txtOnrotarjetaV" runat="server" Width="180px"></asp:TextBox>
                                                                            <asp:Label ID="MSJ18" runat="server" CssClass="Msj"></asp:Label>
                                                                        </td>
                                                                        <td style="text-align: left">
                                                                            <asp:Label ID="Label91" runat="server" CssClass="Titulolabel" Text="*Visa:"></asp:Label>
                                                                        </td>
                                                                        <td style="text-align: left">
                                                                            <asp:DropDownList ID="ddlOVisaV" runat="server" Width="158px">
                                                                                <asp:ListItem Selected="True">Visa1</asp:ListItem>
                                                                                <asp:ListItem>Visa2</asp:ListItem>
                                                                                <asp:ListItem>Firs Data</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            
                                                                            <asp:Label ID="Label92" runat="server" CssClass="Titulolabel" 
                                                                                Text="*Vigente Hasta:"></asp:Label>
                                                                           </td>
                                                                        <td style="text-align: left" colspan="3">
                                                                            <asp:TextBox ID="txtOhastaV" runat="server" Width="80px" MaxLength="10"></asp:TextBox>
                                                                            <asp:MaskedEditExtender ID="txtOhastaV_MaskedEditExtender" runat="server" 
                                                                                Mask="99/99/9999" MaskType="Date" TargetControlID="txtOhastaV">
                                                                            </asp:MaskedEditExtender>
                                                                            <asp:Label ID="MSJ19" runat="server" CssClass="Msj"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td style="text-align: left" >
                                                                       
                                                                            &nbsp;</td>
                                                                        <td colspan="2">
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td style="text-align: left">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33" colspan="5">
                                                                              <asp:Button ID="btnaceptardCV"  runat="server" Text="Aceptar" OnClick="btnDCV_Click"/>
                                                                            <asp:Button ID="btncancelardcv" runat="server" Text="Cancelar" />
                                                                  
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td colspan="3">
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                </table>
                                                            
            </div>


       </asp:Panel>
       <asp:Panel ID="pnl_CP" runat="server" CssClass="CajaDialogo" Style="display:none ;" Height="241px" Width="542px">
                     
            <div>
                      <table style="border: thin solid #000000; width: 540px; background-color: #999999; height: 239px;">
                                                                    <tr>
                                                                    
                                                                    <td style="padding: 3px; background-color: #0033CC; color: #FFFFFF;" colspan="5">
                                                                 <asp:Label ID="Label93" runat="server" Text="Banco para Débito Banco Comafi" />
                                                             
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                    
                                                                    <td  colspan="5">
                                                                 <asp:Label ID="Label94" runat="server"  />
                                                              
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                              <asp:Label ID="Label95" runat="server" CssClass="Titulolabel" 
                                                                                  Text="*Nro Tarjeta:"></asp:Label></td>
                                                                        <td style="text-align: left">
                                                                            <asp:TextBox ID="txtOnrotarjetaP" runat="server" Width="180px"></asp:TextBox>
                                                                            <asp:Label ID="MSJ20" runat="server" CssClass="Msj"></asp:Label>
                                                                        </td>
                                                                        <td style="text-align: left">
                                                                            <asp:Label ID="Label99" runat="server" CssClass="Titulolabel" Text="*Visa:"></asp:Label>
                                                                        </td>
                                                                        <td style="text-align: left">
                                                                            <asp:DropDownList ID="ddlOVisaP" runat="server" Width="158px">
                                                                                <asp:ListItem Selected="True">Visa1</asp:ListItem>
                                                                                <asp:ListItem>Visa2</asp:ListItem>
                                                                                <asp:ListItem>Firs Data</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            
                                                                            <asp:Label ID="Label100" runat="server" CssClass="Titulolabel" 
                                                                                Text="*Vigente Hasta:"></asp:Label>
                                                                           </td>
                                                                        <td style="text-align: left" colspan="3">
                                                                            <asp:TextBox ID="txtOhastaP" runat="server" Width="80px" MaxLength="10"></asp:TextBox>
                                                                            <asp:MaskedEditExtender ID="txtOhastaP_MaskedEditExtender" runat="server" 
                                                                                Mask="99/99/9999" MaskType="Date" TargetControlID="txtOhastaP">
                                                                            </asp:MaskedEditExtender>
                                                                            <asp:Label ID="MSJ21" runat="server" CssClass="Msj"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td style="text-align: left" >
                                                                       
                                                                            &nbsp;</td>
                                                                        <td colspan="2">
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td style="text-align: left">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33" colspan="5">
                                                                              <asp:Button ID="btnaceptardCP"  runat="server" Text="Aceptar" OnClick="btnDCP_Click"/>
                                                                            <asp:Button ID="btncancelardcP" runat="server" Text="Cancelar" />
                                                                  
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td colspan="3">
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                </table>
                                                            
            </div>


       </asp:Panel>
       <asp:Panel ID="pnl_CJ" runat="server" CssClass="CajaDialogo" Style="display:none ;" Height="241px" Width="542px">
                     
            <div>
                      <table style="border: thin solid #000000; width: 540px; background-color: #999999; height: 239px;">
                                                                    <tr>
                                                                    
                                                                    <td style="padding: 3px; background-color: #0033CC; color: #FFFFFF;" colspan="5">
                                                                 <asp:Label ID="Label101" runat="server" Text="Banco para Débito Banco Comafi" />
                                                             
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                    
                                                                    <td  colspan="5">
                                                                 <asp:Label ID="Label102" runat="server"  />
                                                              
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                              <asp:Label ID="Label103" runat="server" CssClass="Titulolabel" 
                                                                                  Text="*Nro Tarjeta:"></asp:Label></td>
                                                                        <td style="text-align: left">
                                                                            <asp:TextBox ID="txtOnrotarjetaJ" runat="server" Width="180px"></asp:TextBox>
                                                                            <asp:Label ID="MSJ22" runat="server" CssClass="Msj"></asp:Label>
                                                                        </td>
                                                                        <td style="text-align: left">
                                                                            <asp:Label ID="Label105" runat="server" CssClass="Titulolabel" Text="*Visa:"></asp:Label>
                                                                        </td>
                                                                        <td style="text-align: left">
                                                                            <asp:DropDownList ID="ddlOVisaJ" runat="server" Width="158px">
                                                                                <asp:ListItem Selected="True">Visa1</asp:ListItem>
                                                                                <asp:ListItem>Visa2</asp:ListItem>
                                                                                <asp:ListItem>Firs Data</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            
                                                                            <asp:Label ID="Label106" runat="server" CssClass="Titulolabel" 
                                                                                Text="*Vigente Hasta:"></asp:Label>
                                                                           </td>
                                                                        <td style="text-align: left" colspan="3">
                                                                            <asp:TextBox ID="txtOhastaJ" runat="server" Width="80px" MaxLength="10"></asp:TextBox>
                                                                            <asp:MaskedEditExtender ID="txtOhastaJ_MaskedEditExtender" runat="server" 
                                                                                Mask="99/99/9999" MaskType="Date" TargetControlID="txtOhastaJ">
                                                                            </asp:MaskedEditExtender>
                                                                            <asp:Label ID="MSJ23" runat="server" CssClass="Msj"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td style="text-align: left" >
                                                                       
                                                                            &nbsp;</td>
                                                                        <td colspan="2">
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td style="text-align: left">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33" colspan="5">
                                                                              <asp:Button ID="btnaceptardCJ"  runat="server" Text="Aceptar" OnClick="btnDCJ_Click"/>
                                                                            <asp:Button ID="btncancelardcJ" runat="server" Text="Cancelar" />
                                                                  
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td colspan="3">
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                </table>
                                                            
            </div>


       </asp:Panel>
       <asp:Panel ID="pnl_CG" runat="server" CssClass="CajaDialogo" Style="display:none ;" Height="241px" Width="542px">
                     
            <div>
                      <table style="border: thin solid #000000; width: 540px; background-color: #999999; height: 239px;">
                                                                    <tr>
                                                                    
                                                                    <td style="padding: 3px; background-color: #0033CC; color: #FFFFFF;" colspan="5">
                                                                 <asp:Label ID="Label117" runat="server" Text="Banco para Débito Banco Comafi" />
                                                             
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                    
                                                                    <td  colspan="5">
                                                                 <asp:Label ID="Label118" runat="server"  />
                                                              
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                              <asp:Label ID="Label119" runat="server" CssClass="Titulolabel" 
                                                                                  Text="*Nro Tarjeta:"></asp:Label></td>
                                                                        <td style="text-align: left">
                                                                            <asp:TextBox ID="txtOnrotarjetaG" runat="server" Width="180px"></asp:TextBox>
                                                                            <asp:Label ID="GMSJ6" runat="server" CssClass="Msj"></asp:Label>
                                                                        </td>
                                                                        <td style="text-align: left">
                                                                            <asp:Label ID="Label120" runat="server" CssClass="Titulolabel" Text="*Visa:"></asp:Label>
                                                                        </td>
                                                                        <td style="text-align: left">
                                                                            <asp:DropDownList ID="ddlOVisaG" runat="server" Width="158px">
                                                                                <asp:ListItem Selected="True">Visa1</asp:ListItem>
                                                                                <asp:ListItem>Visa2</asp:ListItem>
                                                                                <asp:ListItem>Firs Data</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            
                                                                            <asp:Label ID="Label121" runat="server" CssClass="Titulolabel" 
                                                                                Text="*Vigente Hasta:"></asp:Label>
                                                                           </td>
                                                                        <td style="text-align: left" colspan="3">
                                                                            <asp:TextBox ID="txtOhastaG" runat="server" Width="80px" MaxLength="10"></asp:TextBox>
                                                                            <asp:MaskedEditExtender ID="txtOhastaG_MaskedEditExtender" runat="server" 
                                                                                Mask="99/99/9999" MaskType="Date" TargetControlID="txtOhastaG">
                                                                            </asp:MaskedEditExtender>
                                                                            <asp:Label ID="GMSJ7" runat="server" CssClass="Msj"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td style="text-align: left" >
                                                                       
                                                                            &nbsp;</td>
                                                                        <td colspan="2">
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td style="text-align: left">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33" colspan="5">
                                                                              <asp:Button ID="btnaceptardCG"  runat="server" Text="Aceptar" OnClick="btnDCG_Click"/>
                                                                            <asp:Button ID="btncancelardcG" runat="server" Text="Cancelar" />
                                                                  
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style33">
                                                                            &nbsp;</td>
                                                                        <td>
                                                                            &nbsp;</td>
                                                                        <td colspan="3">
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                </table>
                                                            
            </div>


       </asp:Panel>

        <asp:modalpopupextender ID="mpeSeleccion" runat="server" TargetControlID="hideen"
            PopupControlID="pnlSeleccionarDatos"  CancelControlID="btnCancelarO"
           OnCancelScript="mpeSeleccionOnCancel()" DropShadow="True" 
           BackgroundCssClass="FondoAplicacion" />

            
             <asp:HiddenField id="hideen" runat="server" />
            <asp:modalpopupextender ID="mpeDD" runat="server" TargetControlID="hideen"
            PopupControlID="pnlDDAA"  CancelControlID="btncancelarddAA"
            OnCancelScript="mpeDDOnCancel()" DropShadow="true" 
             BackgroundCssClass="FondoAplicacion" />

            <asp:modalpopupextender ID="mpeDD1" runat="server" TargetControlID="hideen"
            PopupControlID="pnlDDAV"  CancelControlID="btncancelarddAV"
             OnCancelScript="mpeDD1OnCancel()" DropShadow="True" 
             BackgroundCssClass="FondoAplicacion" />
              
            <asp:modalpopupextender ID="mpeDD2" runat="server" TargetControlID="hideen"
            PopupControlID="pnlDDP" CancelControlID="btncancelarddP"
            OnCancelScript="mpeDD2OnCancel()" DropShadow="True" 
             BackgroundCssClass="FondoAplicacion" />
             
            <asp:modalpopupextender ID="mpeDD3" runat="server" TargetControlID="hideen"
            PopupControlID="pnlDDJ" CancelControlID="btncancelarddJ"
             OnCancelScript="mpeDD3OnCancel()" DropShadow="True" 
             BackgroundCssClass="FondoAplicacion" />

             
               <asp:modalpopupextender ID="mpeDD4" runat="server" TargetControlID="hideen"
            PopupControlID="pnlDDG" CancelControlID="btncancelarddG"
             OnCancelScript="mpeDD4OnCancel()" DropShadow="True" 
             BackgroundCssClass="FondoAplicacion" />


            <asp:modalpopupextender ID="mpeDA" runat="server" TargetControlID="hideen"
            PopupControlID="pnlDAA" CancelControlID="btncancelardAA"
             OnCancelScript="mpeDAOnCancel()" DropShadow="True" 
             BackgroundCssClass="FondoAplicacion" />

            <asp:modalpopupextender ID="mpeDAV" runat="server" TargetControlID="hideen"
            PopupControlID="pnl_DAV" CancelControlID="btncancelardAv"
             OnCancelScript="mpeDAVOnCancel()" DropShadow="True" 
             BackgroundCssClass="FondoAplicacion" />

            <asp:modalpopupextender ID="mpeDAP" runat="server" TargetControlID="hideen"
            PopupControlID="pnl_DAP" CancelControlID="btncancelardAP"
             OnCancelScript="mpeDAPOnCancel()" DropShadow="True" 
             BackgroundCssClass="FondoAplicacion" />

            <asp:modalpopupextender ID="mpeDAJ" runat="server" TargetControlID="hideen"
            PopupControlID="pnl_DAJ" CancelControlID="btncancelardAJ"
             OnCancelScript="mpeDAJOnCancel()" DropShadow="True" 
             BackgroundCssClass="FondoAplicacion" />

              <asp:modalpopupextender ID="mpeDAG" runat="server" TargetControlID="hideen"
            PopupControlID="pnl_DAG" CancelControlID="btncancelardAG"
             OnCancelScript="mpeDAGOnCancel()" DropShadow="True" 
             BackgroundCssClass="FondoAplicacion" />

            <asp:modalpopupextender ID="mpeDCA" runat="server" TargetControlID="hideen"
            PopupControlID="pnl_CA" CancelControlID="btncancelardca"
             OnCancelScript="mpeDCAOnCancel()" DropShadow="True" 
             BackgroundCssClass="FondoAplicacion" />

            <asp:modalpopupextender ID="mpeDCV" runat="server" TargetControlID="hideen"
            PopupControlID="pnl_CV" CancelControlID="btncancelardcv"
             OnCancelScript="mpeDCVOnCancel()" DropShadow="True" 
             BackgroundCssClass="FondoAplicacion" />
             
            <asp:modalpopupextender ID="mpeDCP" runat="server" TargetControlID="hideen"
            PopupControlID="pnl_CP" CancelControlID="btncancelardcP"
             OnCancelScript="mpeDCPOnCancel()" DropShadow="True" 
             BackgroundCssClass="FondoAplicacion" />
             
              <asp:modalpopupextender ID="mpeDCJ" runat="server" TargetControlID="hideen"
            PopupControlID="pnl_CJ" CancelControlID="btncancelardcJ"
             OnCancelScript="mpeDCJOnCancel()" DropShadow="True" 
             BackgroundCssClass="FondoAplicacion" />

                <asp:modalpopupextender ID="mpeDCG" runat="server" TargetControlID="hideen"
            PopupControlID="pnl_CG" CancelControlID="btncancelardcG"
             OnCancelScript="mpeDCGOnCancel()" DropShadow="True" 
             BackgroundCssClass="FondoAplicacion" />
    </form>
</body>
</html>
