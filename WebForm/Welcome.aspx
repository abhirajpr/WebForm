<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="WebForm.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 53%;
            height: 97px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Welcome"></asp:Label>
    
        <br />
        <table class="auto-style1">
            <tr>
                <td>Username</td>
                <td>:</td>
                <td>
        <asp:Label ID="Label2" runat="server"></asp:Label>
    
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td>:</td>
                <td>
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Webforms/ChangePassword.aspx">Change Password</asp:HyperLink>
        <br />
        <br />
    
    </div>
        <asp:Button ID="Button2" runat="server" CssClass="auto-style9" Height="21px" PostBackUrl="~/Webforms/Index.aspx" Text="Home" Width="104px" />
    </form>
</body>
</html>
