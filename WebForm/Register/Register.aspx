<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebForm.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 43%;
            height: 233px;
        }
        .auto-style4 {
            width: 132px;
        }
        .auto-style5 {
            width: 42px;
        }
        .auto-style6 {
            width: 130px;
        }
        .auto-style7 {
            width: 268435376px;
        }
        </style>
    
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" type="text/css" rel="stylesheet">
</head>
<body>

    <form id="form1" runat="server">
    <div>
    
        <br />
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Register"></asp:Label>
        <br />
        <br />
        <table  class="auto-style1" style="margin: 3px; border: medium solid #000000; padding: 7px; font-family: 'Times New Roman', Times, serif;">
            <tr>
                <td class="auto-style4" colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Username" ForeColor="Red"></asp:RequiredFieldValidator>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2">
                    <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2">
                    <asp:Label ID="Label3" runat="server"  Text="Password"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox3"  type="password" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="Re Enter Password" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2">
                    <asp:Label ID="Label4" runat="server"  Text="Confirm Password"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox4"  type="password" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
                </td>
                <td colspan="2" class="auto-style5">
                    &nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
                </td>
                <td class="auto-style7">
                    &nbsp;</td>
            </tr>
        </table>
    
        <asp:Label ID="Label6" runat="server" ForeColor="#009900"></asp:Label>
        <br />
        <asp:Label ID="Label7" runat="server" ForeColor="Red"></asp:Label>
    
    </div>
    </form>
     <script src="../scripts/jquery.validate.unobtrusive.js"></script>
    <script src="../scripts/jquery.validate.min.js"></script>
</body>
</html>
