<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_Afiliados.aspx.cs" Inherits="CIP.frm_Afiliados" %>

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
         function editaFila(idx) {
             document.getElementById('hdf_idxReg').value = idx;

         }
         function eliminafila() {
             // alert(document.getElementById('hdf_idxReg').value)
             if (document.getElementById('hdf_idxReg').value != "" && document.getElementById('hdf_idxReg').value != "-1") {
                 if (confirm("¿Esta seguro que desea eliminar el Afiliado?")) {
                     document.getElementById("hdf_elimina").value = "ok"
                     return true;
                 }
                 else {
                     document.getElementById("hdf_elimina").value = "cancela"

                 }
             }
         }
        </script>
    <style type="text/css">
                                        
        .style24
        {
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
        
        .style30
        {
            width: 901px;
        }
        #grilla_vacia
        {
            width: 860px;
        }
        
        </style>
</head>
<body>
   
    <form id="form2" runat="server"> 
    <asp:HiddenField ID="hdf_elimina" Value=""    runat="server" />
    <asp:HiddenField ID="hdf_idxReg" runat="server" Value="-1" />
    <asp:HiddenField ID="hdf_tipo" Value="" runat="server" />
    <asp:HiddenField ID="hdf_fecha" Value=""  runat="server" />
    <asp:HiddenField ID="hdf_mail" Value=""   runat="server" />
     
    
     <asp:ScriptManager ID="ScriptManager1" runat="server"    EnableScriptGlobalization="True" EnableScriptLocalization="True" />
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
                        <asp:MenuItem NavigateUrl="~/Afiliados/frm_Afiliados.aspx" Text="Afiliado"/>
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
                                                                               
                                                <table style="  width: 815px; margin-top:-18px">
                                                    <tr>
                                                        <td >
                                                         <fieldset class="login" style="  height: 80px; width: 808px;">
                    <legend>Buscar Afiliado</legend>
                    <table style=" height: 51px; width:787px;">
                                                
                                                                 <tr>
                                                                    <td align="right" colspan="5">
                                                                       
                                                                         <asp:ImageButton ID="img_nuevo" runat="server" border="0" 
                                                                            ImageUrl="../Imagenes/Nuevo.gif" onclick="NVOAfiliado_Click" 
                                                                            ToolTip=" - Elimina Afiliado - " />
                                                                       <asp:ImageButton ID="img_ElimiSeleccinados" runat="server" border="0" 
                                                                            ImageUrl="../Imagenes/eliminar.gif" onclick="img_ElimiSeleccinados_Click" 
                                                                            ToolTip=" - Elimina Afiliado - " />
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
                                                                            Text="Descripción:"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txt_descripcion" runat="server"  Width="200px"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Button ID="Button2" runat="server" OnClick="btnbusca_Click" 
                                                                            Text="Buscar" />
                                                                    </td>
                                                                </tr>
                                                              </table> </fieldset>  
                                                               </td>
                                                    </tr>
                                                    </table>
                                                 <table >
                                                             <tr>
                                                                 
                                                
                                                                 <td class="style30" >
                                                                     <div id="grilla_vacia" runat="server">
                                                                         
                                
                                                                         <table id="tabla1" border="1" cellpadding="2" cellspacing="0" rules="all" 
                                                                             
                                                                             
                                                                             
                                                                             style="color: rgb(0, 33, 66); background-color: White; border: 1px solid rgb(99, 99, 99); font-family: Arial; font-size: 9pt; border-collapse: collapse; width: 851px; height: 36px;">
                                                                             
                                    
                                                                             <tr style="background-color: Silver; border: 1px ridge rgb(99, 99, 99); font-weight: bold;">
                                                                                 <th scope="col">
                                                                                     
                                            
                                                                                     <a style="color: rgb(0, 33, 66);">N° Afiliado </a>
                                                                                 </th>
                                                                                 
                                        
                                                                                 <th scope="col">
                                                                                     <a style="color: rgb(0, 33, 66);">N°  Matricula</a></th>
                                                                                 <th scope="col">
                                                                                     <a style="color: rgb(0, 33, 66);">Apellido y Nombre</a></th>
                                                                                 
                                        
                                                                                 <th scope="col">
                                                                                     <a style="color: rgb(0, 33, 66);">D.U</a></th>
                                                                                 <th scope="col">
                                                                                     <a style="color: rgb(0, 33, 66);">Profesión</a></th>
                                                                                     <th scope="col">
                                                                                     <a style="color: rgb(0, 33, 66);">Fecha Ult. Alta</a></th>
                                                                                      <th scope="col">
                                                                                     <a style="color: rgb(0, 33, 66);">Estado</a></th>
                                                                             </tr>
                                                                             
                                    
                                                                             <tr style="cursor: default; color: inherit;">
                                                                                 
                                        
                                                                                 <td align="center"  colspan="7">
                                                                                        <asp:Label ID="lblmsj" runat="server" CssClass="Msj"></asp:Label>
                                                                    </td>
                                                                             </tr>
                                                                         </table>
                                                                     </div>
                                                                 </td>
                                                             </tr>
                                                         </table>                <table style=" height: 183px; width: 1089px;">
                                                    
                                                                <tr>
                                                                    <td class="style29" >
                                                                    <asp:Panel ID="pnlAfi" runat="server" Height="173px" ScrollBars="Auto" 
                        Width="100%">
                                                                        <asp:GridView ID="gv_afiliado" runat="server" AutoGenerateColumns="False" 
                                                                            BackColor="GhostWhite" Width="904px"  
                                                                            OnRowDataBound="gv_afiliado_RowDataBound">
                                                                            <Columns>
                                                                                 <asp:BoundField DataField="IdAfiliado" HeaderStyle-HorizontalAlign="Left" 
                                                                                    HeaderText="N° Afiliado">
                                                                                <ItemStyle HorizontalAlign="Left" Width="390px" />
                                                                                </asp:BoundField>
                                                                                <asp:BoundField DataField="Matricula" HeaderStyle-HorizontalAlign="Left" 
                                                                                    HeaderText="N° Matricula">
                                                                                <ItemStyle HorizontalAlign="Left" Width="390px" />
                                                                                </asp:BoundField>
                                                                                 <asp:BoundField DataField="Apellido" HeaderStyle-HorizontalAlign="Left" 
                                                                                    HeaderText="Apellido y Nombre">
                                                                                <ItemStyle HorizontalAlign="Left" Width="390px" />
                                                                                </asp:BoundField> <asp:BoundField DataField="Documento" HeaderStyle-HorizontalAlign="Left" 
                                                                                    HeaderText="D.U">
                                                                                <ItemStyle HorizontalAlign="Left" Width="390px" />
                                                                                </asp:BoundField> <asp:BoundField DataField="profesion" HeaderStyle-HorizontalAlign="Left" 
                                                                                    HeaderText="Frofesión">
                                                                                <ItemStyle HorizontalAlign="Left" Width="390px" />
                                                                                </asp:BoundField> <asp:BoundField DataField="fechaalta" HeaderStyle-HorizontalAlign="Left" 
                                                                                    HeaderText="Fecha Ult. Alta">
                                                                                <ItemStyle HorizontalAlign="Left" Width="390px" />
                                                                                </asp:BoundField>
                                                                               
                                                                                     
                                                                                 <asp:TemplateField>
                                            <ItemTemplate>
                                         
                                                <asp:CheckBox ID="CheckBox1" runat="server" EnableViewState="true" Enabled="false" />
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" Width="20px" />
                                        </asp:TemplateField>



                                                                                
                                                                            </Columns>
                                                                            <HeaderStyle CssClass="textoGrilla" />
                                                                            <RowStyle CssClass="textoGrilla2" />
                                                                        </asp:GridView>
                                                                   </asp:Panel> </td>
                                                                </tr>
                                                            </table>
                                                       
                                                      
                                                    
                                                                                                  
                                                   
                                           
                                    
                                
                                  </asp:Panel> 
    </form>
</body>
</html>
