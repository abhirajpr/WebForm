<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebForm.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 36%;
            height: 153px;
            margin-top: 0px;
        }
        .auto-style4 {
            width: 158px;
        }
        .auto-style6 {
            width: 268435280px;
        }
        .auto-style8 {
            height: 45px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        &nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Login"></asp:Label>
        <br />
        <br />
        <table class="auto-style1" style="border: medium solid #000000; padding: 5px; margin: 3px">
            <tr>
                <td class="auto-style8" colspan="2">
                    <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox2" Type="password" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                </td>
                <td colspan="2">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx">Register</asp:HyperLink>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
        </table>
    
        <asp:Label ID="Label4" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
