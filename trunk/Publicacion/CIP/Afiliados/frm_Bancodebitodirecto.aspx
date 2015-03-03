<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_Bancodebitodirecto.aspx.cs" Inherits="CIP.frm_Bancodebitodirecto" %>

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
        
        .style33
        {
            width: 267px;
        }
        .style34
        {
            width: 78px;
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
    <asp:Panel ID="pnlFondo" runat="server" CssClass="FondoForm" Width="678px"  
            Height="216px"> 
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
                                    <table style="border: thin groove #dadada; width: 50%; ">
                                        <tr>
                                           
                                            <td class="style31" >
                                            
                                                <table style="border: thin groove #FFFFFF; width: 40%; height: 148px;">
                                                    <tr>
                                                       
                                                        <td style="border: thin solid #000000"  >
                                                             <asp:Label ID="Label2" runat="server" CssClass="TituloForm" Text="Banco para Débito Directo"></asp:Label>
                                                                
                                                        </td> 
                                                        </tr>  <tr>
                                                       
                                                        <td class="style29">
                                                          
                                                          
                                                            
                                                                <table style="width: 451px">
                                                                
                                                                    <tr>
                                                                        <td class="style34">
                                                                            <asp:Label ID="Label38" runat="server" CssClass="Titulolabel" Text="*Banco:"></asp:Label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtObanco" runat="server" Width="150px"></asp:TextBox>
                                                                           
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style34">
                                                                            <asp:Label ID="Label36" runat="server" CssClass="Titulolabel" 
                                                                                Text="*CBU:"></asp:Label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtOCBU" runat="server"  Width="150px"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                               
                                                    </tr>
                                                    <tr>
                                                        <td class="style30" style="text-align: center" >
                                                            <asp:Button ID="Button1" runat="server" OnClick="btnAceptar_Click" 
                                                                Text="Aceptar" />
                                                            <asp:Button ID="btn_modifica" runat="server" OnClick="btnactualiza_Click" 
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
                                                <asp:Label ID="Label1" runat="server" Activo="True">Copyright 2015 - All Rights reserved</asp:Label>
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                
                                  </asp:Panel> 
    </form>
</body>
</html>
