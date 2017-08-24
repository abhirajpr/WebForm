<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebForm.Webforms.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link href="../Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body class="container">
    <form id="form1" runat="server">
    <div class="jumbotron">
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="X-Large" ForeColor="#333333" Text="Home"></asp:Label>
        <br />
        <br />
    
        <asp:Button ID="Button1" runat="server" Height="38px" Text="Register" Width="269px" CssClass="btn-default" PostBackUrl="~/Register/Register.aspx" />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Height="38px" Text="Login" Width="269px" CssClass="btn-default" PostBackUrl="~/Login.aspx" />
        <br />
        <br />
        
        <asp:Button ID="Button3" runat="server" Height="38px" Text="SendMail" Width="269px" CssClass="btn-default" PostBackUrl="~/Webforms/SendMail.aspx" />
        <br />
        <br />
        <asp:Button ID="Button4" runat="server" Height="38px" Text="Authentification" Width="269px" CssClass="btn-default" PostBackUrl="~/Webforms/Authentification.aspx" />
        <br />
        <br />
        
    
    </div>
    </form>
</body>
</html>
