<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.Afiliados.WebForm1" %>
<%--<%@ Register Assembly="ASP.Web.UI.PopupControl"     Namespace="ASP.Web.UI.PopupControl"    TagPrefix="ASPP" %>  --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
  
    .FondoAplicacion
    {
        background-color: Gray;
        filter: alpha(opacity=70);
        opacity: 0.7;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Button ID="Button1" runat="server" Text="Abrir ventanam" OnClick="Abrir_Click2"/>
    <asp:Button ID="Abrir" runat="server" Text="Abrir ventana" OnClick="Abrir_Click" />
        <asp:TextBox ID="Text1" runat="server"></asp:TextBox>
    </div>
    

<%--
    <ASPP:PopupPanel HeaderText="This is Header" ID="pup" 
          runat="server" OnCloseWindowClick="MycloseWindow">
    <PopupWindow runat="server">
        <ASPP:PopupWindow ID="PopupWindow1" 
        Visible="false" runat="server">
            <asp:Label ID="lbl" runat="server">ssssssssss</asp:Label>
            <br />
            <asp:TextBox ID="txt" AutoPostBack="true" 
            runat="server"></asp:TextBox>
        </ASPP:PopupWindow>
        <ASPP:PopupWindow ID="PopupWindow2" runat="server">
            <div align="center" style="width: 500px; height: 300px">
                <asp:Label ID="Label1" runat="server">nnnnn</asp:Label>
                <br />
                <asp:TextBox ID="TextBox1" AutoPostBack="true" 
                runat="server"></asp:TextBox>
                <asp:Button ID="in" runat="server" Text="sss" />
                <asp:TextBox ID="TextBox2" AutoPostBack="true" 
                runat="server"></asp:TextBox>
            </div>
        </ASPP:PopupWindow>
    </PopupWindow>
</ASPP:PopupPanel>--%>
    </form>
</body>
</html>
